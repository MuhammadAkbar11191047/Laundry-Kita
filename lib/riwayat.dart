import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat'),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text("Nama1"),
              subtitle: Text("Deskripsi"),
              trailing: Text("10.00 AM"),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Nama2"),
              subtitle: Text("Deskripsi"),
              trailing: Text("10.00 AM"),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Nama3"),
              subtitle: Text("Deskripsi"),
              trailing: Text("10.00 AM"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}