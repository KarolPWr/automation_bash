

Find all files named "example.txt" in the current directory and its subdirectories:
find . -type f -name "example.txt"

Find all files starting with "foo" and ending with ".bar" in the /tmp directory:

find /tmp -type f -name "foo*.bar"


Find files larger than 10 megabytes in the /home directory:

find /home -type f -size +10M

Find files smaller than 1 kilobyte in the current directory:

find . -type f -size -1k


Find files modified in the last 7 days in the /etc directory:


find /etc -type f -mtime -7

Find files modified more than 30 days ago in the current directory:


find . -type f -mtime +30

Find files by permissions:

Find files with 644 permissions in the /var/www directory:


find /var/www -type f -perm 644

Find directories with 755 permissions in the current directory:


find . -type d -perm 755

Find files by owner:

Find files owned by the user "john" in the /home directory:


find /home -type f -user john

Find files owned by the group "staff" in the current directory:

find . -type f -group staff



Find all .txt files in the current directory and delete them:

find . -type f -name "*.txt" -delete

Find all .jpg files in the /images directory and compress them using gzip:

find /images -type f -name "*.jpg" -exec gzip {} \;
