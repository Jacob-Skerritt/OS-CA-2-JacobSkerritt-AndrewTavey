#Section 2
run-task-1:
						@grep -Px '\X{7}|\X{9}' colours.txt | grep -v '[g-zG-Z]'

run-task-2: hextodec
						@grep -Px '\X{7}|\X{9}' colours.txt | grep -v '[g-zG-Z]' | cut -b 4,5 | ./hextodec | paste -sd, -

run-task-3: hextorgba
						@grep -Px '\X{7}|\X{9}' colours.txt | grep -v '[g-zG-Z]' | ./hextorgba | sort -k 4 >rgba-colours.txt

#Associated
hextodec: hextodec.c
						@gcc -C -Wall -Wextra -Wpedantic hextodec.c -o hextodec

hextorgba: hextorgba.c
						@gcc -C -Wall -Wextra -Wpedantic hextorgba.c -o hextorgba
