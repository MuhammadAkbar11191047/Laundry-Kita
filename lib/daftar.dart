import 'package:flutter/material.dart';

class Daftar extends StatelessWidget {
  const Daftar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Antrian'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width, 
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukan Nama',
                  labelText: 'Nama Lemgkap',
                  icon: Icon(Icons.people),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukan Alamat',
                  labelText: 'Alamat',
                  icon: Icon(Icons.home),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: '08xxxxxxxxx',
                  labelText: 'No. Telp/WA',
                  icon: Icon(Icons.headphones),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'ex: 6kg',
                  labelText: 'Masukan Jumlah (kg)',
                  icon: Icon(Icons.scale_rounded),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'ex: Cuci Setrika',
                  labelText: 'Kategori',
                  icon: Icon(Icons.category),
                ),
              ),
              SizedBox(height: 20, ),
              ElevatedButton(onPressed: (){}, child: Text('daftar')),
            ],
          ),
        ),
      ),
    );
  }
}
