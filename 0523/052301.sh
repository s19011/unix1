cut -d : -f 7 /etc/passwd | sort | grep '/bin/bash' | cut -d : -f 1 
