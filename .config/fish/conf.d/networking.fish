alias gnetstat='sudo lsof -i -nP'

# Local & public IP addresses
alias publicip='dig @resolver4.opendns.com myip.opendns.com +short -4'
alias public-ip='dig @resolver4.opendns.com myip.opendns.com +short -4'
alias ip4='dig @resolver4.opendns.com myip.opendns.com +short -4'
alias ip=ip4
alias ip6='dig @ns1.google.com TXT o-o.myaddr.l.google.com +short -6' # https://unix.stackexchange.com/a/81699
alias localip='ipconfig getifaddr en0'
alias local-ip='ipconfig getifaddr en0'
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# xh is a drop-in replacement
alias http='xh'

# Although these tools are not a direct replacement (do not support original options/arguments), push myself to use them!
if status is-interactive
	# TODO https://github.com/orf/gping
	alias ping='prettyping --nolegend'

	alias traceroute='sudo mtr'

	# dog has been abandoned, doggo has replaced it...
	alias dig='doggo'
end
