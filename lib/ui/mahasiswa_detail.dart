import 'package:flutter/material.dart';

class MahasiswaDetail extends StatelessWidget {
  final String nama;
  final String nim;
  final String tahunLahir;

  const MahasiswaDetail({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Mahasiswa"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlueAccent, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text("Nama", style: TextStyle(fontSize: 18)),
                  ),
                  const Text(" : ", style: TextStyle(fontSize: 18)),
                  Text(nama, style: const TextStyle(fontSize: 18)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text("NIM", style: TextStyle(fontSize: 18)),
                  ),
                  const Text(" : ", style: TextStyle(fontSize: 18)),
                  Text(nim, style: const TextStyle(fontSize: 18)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text("Tahun Lahir", style: TextStyle(fontSize: 18)),
                  ),
                  const Text(" : ", style: TextStyle(fontSize: 18)),
                  Text(
                    "${2025 - int.parse(tahunLahir)}",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
