# Load Testing Script

[![JMeter](https://img.shields.io/badge/JMeter-5.6+-D00000.svg?style=flat&logo=apachejmeter&logoColor=white)](https://jmeter.apache.org/)


## Project Structure

The project follows directory organization for maintainability:

```text
.
├── data/                  # Test Data (CSV)
│   └── users.csv          # Parameterized user data
├── reports/               # HTML Dashboard Reports
├── results/               # Execution Logs
├── scripts/               # JMeter Test Files (.jmx)
│   └── Essentials.jmx     # !!! Main JMeter test file !!!
└── run_test.sh            # Bash script for Non-GUI execution
```

## Load model

![Load model](media/Load%20model.png)

## How to Run

```bash
./run_test.sh
```

**The script will automatically:**

- Execute JMeter in Non-GUI mode.

- Create a timestamped results.

- Generate a HTML Dashboard Report.

## Author
**Artem Vusyk**

*Performance Testing Student*