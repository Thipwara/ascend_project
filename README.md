# Automated Login Test — The Internet Herokuapp
Automated Test Login for [The Internet Herokuapp](http://the-internet.herokuapp.com/login) by using 
**Robot Framework** and **SeleniumLibrary**

## Project Structure

```
ascend_project/
├── keyword/
│   ├── web/
│   │   └── login_keyword.robot   # Keywords
│   └── apis/
│       └── get_house_data_keyword.robot   # Keywords
├── resources/
│   ├── web/
│   │   └── login_resource.robot   # Variables
│   └── apis/
│       └── get_house_data_resource.robot   # Variables
├── results/                   # ผลลัพธ์การทดสอบ (สร้างอัตโนมัติ)
├── tests/
│   ├── web/
│   │   └── login_test.robot       # Test Suite for web testing
│   └── apis/
│       └── get_house_data_test.robot       # Test Suite for API testing
├── venv/                          # Virtual environment
├── requirements.txt           # Python dependencies
├── robot.yaml                 # Robot Framework config
└── README.md
```

## Test Cases

### Web Testing
| Test Case | Description | Tag |
|-----------|-------------|-----|
| TC01 - Login successfully | To verify that a user can login successfully when they put a correct username and password. | positive |
| TC02 - Login failed - Password incorrect | To verify that a user can login unsuccessfully when they put a correct username but wrong password. | negative |
| TC03 - Login failed - Username not found | To verify that a user can login unsuccessfully when they put a username that did not exist. | negative |

### API Testing
| Test Case | Description | Tag |
|-----------|-------------|-----|
| TC01 - Get house data success | To verify get house data api will return correct data. | positive |
| TC02 - Get house data but user not found | To verify get house data api from invalid index. The api will return 404 not found. | negative | 

## Installation

### 1. Create Virtual Environment (recommended)
```bash
python3 -m venv venv
source venv/bin/activate
```

### 2. Install Dependencies
```bash
pip install -r requirements.txt
```

### 3. Install ChromeDriver (via webdriver-manager)
ChromeDriver will be downloaded automatically when running the test.

## Running Tests

### Run all Test Cases
```bash
robot --outputdir results tests/
```

### Run only Positive Test
```bash
robot --outputdir results --include positive tests/
```

### Run only Negative Test
```bash
robot --outputdir results --include negative tests/
```

### Run only API Test
```bash
robot --outputdir results tests/apis/
```

### Run only Web Test
```bash
robot --outputdir results tests/web/    
```

## View Results

After running the test, the results file will be in the `results/` folder:
- `report.html` — Summary report (open in browser)
- `log.html` — Detailed log
- `output.xml` — Results in XML format

```bash
open results/report.html
```

## Credentials for Testing

| Field    | Value                |
|----------|----------------------|
| Username | `tomsmith`           |
| Password | `SuperSecretPassword!` |
