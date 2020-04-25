

run-task-1-1:
						@printf "The quick brown fox jumps over the lazy dog\n" | wc -w

run-task-1-2:
						@printf "The quick brown fox jumps over the lazy dog\n" | tr '[:lower:]' '[:upper:]'

run-task-1-3:
						@curl https://www.dkit.ie > dkit.html
