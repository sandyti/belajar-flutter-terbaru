import 'dart:io';

class Kalkulator {
  double angka1;
  double angka2;

  Kalkulator(this.angka1, this.angka2);

  Future<double> penjumlahan() async {
    return angka1 + angka2;
  }

  Future<double> pengurangan() async {
    return angka1 - angka2;
  }

  Future<double> perkalian() async {
    return angka1 * angka2;
  }

  Future<double> pembagian() async {
    if (angka2 == 0) {
      throw Exception("Tidak bisa membagi dengan nol");
    }
    return angka1 / angka2;
  }
}

Future<void> main() async {
  while (true) {
    print("=== Kalkulator Asynchronous ===");
    print("1. Penjumlahan");
    print("2. Pengurangan");
    print("3. Perkalian");
    print("4. Pembagian");
    print("5. Keluar");

    stdout.write("Pilih Operasi (1-5): ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == '5') {
      print("Terima Kasih, Program Berhenti!");
      break;
    }

    stdout.write("Masukkan angka pertama: ");
    double? angka1 = double.tryParse(stdin.readLineSync() ?? "");

    stdout.write("Masukkan angka kedua: ");
    double? angka2 = double.tryParse(stdin.readLineSync() ?? "");

    if (angka1 == null || angka2 == null) {
      print("Input tidak valid, silakan coba lagi.");
      continue;
    }

    var kalkulator = Kalkulator(angka1, angka2);

    try {
      double hasil = 0;
      switch (pilihan) {
        case '1':
          hasil = await kalkulator.penjumlahan();
          break;
        case '2':
          hasil = await kalkulator.pengurangan();
          break;
        case '3':
          hasil = await kalkulator.perkalian();
          break;
        case '4':
          hasil = await kalkulator.pembagian();
          break;
        default:
          print("Pilihan tidak valid.");
          continue;
      }
      print("Hasil: $hasil");
    } catch (e) {
      print(e);
    }
    print(""); // Jarak antar operasi
  }
}
