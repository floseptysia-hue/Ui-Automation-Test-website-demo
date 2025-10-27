Feature: Proses Checkout
  Sebagai pengguna, saya ingin melakukan checkout produk agar saya bisa menyelesaikan pembelian

  Scenario: Complete checkout successfully
    Given the user has at least one item in the cart
    When the user clicks the "Checkout" button
    And fills in the required fields with valid information
    And clicks "Continue"
    And clicks "Finish"
    Then the checkout should be completed successfully
    And a message "THANK YOU FOR YOUR ORDER" should be displayed
