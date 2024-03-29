#!/usr/bin/env bash

##############################################################################
# echo "Press the arrow keys"

# while true # Forever = until ctrl+c
# do
#     # r: backslash is not for escape
#     # s: silent
#     # "n x": read x chars before returning
#     read -rsn 1 t
#     case $t in
#         A) echo up ;;
#         B) echo down ;;
#         C) echo right ;;
#         D) echo left ;;
#     esac
# done
##############################################################################

# escape_char=$(printf "\u1b")
# read -rsn1 mode # get 1 character
# if [[ $mode == $escape_char ]]; then
#     read -rsn2 mode # read 2 more chars
# fi
# case $mode in
#     'q') echo QUITTING ; exit ;;
#     '[A') echo UP ;;
#     '[B') echo DN ;;
#     '[D') echo LEFT ;;
#     '[C') echo RIGHT ;;
#     *) >&2 echo 'ERR bad input'; return ;;
# esac
##############################################################################

# mapfile -t items
# shopt -s checkwinsize
# exec 3>&1
# exec </dev/tty >/dev/tty || exit

# trap 'printf "\e[H\e[m%${COLUMNS}s\e8\e[?7h"' EXIT
# trap 'key=redraw' WINCH

# printf '\e7\e[?7l'
# while (:); do
# 	[[ ${text_cache-${text}x} != "$text" ]] && {
# 		unset matches
# 		(( sel = max_items = 0 ))

# 		for item in "${items[@]}"; do
# 			case $item in
# 				"$text")	: 0 ;;
# 				"$text"*)	: 1 ;;
# 				*"$text"*)	: 2 ;;
# 				*)		continue ;;
# 			esac

# 			printf -v 'matches[_]' '%s\n%q' "${matches[_]}" "$item"
# 			(( ${#item} > longest )) && longest=${#item}
# 		done

# 		mapfile -s 1 -t matches \
# 			<<< "${matches[0]}${matches[1]}${matches[2]}"
# 		index=(0 0)
# 	}

# 	printf '\e[?25l\e[H\e[0;30;41m %s%*s\e[m' \
# 		"$text" \
# 		$(( longest - ${#text} + 4 )) "${index[2]:+<} "

# 	(( index == max_items )) && {
# 		(( length = max_items = 0 ))
# 		(( length += longest + 5 ))
# 		(( max_items += index ))

# 		for (( i = index; i < ${#matches[@]}; ++i )); do
# 			if (( length < COLUMNS - ${#matches[i]} - 7 )); then
# 				(( length += ${#matches[i]} + 2 ))
# 				(( ++max_items ))
# 			else
# 				printf '\e[30;41m\e[;%sH%*s%s\e[m' \
# 					"$length" \
# 					$(( COLUMNS - length - 1 )) "" \
# 					"> "
# 				(( length = COLUMNS ))
# 				break
# 			fi
# 		done

# 		(( sel && sel >= max_items )) && {
# 			index+=("$max_items")
# 			index[0]=$max_items
# 			continue
# 		}
# 	}

# 	(( ${#matches[@]} )) && {
# 		matches[sel]=$'\e[D\e[0;7m '${matches[sel]}
# 		printf '\e[;%sH' $(( longest + 6 ))
# 		printf '\e[30;41m %s \e[m' \
# 			"${matches[@]:index:max_items-index}"
# 		matches[sel]=${matches[sel]#$'\e[D\e[0;7m '}
# 	}

# 	printf '\e[30;41m%*s\e[m\e[?25h\e[;%sH' \
# 		$(( COLUMNS - length )) "" \
# 		$(( ${#text} + 2 ))

# 	until read -t 0.05 -rsN 1; do
# 		[[ $key == redraw ]] && break
# 	done

# 	if [[ $REPLY == $'\e' ]]; then
# 		read -t 0.01 -rsN 2 key
# 		key=${REPLY}${key}
# 	else
# 		key=$REPLY
# 	fi

# 	text_cache=$text

# 	case $key in
# 		$'\n' | $'\r')
# 			printf '\e8'

# 			if (( ${#matches[@]} )); then
# 				: "${matches[sel]}"
# 			else
# 				: "$text"
# 			fi
# 			eval "printf '%s\n' $_" >&3

# 			printf '\e7'
# 			exit
# 			;;
# 		$'\e')
# 			exit
# 			;;
# 		$'\e'[[O][DA])
# 			(( sel > 0 && sel-- && sel == index - 1 )) && {
# 				index[0]=${index[-2]}
# 				unset 'index[-1]'
# 				(( max_items = index ))
# 			}
# 			;;
# 		$'\e'[[O][CB])
# 			((
# 				sel < ${#matches[@]} - 1 &&
# 				++sel &&
# 				sel == max_items &&
# 				max_items < ${#items[@]}
# 			)) && {
# 				index+=("$max_items")
# 				index[0]=$max_items
# 			}
# 			;;
# 		$'\177' | $'\b')
# 			text=${text%?}
# 			;;
# 		$'\t')
# 			(( ${#matches[@]} )) && text=${matches[sel]}
# 			;;
# 		"")
# 			(( max_items = index ))
# 			;;
# 		*)
# 			text+=$key
# 			;;
# 		esac
# done

##############################################################################

