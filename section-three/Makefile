#Section 3

run-task-1:
						@tail -10 access.log.txt

run-task-2:
						@cut -f 1 -d ' ' access.log.txt | sort | uniq

run-task-3:
						@grep "\s404" access.log.txt | grep -o '"GET.*'1.1'"'

run-task-4:
						@grep -hnr "MSIE" access.log.txt > access.ie.log

run-task-5:
						@grep -P '^\S+\s+\S+\s+\S+\s+\S+\s+\S+\s+\S+\s+(?!0)([1-9][0-9]|[5-9])\b' access.log.txt | cut -f 4 -d ' ' | sort | uniq -c
