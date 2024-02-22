#folder directions
cdclla() { builtin cd '$@' && clear && ls -lA --color=auto; } 	#goto folder, clear terminal, list all
cdclll() { builtin cd '$@' && clear && ls -l --color=auto; } 	#goto folder, clear terminal, list
cdla() { builtin cd '$@' && ls -lA --color=auto; } 		#goto folder, list all
cdll() { builtin cd '$@' && ls -l --color=auto; } 			#goto folder , list
alias clla='clear && ls -lA --color=auto'			#clear and list all
alias clll='clear && ls -l --color=auto' 				#clear and list color

alias ll="exa -l -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"

#alias ll='ls -l --color=auto' 					#list color
#alias la='ls -lA --color=auto' 					#list

#package manager
wtfis() { wget -qO - cheat.sh/$1 | less; } 			#unified man page
alias guncelle='sudo apt update && sudo apt upgrade' 	#system upgrade
alias indir='sudo apt-get install' 				#install a package
alias ara='apt-cache search' 					#search a package

#internetofeasiness
alias wttr='wget -qO - wttr.in | head -7' 			#get weather news
alias mapscii='telnet mapscii.me' 				#ascii map exploration
alias myip='wget -qO - http://ifconfig.me/ip' 			#public ip adress
# ' '

#terminal centric options
#fbset -xres 1366 -yres 768 					#framebuffer terminal resolution
#alias mpvo='mpv --vo=drm' 					#mpv with framebuffer terminal
