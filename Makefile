

run-task-1-1:
						@printf "The quick brown fox jumps over the lazy dog\n" | wc -w

run-task-1-2:
						@printf "The quick brown fox jumps over the lazy dog\n" | tr '[:lower:]' '[:upper:]'

run-task-1-3:
						@curl https://www.dkit.ie > dkit.html

run-task-1-4: run-task-1-3
						@{ tail -1 dkit.html; head -1 dkit.html; } |  tr '< >' '[ ]' > mangled.txt

run-task-2-1:
						@grep -Px '\X{7,9}' colours.txt | grep -v '[g-zG-Z]'

run-task-3-1:
						@tail -10 access.log.txt

run-task-3-2:
						@cut -f 1 -d ' ' access.log.txt | uniq

run-task-3-3:
						@grep "\s404" access.log.txt | grep -o '\"GET.*'1.1'\"'
