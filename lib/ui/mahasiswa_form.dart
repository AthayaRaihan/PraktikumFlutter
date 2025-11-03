import 'package:flutter/material.dart';
import 'package:h1d023001_tugas6/ui/mahasiswa_detail.dart';

class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({Key? key}) : super(key: key);

  @override
  _MahasiswaFormState createState() => _MahasiswaFormState();
}

class _MahasiswaFormState extends State<MahasiswaForm> {
  final _NamaController = TextEditingController();
  final _NIMController = TextEditingController();
  final _TahunLahirController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Mahasiswa'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxNamaMahasiswa(),
            _textboxNIMMahasiswa(),
            _textboxTahunLahirMahasiswa(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxNamaMahasiswa() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _NamaController,
    );
  }

  _textboxNIMMahasiswa() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _NIMController,
    );
  }

  _textboxTahunLahirMahasiswa() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _TahunLahirController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
      onPressed: () {
        String nama = _NamaController.text;
        String nim = _NIMController.text;
        String tahunLahir = _TahunLahirController.text;

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                MahasiswaDetail(nama: nama, nim: nim, tahunLahir: tahunLahir),
          ),
        );
      },
      child: const Text('Simpan'),
    );
  }
}
