#!/bin/sh

bg_bar_color="#32333a"
fg_text_color="#eff0eb"

separator() {
	echo -n "{"
	#echo -n "\"full_text\":\"\"," # CTRL+Ue0b2
	echo -n "\"full_text\":\"  \"," # CTRL+Ue0b2
	echo -n "\"separator\":false,"
	echo -n "\"separator_block_width\":0,"
	echo -n "}"
}

common() {
	echo -n "\"border\": \"$bg_bar_color\","
	echo -n "\"separator\":false,"
	echo -n "\"separator_block_width\":0,"
	echo -n "\"border_top\":4,"
	echo -n "\"border_bottom\":4,"
	echo -n "\"border_left\":0,"
	echo -n "\"border_right\":0,"
	echo -n "\"color\": \"$fg_text_color\""
}

myip_public() {
	separator
	echo -n ",{"
	echo -n "\"name\":\"ip_public\","
	echo -n "\"full_text\":\" $(/home/cadenpopps/.config/i3status/ip.py) \","
	echo -n "\"background\":\"$bg\","
	common
	echo -n "},"
}

myip_local() {
	separator
	echo -n ",{"
	echo -n "\"name\":\"ip_local\","
	echo -n "\"full_text\":\"  $(ip route get 1 | sed -n 's/.*src \([0-9.]\+\).*/\1/p') \","
	echo -n "\"background\":\"$bg\","
	common
	echo -n "},"
}

memory() {
	separator
	echo -n ",{"
	echo -n "\"name\":\"id_memory\","
	echo -n "\"full_text\":\"  $(/home/cadenpopps/.config/i3status/memory.py)%\","
	echo -n "\"background\":\"$bg\","
	common
	echo -n "},"
}

cpu_usage() {
	separator
	echo -n ",{"
	echo -n "\"name\":\"id_cpu_usage\","
	echo -n "\"full_text\":\"  $(/home/cadenpopps/.config/i3status/cpu.py)% \","
	echo -n "\"background\":\"$bg\","
	common
	echo -n "},"
}

mydate() {
	separator
	echo -n ",{"
	echo -n "\"name\":\"id_time\","
	echo -n "\"full_text\":\"  $(date "+%a %d/%m %H:%M") \","
	echo -n "\"background\":\"$bg\","
	common
	echo -n "},"
}

volume() {
	separator
	vol=$(pamixer --get-volume)
	echo -n ",{"
	echo -n "\"name\":\"id_volume\","
	if [ $vol -le 0 ]; then
		echo -n "\"full_text\":\"  ${vol}% \","
	else
		echo -n "\"full_text\":\"  ${vol}% \","
	fi
	echo -n "\"background\":\"$bg\","
	common
	echo -n "},"
	separator
}

systemupdate() {
	local nb=$(checkupdates | wc -l)
	if (( $nb > 0)); then
		echo -n "{"
		echo -n "\"name\":\"id_systemupdate\","
		echo -n "\"full_text\":\"  ${nb}\","
		echo -n "\"separator\":false,"
		echo -n "},"
	fi
}

echo '{ "version": 1, "click_events":false }'     # Send the header so that i3bar knows we want to use JSON:
echo '['                    # Begin the endless array.
echo '[]'                   # We send an empty first array of blocks to make the loop simpler:

# Now send blocks with information forever:
(while :;
do
	echo -n ",["
	systemupdate
	myip_public
	myip_local
	memory
	cpu_usage
	mydate
	separator
	echo "]"
	sleep 10
done) &

# click events
# while read line;
# do

#   # CHECK UPDATES
#   if [[ $line == *"name"*"id_systemupdate"* ]]; then
# 	  alacritty -e /home/you/.config/i3status/click_checkupdates.sh &

#   # CPU
# elif [[ $line == *"name"*"id_cpu_usage"* ]]; then
# 	alacritty -e htop &

#   # TIME
# elif [[ $line == *"name"*"id_time"* ]]; then
# 	alacritty -e /home/you/.config/i3status/click_time.sh &

#   # VOLUME
# elif [[ $line == *"name"*"id_volume"* ]]; then
# 	alacritty -e alsamixer &

#   # LOGOUT
# elif [[ $line == *"name"*"id_logout"* ]]; then
# 	i3-nagbar -t warning -m 'Log out ?' -b 'yes' 'i3-msg exit' > /dev/null &

#   fi

# done
