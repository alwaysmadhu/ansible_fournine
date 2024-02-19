#!/bin/bash
echo 'Enter the Name of the Process'
read process_name
PID=$(pgrep "$process_name")

if [ -z "$PID" ]; then
	echo "Process $process_name is not found"
	exit 1
fi

sudo kill -9 $PID
echo "Process $process_name has been killed" > pkill.txt
