
#Section 1
run-task-1-1:
						@printf "The quick brown fox jumps over the lazy dog\n" | wc -w

run-task-1-2:
						@printf "The quick brown fox jumps over the lazy dog\n" | tr '[:lower:]' '[:upper:]'

run-task-1-3:
						@curl https://www.dkit.ie > dkit.html

run-task-1-4: run-task-1-3
						@{ tail -1 dkit.html; head -1 dkit.html; } |  tr '< >' '[ ]' > mangled.txt

#Section 2
run-task-2-1:
						@grep -Px '\X{7,9}' colours.txt | grep -v '[g-zG-Z]'

#Can you pipe the output of a pre	vious task into the the actions of a new task?
run-task-2-2: hextodec
						@grep -Px '\X{7,9}' colours.txt | grep -v '[g-zG-Z]' | cut -b 4,5 | ./hextodec | paste -sd, -

#Section 3
run-task-3-1:
						@tail -10 access.log.txt

run-task-3-2:
						@cut -f 1 -d ' ' access.log.txt | uniq

run-task-3-3:
						@grep "\s404" access.log.txt | grep -o '\"GET.*'1.1'\"'

run-task-3-4:
						@grep -hnr "MSIE" access.log.txt > access.ie.log


run-task3-5:
						@grep -P '^\S+\s+\S+\s+\S+\s+\S+\s+\S+\s+\S+\s+(?!0)([1-9][0-9]|[5-9])\b' access.log.txt | cut -f 4 -d ' ' | sort | uniq -c

#Associated
hextodec: hextodec.c
						@gcc -C -Wall -Wextra -Wpedantic hextodec.c -o hextodec


