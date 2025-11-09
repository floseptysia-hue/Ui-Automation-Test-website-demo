## 🧪 UI Automation Test with Cucumber (BDD) & Playwright ##

This repository contains my automation testing project using Playwright, Cucumber (BDD), and Chai.
The project includes both UI automation (SauceDemo site) and API testing (GoRest API) to demonstrate analytical thinking, POM implementation, and test design skills.


⚙️ Tech Stack

1. Language: JavaScript (ES6)
2. Framework: Playwright + Cucumber (BDD)
3. Assertion Library: Chai
4. API Testing: Postman
5. Reporting: Cucumber HTML report


#### instalasi cucumber ####
```bash
npm install @cucumber/cucumber playwright @playwright/test chai --save-dev
npx playwright install
```
#### Masuk ke dalam project ####
```bash
cd "ui automation for coforge"
cd "soal no 2"
```
#### Jalankan project ####
- all scenario : 
```bash
    npx cucumber-js --require steps
```

- 1 scenario : 
```bash
    npx cucumber-js features/checkout.feature --require steps
```

📦 ui-api-automation-test/
```
┣ 📂 features/
 ┃ ┣ 📂 ui/
 ┃ ┃ ┣ 🧾 sort.feature
 ┃ ┃ ┗ 🧾 checkout.feature
 ┃ ┣ 📂 api/
 ┃ ┃ ┣ 🧾 createUser.feature
 ┃ ┃ ┣ 🧾 getUser.feature
 ┃ ┃ ┗ 🧾 updateUser.feature
 ┣ 📂 steps/
 ┃ ┣ 📂 ui/
 ┃ ┃ ┣ sort.steps.js
 ┃ ┃ ┗ checkout.steps.js
 ┃ ┣ 📂 api/
 ┃ ┃ ┣ createUser.steps.js
 ┃ ┃ ┣ getUser.steps.js
 ┃ ┃ ┗ updateUser.steps.js
 ┣ 📂 pages/
 ┃ ┣ loginPage.js
 ┃ ┣ productsPage.js
 ┃ ┗ checkoutPage.js
 ┣ 📂 utils/
 ┃ ┗ apiClient.js
 ┣ cucumber.js
 ┗ package.json 
```

## ! Notes 
1. Each scenario follows the BDD structure (Given–When–Then).
2. POM (Page Object Model) is used for better test maintenance and scalability.
3. API scenarios are integrated to simulate end-to-end validation.


## This project showcases my analytical and technical approach to automation testing — combining UI, API, and BDD methodologies.
Built with patience, curiosity, and a cup of ☕.
