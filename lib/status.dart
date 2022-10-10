import 'dart:html';

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text("Nama1"),
              subtitle: Text("Deskripsi"),
              trailing: Text("Belum Selesai"),
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
            ListTile(
              leading: CircleAvatar(),
              title: Text("Nama3"),
              subtitle: Text("Deskripsi"),
              trailing: Text("Selesai"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
