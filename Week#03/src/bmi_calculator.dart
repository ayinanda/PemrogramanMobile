import 'dart:io';

void main() {
  List<String> history = [];
  
  while (true) {
    print("\n=== Kalkulator BMI ===");
    stdout.write("Berat (kg): ");
    double? berat = double.tryParse(stdin.readLineSync() ?? '');
    stdout.write("Tinggi (cm): ");
    double? tinggi = double.tryParse(stdin.readLineSync() ?? '');

    if (berat != null && tinggi != null && berat > 0 && tinggi > 0) {
      double bmi = berat / ((tinggi / 100) * (tinggi / 100));
      String kategori = (bmi < 18.5) ? "Kurus" : (bmi <= 24.9 ? "Normal" : "Gemuk");
      
      String record = "BMI: ${bmi.toStringAsFixed(1)} ($kategori)";
      history.add(record);
      print(record);
    } else {
      print("Input tidak valid!");
    }

    stdout.write("Hitung lagi? (y/n): ");
    if (stdin.readLineSync()?.toLowerCase() != 'y') break;
  }

  print("\n=== RIWAYAT PERHITUNGAN ===");
  for (var i = 0; i < history.length; i++) {
    print("${i + 1}. ${history[i]}");
  }
}