import 'dart:math';

void main() {
  int tinggi = Random().nextInt(10);
  print("angka = $tinggi");

  if (tinggi < 1 || tinggi > 10) {
    print('ERROR! Angka harus diantara 1 hingga 10.');
    return;
  }

  // Membuat piramida angka
  for (int i = 1; i <= tinggi; i++) {
    String spasi = ' ' * (tinggi - i);
    String angka = List.filled(i, '$i').join(' ');
    print('$spasi$angka');
  }
}
