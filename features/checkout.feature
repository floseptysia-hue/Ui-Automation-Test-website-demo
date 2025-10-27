Feature: Proses Checkout
  Sebagai pengguna, saya ingin melakukan checkout produk agar saya bisa menyelesaikan pembelian

  Scenario: Melakukan checkout dengan satu produk
    Given pengguna sudah login di SauceDemo
    When pengguna menambahkan produk "Sauce Labs Backpack" ke keranjang
    And membuka halaman cart
    And melanjutkan ke checkout
    And mengisi data checkout "Wahyu" "Nainggolan" "12345"
    And menekan tombol Continue dan Finish
    Then sistem menampilkan pesan "Thank you for your order!"
