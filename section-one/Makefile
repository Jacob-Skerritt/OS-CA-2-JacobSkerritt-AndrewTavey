#Section 1
run-task-1:
						@printf "The quick brown fox jumps over the lazy dog\n" | wc -w

run-task-2:
						@printf "The quick brown fox jumps over the lazy dog\n" | tr '[:lower:]' '[:upper:]'

run-task-3:
						@curl https://www.dkit.ie > dkit.html

run-task-4: run-task-3
						@{ tail -1 dkit.html; head -1 dkit.html; } |  tr '< >' '[ ]' > mangled.txt
