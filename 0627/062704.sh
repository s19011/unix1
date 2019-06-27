find /home/* 2> /dev/null -type f -exec du \{\} \; | sort -nr | head -n 5
