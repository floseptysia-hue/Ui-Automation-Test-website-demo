Feature: Proses Checkout
  As a user, I want to complete the checkout process so that I can finalize my order

  Scenario: Complete checkout successfully
    Given the user has at least one item in the cart
    When the user clicks the "Checkout" button
    And fills in the required fields with valid information
    And clicks "Continue"
    And clicks "Finish"
    Then the checkout should be completed successfully
    And a message "THANK YOU FOR YOUR ORDER" should be displayed
