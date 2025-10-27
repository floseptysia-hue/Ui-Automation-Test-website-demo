## UI Automation Test Used Cucumber (BDD) dan Playwright ##

#### instalasi cucumber #### 
npm install @cucumber/cucumber playwright @playwright/test chai --save-dev
npx playwright install
#### Masuk ke dalam project ####
cd ui_automation_test
#### Jalankan project ####
npx cucumber-js --require steps/**/*.js
