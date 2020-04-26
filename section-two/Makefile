#Section 2
run-task-1:
						@grep -Px '\X{7}|\X{9}' colours.txt | grep -v '[g-zG-Z]'

# Can you pip the output of a previous task into the actions of a new task?
run-task-2: hextodec
						@grep -Px '\X{7}|\X{9}' colours.txt | grep -v '[g-zG-Z]' | cut -b 4,5 | ./hextodec | paste -sd, -

#Associated
hextodec: hextodec.c
						@gcc -C -Wall -Wextra -Wpedantic hextodec.c -o hextodec
