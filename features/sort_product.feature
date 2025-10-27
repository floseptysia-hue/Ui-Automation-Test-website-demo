Feature: Fitur Sort Produk
  Sebagai pengguna, saya ingin mengurutkan produk agar saya bisa melihat produk berdasarkan harga

  Scenario: Urutkan produk dari harga terendah ke tertinggi
    Given pengguna membuka halaman login SauceDemo
    When pengguna login dengan username "standard_user" dan password "secret_sauce"
    And memilih filter "Price (low to high)"
    Then produk ditampilkan dari harga termurah ke termahal
