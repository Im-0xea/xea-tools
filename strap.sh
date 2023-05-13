#!/bin/sh

mkdir /tmp/niki-strap

term_strap () {
	rm -rf /tmp/niki-strap
	exit 1
}

dialog --clear --title "Select a System" \
	--menu "" 15 50 3 \
	"1" "Gentoo" \
	"2" "Alpine" \
	"3" "NetBSD" \
	2> /tmp/niki-strap/system || term_strap
dialog --clear --title "Select a Display manager" \
	--menu "" 15 50 3 \
	"1" "X11" \
	"2" "Wayland" \
	"3" "fbdev" \
	2> /tmp/niki-strap/dm || term_strap
dialog --clear --title "Select a DPi" \
	--menu "" 15 50 2 \
	"1" "high" \
	"2" "low" \
	2> /tmp/niki-strap/dpi || term_strap
dialog --clear --title "Select a Keyboard layout" \
	--menu "" 15 50 2 \
	"1" "dvorak" \
	"2" "us-compat" \
	2> /tmp/niki-strap/kbmap || term_strap
dialog --clear --title "Select a Shell" \
	--menu "" 15 50 3 \
	"1" "zsh" \
	"2" "bash" \
	"3" "ash" \
	2> /tmp/niki-strap/shell || term_strap

cd usr_config
case $(cat /tmp/niki-strap/system) in
	1)
		stow -t "$HOME" gentoo
		#stow -t "$HOME" etc_config/portage
		;;
	2)
		stow -t "$HOME" alpine
		;;
	3)
		stow -t "$HOME" netbsd
		;;
esac
case $(cat /tmp/niki-strap/dm) in
	1)
		stow -t "$HOME" x11
		stow -t "$HOME" browser
		;;
	2)
		stow -t "$HOME" wayland
		stow -t "$HOME" browser
		;;
	3)
		stow -t "$HOME" fbdev
		;;
esac
case $(cat /tmp/niki-strap/dpi) in
	1)
		stow -t "$HOME" high_dpi
		;;
	2)
		stow -t "$HOME" low_dpi
		;;
esac
case $(cat /tmp/niki-strap/kbmap) in
	1)
		stow -t "$HOME" dvorak
		;;
	2)
		stow -t "$HOME" qwerty
		;;
esac
case $(cat /tmp/niki-strap/shell) in
	1)
		stow -t "$HOME" zsh
		;;
	2)
		stow -t "$HOME" bash
		;;
	2)
		stow -t "$HOME" ash
		;;
esac
stow -t "$HOME" vim
stow -t "$HOME" shell
stow -t "$HOME" git

rm -rf /tmp/niki-strap
