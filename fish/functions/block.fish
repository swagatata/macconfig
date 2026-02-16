function block --description 'Block one or more websites by adding them to /etc/hosts'
    if test (count $argv) -eq 0
        echo "Usage: block <domain1> [domain2] [domain3] ..."
        echo "Example: block x.com reddit.com youtube.com"
        return 1
    end

    # Prepare entries to add
    set entries ""
    for domain in $argv
        # Strip http://, https://, and www. prefix if present
        set clean_domain (string replace -r '^https?://' '' $domain)
        set clean_domain (string replace -r '^www\.' '' $clean_domain)

        set entries "$entries\n# Block $clean_domain"
        set entries "$entries\n127.0.0.1 $clean_domain"
        set entries "$entries\n127.0.0.1 www.$clean_domain"
    end

    # Add entries to /etc/hosts
    echo "Adding to /etc/hosts..."
    echo -e $entries | sudo tee -a /etc/hosts > /dev/null

    if test $status -eq 0
        echo "✓ Added entries to /etc/hosts"

        # Flush DNS cache
        echo "Flushing DNS cache..."
        sudo dscacheutil -flushcache
        sudo killall -HUP mDNSResponder

        echo "✓ DNS cache flushed"
        echo ""
        echo "Blocked domains:"
        for domain in $argv
            set clean_domain (string replace -r '^https?://' '' $domain)
            set clean_domain (string replace -r '^www\.' '' $clean_domain)
            echo "  - $clean_domain"
        end
        echo ""
        echo "⚠️  Don't forget to disable 'Secure DNS' in Chrome:"
        echo "   chrome://settings/security → Turn OFF 'Use secure DNS'"
    else
        echo "✗ Failed to update /etc/hosts"
        return 1
    end
end
