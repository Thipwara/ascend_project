# Automated Login Test — The Internet Herokuapp

โปรเจกต์ทดสอบอัตโนมัติสำหรับหน้า Login ของ [The Internet Herokuapp](http://the-internet.herokuapp.com/login) โดยใช้ **Robot Framework** และ **SeleniumLibrary**

## โครงสร้างโปรเจกต์

```
ascend_project/
├── resources/
│   └── login_resource.robot   # Keywords และ Variables ที่ใช้ร่วมกัน
├── results/                   # ผลลัพธ์การทดสอบ (สร้างอัตโนมัติ)
├── tests/
│   └── login_test.robot       # Test Suite หลัก
├── requirements.txt           # Python dependencies
├── robot.yaml                 # Robot Framework config
└── README.md
```

## Test Cases

| Test Case | Description | Tag |
|-----------|-------------|-----|
| TC01 - Login With Valid Credentials | Login สำเร็จด้วย username/password ที่ถูกต้อง | positive |
| TC02 - Login With Invalid Username | Login ล้มเหลวด้วย username ที่ผิด | negative |
| TC03 - Login With Invalid Password | Login ล้มเหลวด้วย password ที่ผิด | negative |
| TC04 - Login With Empty Credentials | Login ล้มเหลวเมื่อไม่กรอกข้อมูล | negative |

## การติดตั้ง

### 1. สร้าง Virtual Environment (แนะนำ)
```bash
python3 -m venv venv
source venv/bin/activate
```

### 2. ติดตั้ง Dependencies
```bash
pip install -r requirements.txt
```

### 3. ติดตั้ง ChromeDriver (ผ่าน webdriver-manager)
ChromeDriver จะถูกดาวน์โหลดอัตโนมัติเมื่อรันเทส

## การรันเทส

### รันทุก Test Case
```bash
robot --outputdir results tests/
```

### รันเฉพาะ Positive Test
```bash
robot --outputdir results --include positive tests/
```

### รันเฉพาะ Negative Test
```bash
robot --outputdir results --include negative tests/
```

## การดูผลลัพธ์

หลังจากรันเทส ไฟล์ผลลัพธ์จะอยู่ในโฟลเดอร์ `results/`:
- `report.html` — รายงานสรุป (เปิดในเบราว์เซอร์)
- `log.html` — Log โดยละเอียด
- `output.xml` — ผลลัพธ์ในรูปแบบ XML

```bash
open results/report.html
```

## Credentials ที่ใช้ทดสอบ

| Field    | Value                |
|----------|----------------------|
| Username | `tomsmith`           |
| Password | `SuperSecretPassword!` |
