void main() {
  // 1. Identitas & Personalisasi NIM 
  String nama = "Gargarina Nanda Iswati";
  String nim = "244107060100"; 
  
  // 2. Ambil 3 digit terakhir NIM sebagai nilai Unik NIM 
  double nilaiUnikNIM = double.parse(nim.substring(nim.length - 3));

  // 3. Variabel & Tipe Data List 
  List<double> hargaBarang = [15000.0, 25000.0, 50000.0, 10000.0, 30000.0];
  
  // Tambahkan nilaiUnikNIM ke dalam list 
  hargaBarang.add(nilaiUnikNIM);

  // 4. Hitung Total Awal menggunakan Fungsi 
  double totalAwal = hitungTotal(hargaBarang);

  // 5. Control Flow & Null Safety untuk Diskon 
  double diskon = 0;
  String? pesanDiskon; // Null safety 

  if (totalAwal > 200000) {
    diskon = 0.10; 
    pesanDiskon = "Selamat! Anda mendapatkan diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = 0.05; 
    pesanDiskon = "Selamat! Anda mendapatkan diskon 5%";
  } else {
    diskon = 0; 
    pesanDiskon = "Maaf, Anda belum mendapatkan diskon";
  }

  // 6. Hitung Total Akhir
  double besarDiskon = totalAwal * diskon;
  double totalAkhir = totalAwal - besarDiskon;

  // 7. Output 
  print("=== SISTEM PENGOLAH DISKON TOKO AYIN ===");
  print("Nama         : $nama");
  print("NIM          : $nim");
  print("Nilai Unik   : $nilaiUnikNIM (dari 3 digit terakhir NIM)");
  print("-----------------------------------");
  print("Total Awal   : Rp ${totalAwal.toStringAsFixed(0)}");
  
  // Menggunakan operator ! untuk mencetak pesanDiskon 
  print("Keterangan   : ${pesanDiskon!}"); 
  
  print("Besar Diskon : Rp ${besarDiskon.toStringAsFixed(0)}");
  print("Total Akhir  : Rp ${totalAkhir.toStringAsFixed(0)}");
  print("===================================");
}
// Fungsi hitungTotal dengan parameter List dan return double 
double hitungTotal(List<double> daftarHarga) {
  double total = 0;
  for (double harga in daftarHarga) {
    total += harga;
  }
  return total;
}