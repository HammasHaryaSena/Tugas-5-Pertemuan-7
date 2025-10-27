import 'dart:io';

void main() {
  // Daftar menu makanan
  final menu = {
    1: {'nama': 'Mie Ayam', 'harga': 15000},
    2: {'nama': 'Bakso', 'harga': 13000},
    3: {'nama': 'Nasi Goreng', 'harga': 17000},
    4: {'nama': 'Soto Ayam', 'harga': 14000},
    5: {'nama': 'Ayam Geprek', 'harga': 16000},
    6: {'nama': 'Es Teh', 'harga': 5000},
    7: {'nama': 'Es Jeruk', 'harga': 7000},
    8: {'nama': 'Jus Alpukat', 'harga': 10000},
    9: {'nama': 'Air Mineral', 'harga': 4000},
  };

  // Tampilkan daftar menu
  print('🍽️ Daftar Menu Makanan:');
  menu.forEach((key, value) {
    print('$key. ${value['nama']} - Rp${value['harga']}');
  });

  // Input pilihan makanan
  stdout.write('\nMasukkan nomor menu yang ingin dipesan (pisahkan dengan spasi, misal: 1 3 5): ');
  final input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('⚠️ Anda belum memilih menu!');
    return;
  }

  final pilihan = input
      .split(' ')
      .map((e) => int.tryParse(e))
      .whereType<int>()
      .where((x) => menu.containsKey(x))
      .toList();

  if (pilihan.isEmpty) {
    print('⚠️ Pilihan tidak valid! Pastikan angka 1-9.');
    return;
  }

  // Hitung total harga
  int total = 0;
  print('\n🧾 Pesanan Anda:');
  for (var p in pilihan) {
    final item = menu[p]!;
    print('- ${item['nama']} (Rp${item['harga']})');
    total += item['harga'] as int;
  }

  print('\n💰 Total harga: Rp$total');

  // Proses pembayaran
  while (true) {
    stdout.write('\nMasukkan jumlah uang yang diserahkan: ');
    final uangInput = stdin.readLineSync();
    final uang = int.tryParse(uangInput ?? '');

    if (uang == null) {
      print('⚠️ Masukkan angka yang valid!');
      continue;
    }

    if (uang == total) {
      print('✅ Uang yang diberikan pas, terimakasih sudah berbelanja!');
      break;
    } else if (uang > total) {
      final kembalian = uang - total;
      print('💵 Uang kembalian anda adalah Rp$kembalian, terimakasih sudah berbelanja!');
      break;
    } else {
      print('❌ Uang anda kurang! Silahkan beri uang yang sesuai.');
    }
  }
}
