import 'dart:io';

void main() {
  stdout.write("Masukkan Berat Badan (kg): ");
  double? berat = double.tryParse(stdin.readLineSync() ?? '');
  
  stdout.write("Masukkan Tinggi Badan (cm): ");
  double? tinggi = double.tryParse(stdin.readLineSync() ?? '');

  if (berat == null || tinggi == null || berat <= 0 || tinggi <= 0) {
    print("Error: Input harus berupa angka positif!");
    return;
  }
}