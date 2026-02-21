#!/bin/bash

TIMESTAMP=$(date +%F_%H-%M)
SCRIPT="scripts/Essentials.jmx"
LOG_FILE="results/test_result_${TIMESTAMP}.jtl"
REPORT_DIR="reports/report_${TIMESTAMP}"

echo "SCRIPT: $SCRIPT"
echo "LOG_FILE: $LOG_FILE"
echo "REPORT_DIR: $REPORT_DIR"

# -n This specifies JMeter is to run in cli mode
# -t [name of JMX file that contains the Test Plan].
# -l [name of JTL file to log sample results to].
# -j [name of JMeter run log file].
# -r Run the test in the servers specified by the JMeter property "remote_hosts"
# -R [list of remote servers] Run the test in the specified remote servers
# -g [path to CSV file] generate report dashboard only
# -e generate report dashboard after load test
# -o output folder where to generate the report dashboard after load test. Folder must not exist or be empty

echo "jmeter -n -t "$SCRIPT" -l "$LOG_FILE" -e -o "$REPORT_DIR""
jmeter -n -t "$SCRIPT" -l "$LOG_FILE" -e -o "$REPORT_DIR"