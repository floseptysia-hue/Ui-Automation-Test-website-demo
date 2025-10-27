const { Given, When, Then } = require('@cucumber/cucumber');
const { chromium } = require('playwright');
const { expect } = require('chai');

let browser, page;

Given('the user has at least one item in the cart', async () => {
  browser = await chromium.launch({ headless: false });
  page = await browser.newPage();

  // Login ke SauceDemo
  await page.goto('https://www.saucedemo.com/');
  await page.fill('#user-name', 'standard_user');
  await page.fill('#password', 'secret_sauce');
  await page.click('#login-button');

  // Tambahkan 1 produk ke cart
  await page.click('.inventory_item:first-child button');

  // Pastikan ikon cart menunjukkan 1 item
  const cartBadge = await page.textContent('.shopping_cart_badge');
  expect(cartBadge).to.equal('1');
});

When('the user clicks the {string} button', async (buttonText) => {
  if (buttonText === 'Checkout') {
    await page.click('.shopping_cart_link');
    await page.click('#checkout');
  }
});

When('fills in the required fields with valid information', async () => {
  await page.fill('#first-name', 'John');
  await page.fill('#last-name', 'Doe');
  await page.fill('#postal-code', '12345');
});

When('clicks {string}', async (buttonText) => {
  if (buttonText === 'Continue') {
    await page.click('#continue');
  } else if (buttonText === 'Finish') {
    await page.click('#finish');
  }
});

Then('the checkout should be completed successfully', async () => {
  const url = page.url();
  expect(url).to.include('checkout-complete');
});

Then('a message {string} should be displayed', async (expectedMessage) => {
  const message = await page.textContent('.complete-header');
  const normalizedActual = message.trim().toLowerCase().replace(/[!]/g, '');
  const normalizedExpected = expectedMessage.trim().toLowerCase().replace(/[!]/g, '');
  expect(normalizedActual).to.equal(normalizedExpected);
  await browser.close();
});