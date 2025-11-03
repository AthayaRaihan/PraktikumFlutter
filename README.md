# Tugas Pertemuan 6
## Penjelasan Proses passing data dari form menuju tampilan detail
1. Pengguna Mengisi Input pada TextField
   Di halaman MahasiswaForm, terdapat tiga buah TextEditingController yang digunakan untuk menampung input dari pengguna, yaitu:
   - Nama
   - NIM
   - Tahun Lahir
     ```
     final _NamaController = TextEditingController();
     final _NIMController = TextEditingController();
     final _TahunLahirController = TextEditingController();
2. Mengambil Data Saat Tombol “Simpan” Ditekan
   Ketika tombol Simpan ditekan, nilai yang telah dimasukkan pengguna diambil dari setiap controller:
   ```
   String nama = _NamaController.text;
   String nim = _NIMController.text;
   String tahunLahir = _TahunLahirController.text;
3. Passing Data Menggunakan Navigator
   Data kemudian dikirim ke halaman MahasiswaDetail menggunakan Navigator.push() melalui constructor class:
   ```
   Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MahasiswaDetail(
          nama: nama,
          nim: nim,
          tahunLahir: tahunLahir,
        ),
      ),
    );
4. Halaman Detail Menerima Data Melalui Constructor
   Pada file MahasiswaDetail, data diterima melalui parameter constructor berikut:
   ```
   final String nama;
    final String nim;
    final String tahunLahir;
    
    const MahasiswaDetail({
      required this.nama,
      required this.nim,
      required this.tahunLahir,
    });
5. Menampilkan Data pada Halaman Detail
   Data yang telah diterima ditampilkan dalam widget Text:
   ```
   Text(nama)
   Text(nim)
   Text("${2025 - int.parse(tahunLahir)}")

# SCREENSHOT
<img width="998" height="1632" alt="Screenshot 2025-11-03 133217" src="https://github.com/user-attachments/assets/52fff647-0c9e-453c-b9b5-988de02e20c1" />
<img width="992" height="1635" alt="Screenshot 2025-11-03 133226" src="https://github.com/user-attachments/assets/3fe74051-3832-4dd6-94a7-d30654ed5238" />




