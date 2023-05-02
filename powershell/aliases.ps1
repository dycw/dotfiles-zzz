function ssh-to-my-pc{
    ssh derek@dw-pc.duckdns.org -p 2022
}

Set-Alias ssh-pc ssh-to-my-pc

function ssh-to-my-mac{
    ssh derek@dw-mac.duckdns.org -p 2023
}

Set-Alias ssh-mac ssh-to-my-mac
