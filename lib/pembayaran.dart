import 'package:flutter/material.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembayaran'),
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
