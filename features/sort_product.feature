Feature: Fitur Sort Produk
  Sebagai pengguna, saya ingin mengurutkan produk agar saya bisa melihat produk berdasarkan harga

  Scenario: Sort products from lowest to highest price
    Given the user opens the SauceDemo login page
    When the user logs in with username "standard_user" and password "secret_sauce"
    And selects the filter "Price (low to high)"
    Then the products are displayed from the lowest to the highest price


