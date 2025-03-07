import 'dart:io';

void main() {
  while (true) {
    print("=== Kalkulator Sederhana ===");
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
      print("Input tidak valid, silakan masukkan angka yang benar.");
      continue;
    }

    switch (pilihan) {
      case '1':
        print("Hasil: ${angka1 + angka2}");
        break;
      case '2':
        print("Hasil: ${angka1 - angka2}");
        break;
      case '3':
        print("Hasil: ${angka1 * angka2}");
        break;
      case '4':
        if (angka2 == 0) {
          print("Error: Tidak bisa membagi dengan nol!");
        } else {
          print("Hasil: ${angka1 / angka2}");
        }
        break;
      default:
        print("Pilihan tidak valid, silakan coba lagi.");
    }
    print("\n");
  }
}
