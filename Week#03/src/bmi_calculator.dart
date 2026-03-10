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

  double tinggiMeter = tinggi / 100;
  double bmi = berat / (tinggiMeter * tinggiMeter);

  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi <= 24.9) {
    kategori = "Normal";
  } else {
    kategori = "Gemuk";
  }
  print("Hasil BMI: ${bmi.toStringAsFixed(2)} ($kategori)");
}