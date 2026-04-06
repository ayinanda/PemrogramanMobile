void main() {
  int a = 10;
  int b = 3;

  print('=== OPERATOR ARITMATIKA ===');
  print('Tambah: ${a + b}');
  print('Kurang: ${a - b}');
  print('Kali: ${a * b}');
  print('Bagi: ${a / b}');
  print('Modulo: ${a % b}');
  print('');

  print('=== OPERATOR INCREMENT ===');
  a++;
  print('Increment a: $a');
  print('');

  print('=== OPERATOR RELASIONAL ===');
  print('a > b: ${a > b}');
  print('a == b: ${a == b}');
  print('');

  print('=== OPERATOR LOGIKA ===');
  bool hasilLogika = (a > 5) && (b < 5);
  print('Hasil Logika: $hasilLogika');
  print('');

  print('=== OPERATOR ASSIGNMENT ===');
  a += 5;
  print('a setelah += 5: $a');
  print('');

  print('=== OPERATOR NULL-AWARE ===');
  String? nama;
  String tampil = nama ?? 'Tamu';
  print('Nama: $tampil');
  print('');

  print('=== OPERATOR TYPE TEST ===');
  print('a is int: ${a is int}');
  print('');

  print('=== OPERATOR TERNARY ===');
  String status = a > 20 ? 'Besar' : 'Kecil';
  print('Status: $status');
}
