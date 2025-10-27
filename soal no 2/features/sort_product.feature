Feature: Fitur Sort Produk
  As a user, I want to sort the products by price so that I can easily find the cheapest or most expensive ones.

  Scenario: Sort products from lowest to highest price
    Given the user opens the SauceDemo login page
    When the user logs in with username "standard_user" and password "secret_sauce"
    And selects the filter "Price (low to high)"
    Then the products are displayed from the lowest to the highest price


