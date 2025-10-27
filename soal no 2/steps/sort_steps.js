const { Given, When, Then, setDefaultTimeout } = require('@cucumber/cucumber');
const { chromium } = require('playwright');
const { expect } = require('chai');

setDefaultTimeout(60 * 1000); // ⏰ Set timeout jadi 60 detik biar gak error timeout

let browser, page;

Given('the user opens the SauceDemo login page', async () => {
  browser = await chromium.launch({ headless: false, slowMo: 200 });
  page = await browser.newPage();
  await page.goto('https://www.saucedemo.com/');
  await page.waitForSelector('#user-name');
});

When('the user logs in with username {string} and password {string}', async (username, password) => {
  await page.fill('#user-name', username);
  await page.fill('#password', password);
  await page.click('#login-button');
  await page.waitForSelector('.inventory_list');
});

When('selects the filter {string}', async (filterOption) => {
  await page.waitForSelector('.product_sort_container');
  await page.selectOption('.product_sort_container', { label: filterOption });
  await page.waitForTimeout(1000);
});

Then('the products are displayed from the lowest to the highest price', async () => {
  await page.waitForSelector('.inventory_item_price');
  const prices = await page.$$eval('.inventory_item_price', els =>
    els.map(e => parseFloat(e.innerText.replace('$', '')))
  );
  const sortedPrices = [...prices].sort((a, b) => a - b);
  expect(prices).to.eql(sortedPrices);

  await browser.close();
});
