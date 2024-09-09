#!/bin/bash

# Check if the script argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <script_path>"
  exit 1
fi

# Path to the script
script_path="$1"

# Check if the file exists and is executable
if [ ! -f "$script_path" ] || [ ! -x "$script_path" ]; then
  echo "Error: File $script_path does not exist or is not executable."
  exit 1
fi

# Run the script and capture its performance data
echo "Running script: $script_path"
echo "Gathering performance data..."

# Run the script and collect basic resource statistics using /usr/bin/time
/usr/bin/time -v bash "$script_path" &
script_pid=$!

# Monitor the script's performance
echo "Monitoring script PID: $script_pid"

while kill -0 "$script_pid" 2> /dev/null; do
  # Capture CPU and memory usage
  cpu_usage=$(ps -p "$script_pid" -o %cpu --no-headers)
  mem_usage=$(ps -p "$script_pid" -o %mem --no-headers)
  rss=$(ps -p "$script_pid" -o rss --no-headers)  # Resident Set Size (memory used)

  # Output the statistics
  echo "CPU Usage: $cpu_usage% | Memory Usage: $mem_usage% | RSS: ${rss}KB"

  # Sleep for a short period before capturing again
  sleep 1
done

wait $script_pid

# Print completion message
echo "Script finished."

# Use the /usr/bin/time output for overall runtime statistics