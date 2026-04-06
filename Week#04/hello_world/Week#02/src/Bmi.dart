void main() {
  print("===== PROGRAM HITUNG BMI =====");

  double beratBadanKg = 90;
  int tinggiBadanCm = 158;
  double tinggiBadanM = tinggiBadanCm / 100;

  double bmi = beratBadanKg / (tinggiBadanM * tinggiBadanM);

  String kategori = bmi < 18.5 ? "Kurus" :
  (bmi >= 18.5 && bmi <= 23) ? "Berat Badan Normal":
  (bmi >= 23 && bmi <= 30) ? "Berat Badan Berlebih": "Obesitas" ; 

  print("Berat Badan (Kg): $beratBadanKg");
  print("Tinggi Badan (M): $tinggiBadanM");
  print("BMI: $bmi");
  print("Hasil Kategori BMI Anda adalah: $kategori" );
}
