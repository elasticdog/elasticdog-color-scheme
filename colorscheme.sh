#!/usr/bin/env bash

# Slightly tweaked version of:
#   https://github.com/zaiste/zaiste-emacs-theme

# shellcheck disable=SC2034
background="edeeef"
foreground="393f46"

black="1b2229"
bright_black="a0a1a7" # dark gray

red="e45649"
bright_red="dd8844" # orange

green="50a14f"
bright_green="44b9b1" # turquoise

yellow="c5a332"
bright_yellow="c0d9f2" # baby blue

blue="275fe4"
bright_blue="0098dd"

magenta="a626a4"
bright_magenta="823ff1" # violet

cyan="005478"
bright_cyan="0078ab"

white="c6c7c7"        # light gray
bright_white="fafbfc" # white

spaces="       "

echo " black   red     green   yellow  blue    magenta cyan    white"
echo " ------- ------- ------- ------  ------- ------- ------- -------"
echo " $black  $red  $green  $yellow  $blue  $magenta  $cyan  $white"

for _ in {1..4}; do
	for color in $black $red $green $yellow $blue $magenta $cyan $white; do
		printf " "
		pastel paint "$color" --on "$color" --no-newline "$spaces"
	done
	printf '\n'
done

for _ in {1..4}; do
	for color in $bright_black $bright_red $bright_green $bright_yellow $bright_blue $bright_magenta $bright_cyan $bright_white; do
		printf " "
		pastel paint "$color" --on "$color" --no-newline "$spaces"
	done
	printf '\n'
done

echo " $bright_black  $bright_red  $bright_green  $bright_yellow  $bright_blue  $bright_magenta  $bright_cyan  $bright_white"

echo
echo " black   fg                      brt_blk white                   bg      brt_wht"
echo " ------- <------ ------- ------> ------- ------- <------ ------- ------> -------"

dark_gradient=$(pastel gradient --number 5 $black $bright_black | pastel format hex)
light_gradient=$(pastel gradient --number 5 $white $bright_white | pastel format hex)
gradient=$(printf "%s %s" "${dark_gradient}" "${light_gradient}")

for _ in {1..4}; do
	for color in $gradient; do
		printf " "
		pastel paint "$color" --on "$color" --no-newline "$spaces"
	done
	printf '\n'
done

for color in $gradient; do
	printf " %s " "${color#\#}"
done
printf '\n'
