import 'package:flutter/material.dart';

class statusPage extends StatefulWidget {
  const statusPage({super.key});

  @override
  State<statusPage> createState() => _StatusState();
}

class _StatusState extends State<statusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status'),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text("Nama1"),
              subtitle: Text("Deskripsi"),
              trailing: Text("Selesai"),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Nama2"),
              subtitle: Text("Deskripsi"),
              trailing: Text("Selesai"),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Nama3"),
              subtitle: Text("Deskripsi"),
              trailing: Text("Belum Selesai"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
