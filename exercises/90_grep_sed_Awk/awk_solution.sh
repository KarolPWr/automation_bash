Print All Log Entries:

    Command:

    bash
    awk '{print}' access.log

    Expected Output: Displays all lines in the log file.

Extract IP Addresses:

    Command:

    bash
    awk '{print $1}' access.log

    Expected Output: Displays only the IP addresses from each log entry.

Count Total Number of Requests:

    Command:

    bash
    awk 'END {print NR}' access.log

    Expected Output: A single number indicating the total number of requests.

Count Requests by Status Code:

    Command:

    bash
    awk '{count[$9]++} END {for (code in count) print code, count[code]}' access.log

    Expected Output: Displays the count of each status code (e.g., 200, 404).

Calculate Total Bytes Transferred:

    Command:

    bash
    awk '{total += $10} END {print total}' access.log

    Expected Output: A single number indicating the total bytes transferred.

Find Requests for a Specific Resource:

    Command:

    bash
    awk '/\/index.html/ {print}' access.log

    Expected Output: Displays all log entries that requested /index.html.

Display Unique IP Addresses:

    Command:

    bash
    awk '{print $1}' access.log | sort | uniq

    Expected Output: Displays a list of unique IP addresses that accessed the server.

Extract and Format Date and Time:

    Command:

    bash
    awk '{print $4, $5}' access.log | sed 's/\[//;s/\]//'

        Expected Output: Displays the date and time of each request in a cleaner format.

Bonus Task:
Ask students to combine multiple awk commands. For example, they could count the number of requests for each IP address:

    Command:

    bash
    awk '{count[$1]++} END {for (ip in count) print ip, count[ip]}' access.log

Expected Output: Displays the count of requests for each unique IP address.