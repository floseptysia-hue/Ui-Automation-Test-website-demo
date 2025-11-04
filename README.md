## 🧪 UI Automation Test with Cucumber (BDD) & Playwright ##
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
#### Apa saja yang aku kerjakan diatas?
1. Go to https://www.saucedemo.com/ and create Gherkin scenario 
2. Create the UI automation test with the following scenarios:
- Sort product (at least one sort of filter)
- Checkout process
3. Go to https://gorest.co.in/ and please conductthe APItesting forthe following
scenarios:
- Create a new user
- Get user details
- Update user details
