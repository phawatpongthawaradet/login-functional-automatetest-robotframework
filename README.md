# login_practiceautomate

This project is an automated login test suite for the website [Practice Test Automation](https://practicetestautomation.com/practice-test-login/) using **Robot Framework**.  
It covers positive and negative login scenarios, verifies expected behaviors, and demonstrates a modular structure using external resource files.

---

## 📁 Project Structure

login_practiceautomate/
│
├── Data/
│ └── testcases.txt # Detailed description of each test case
│
├── Resource/
│ ├── locators.yaml # Page element locators (username, password, buttons, messages, etc.)
│ ├── login_keywords.robot # Custom keywords related to login actions
│ └── verify_keywords.robot # Custom keywords for result and message verification
│
├── Results/
│ └── log_login/ # Folder for test logs, reports, and output files
│
└── README.md # Project overview and documentation


---

## ✅ Test Scenarios

All test scenarios are documented in `Data/testcases.txt`. The following scenarios are currently implemented:

1. **Positive Login Test**  
   ✔️ Valid username and password  
   ✔️ URL verification after login  
   ✔️ Text and logout button verification

2. **Negative Username Test**  
   ❌ Invalid username  
   ✔️ Error message display  
   ✔️ Text matches expected

3. **Negative Password Test**  
   ❌ Invalid password  
   ✔️ Error message display  
   ✔️ Text matches expected

---

## 🚀 How to Run the Tests

1. **Install Dependencies** (if not already installed)

pip install robotframework
pip install robotframework-seleniumlibrary

2. **Run Testcases**
robot -d results\log_login resource\login_testcases.robot


👤 Author
Phawat Pongthawaradet