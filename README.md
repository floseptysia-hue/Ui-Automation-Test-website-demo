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
