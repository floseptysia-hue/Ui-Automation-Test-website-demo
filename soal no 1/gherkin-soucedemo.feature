Feature: SauceDemo Web Application Testing
  As a SauceDemo user
  I want to log in, browse products, add them to the cart, and complete checkout
  So that I can ensure all core e-commerce functionalities work properly

  Background:
    Given the user opens the SauceDemo website

  # ==================================
  # LOGIN SCENARIOS
  # ==================================
  
  Scenario: Successful login with valid credentials
    Given the user is on the Login page
    When the user enters a valid username "standard_user" and password "secret_sauce"
    And clicks the Login button
    Then the user should be redirected to the Products page
    And the page title "Products" should be displayed

  Scenario: Login fails with invalid credentials
    Given the user is on the Login page
    When the user enters an invalid username "wrong_user" and password "wrong_pass"
    And clicks the Login button
    Then an error message should appear with text "Epic sadface: Username and password do not match any user in this service"

  Scenario: Login fails with locked-out user
    Given the user is on the Login page
    When the user enters username "locked_out_user" and password "secret_sauce"
    And clicks the Login button
    Then an error message should appear with text "Epic sadface: Sorry, this user has been locked out."

  Scenario: Login fails with empty username
    Given the user is on the Login page
    When the user leaves the username field empty
    And enters password "secret_sauce"
    And clicks the Login button
    Then an error message should appear with text "Epic sadface: Username is required"

  Scenario: Login fails with empty password
    Given the user is on the Login page
    When the user enters username "standard_user"
    And leaves the password field empty
    And clicks the Login button
    Then an error message should appear with text "Epic sadface: Password is required"

  Scenario: Login fails with both fields empty
    Given the user is on the Login page
    When the user leaves both username and password fields empty
    And clicks the Login button
    Then an error message should appear with text "Epic sadface: Username is required"

  Scenario: Login fails when user refreshes after entering wrong credentials
    Given the user is on the Login page
    When the user enters an invalid username and password
    And clicks the Login button
    And refreshes the page
    Then the error message should reset
    And both fields should be empty again

  Scenario: Password field should be hidden
    Given the user is on the Login page
    When the user types a password in the password field
    Then the password characters should be masked (not visible as plain text)

  Scenario: User can reset the error message
    Given the user attempted to log in with invalid credentials
    When the user clicks the error message close (X) icon
    Then the error message should disappear from the page

  Scenario: Login session persists after refresh
    Given the user has successfully logged in
    When the user refreshes the Products page
    Then the user should remain logged in and stay on the Products page

  Scenario: User is redirected to login after manual logout
    Given the user has successfully logged in
    When the user opens the sidebar menu
    And clicks Logout
    Then the user should be redirected to the Login page

  Scenario: Attempting to access Products page without login
    Given the user opens the Products page URL directly without logging in
    Then the user should be redirected to the Login page


  # ==================================
  # PRODUCT LIST AND SORTING
  # ==================================

  Scenario: Sort products by price (low to high)
    Given the user is logged in
    When the user selects the sort option "Price (low to high)"
    Then the product list should be sorted from the lowest to highest price

  Scenario: Sort products by name (A to Z)
    Given the user is logged in
    When the user selects the sort option "Name (A to Z)"
    Then the product list should be sorted alphabetically

  # ==================================
  # CART FUNCTIONALITY
  # ==================================

  Scenario: Add a product to the cart
    Given the user is logged in
    When the user clicks "Add to cart" on a product
    Then the cart badge should show "1"

  Scenario: Remove a product from the cart
    Given the user has added a product to the cart
    When the user clicks "Remove" on the same product
    Then the cart badge should not be visible

  Scenario: View cart details
    Given the user has at least one item in the cart
    When the user opens the cart page
    Then the selected product(s) should be displayed with correct name and price

  # ==================================
  # CHECKOUT PROCESS
  # ==================================

  Scenario: Checkout successfully
    Given the user has one item in the cart
    When the user opens the cart page
    And clicks the checkout button
    And fills in the checkout form with valid first name, last name, and postal code
    And clicks Continue
    And clicks Finish
    Then the user should see a confirmation message "THANK YOU FOR YOUR ORDER"

  Scenario: Checkout fails with missing information
    Given the user is on the checkout information page
    When the user leaves one or more required fields blank
    And clicks Continue
    Then an error message should be displayed indicating the missing field

  # ==================================
  # LOGOUT AND SESSION
  # ==================================

  Scenario: Logout successfully
    Given the user is logged in
    When the user opens the sidebar menu
    And clicks Logout
    Then the user should be redirected to the Login page


