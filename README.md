# Tugas 5 Pertemuan 7

**Nama**       : Hammas Harya Sena 
**NIM**        : H1D023062  
**Shift Baru** : A  
**Shift Lama** : E  

---

## Demo Aplikasi

[https://github.com/user-attachments/assets/301436f3-6970-4e90-94fd-f5efd50f3037](https://github.com/user-attachments/assets/301436f3-6970-4e90-94fd-f5efd50f3037)

---

## Penjelasan 
Program pemesanan makanan ini dibuat menggunakan bahasa pemrograman Dart dan berjalan di lingkungan console (terminal). Program diawali dengan menampilkan daftar sembilan menu makanan lengkap dengan harga masing-masing. Setiap item disimpan dalam struktur data Map, di mana kunci berupa angka 1–9 dan nilai berisi pasangan nama dan harga. Setelah daftar menu tampil, pengguna diminta memasukkan nomor menu yang ingin dipesan, misalnya 1 3 5, yang berarti pengguna memilih makanan pada nomor 1, 3, dan 5. Input tersebut diproses dengan cara memisahkan setiap angka menggunakan fungsi split(), kemudian dikonversi menjadi bilangan bulat menggunakan int.tryParse(). Program hanya akan memproses nomor yang valid (antara 1–9) dan mengabaikan input tidak sah.

Selanjutnya, program akan menampilkan daftar makanan yang dipilih beserta harga satuannya, lalu menghitung total harga keseluruhan dengan menjumlahkan harga dari setiap item yang dipilih. Setelah total ditampilkan, pengguna diminta memasukkan jumlah uang yang diserahkan. Program kemudian membandingkan jumlah uang tersebut dengan total harga. Jika jumlah uang yang diberikan sama dengan total harga, maka muncul pesan bahwa uang pas dan transaksi berhasil. Jika uang lebih besar, maka program menghitung selisih sebagai uang kembalian dan menampilkannya. Namun, jika uang lebih kecil dari total harga, maka program akan menampilkan pesan bahwa uang tidak cukup dan meminta pengguna untuk menginput ulang jumlah uang hingga sesuai.
