import 'package:deliv/login.dart';
import 'package:deliv/pembayaran.dart';
import 'package:deliv/riwayat.dart';

import 'package:deliv/status.dart';
import 'package:flutter/material.dart';
import 'header_drawer.dart';
import 'package:deliv/daftar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 136, 202),
        title: const Text('Laundry Kita'),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Beranda'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.list_alt),
                title: const Text('Status'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Status()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.list_alt),
                title: const Text('Pembayaran'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Pembayaran()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text('Riwayat'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HistoryPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('logout'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisCount: 2,
        
        children: <Widget>[
          Card(
            color: Color.fromARGB(255, 152, 206, 238),
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Daftar()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.list,
                      size: 50,
                      color: Color.fromARGB(255, 87, 130, 165),
                    ),
                    Text(
                      "Tambah Antrian",
                      style: TextStyle(fontSize: 17.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(

            color: Color.fromARGB(255, 152, 206, 238),
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Status()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.list_alt,
                      size: 50,
                      color: Color.fromARGB(255, 87, 130, 165),
                    ),
                    Text(
                      "Status",
                      style: TextStyle(fontSize: 17.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Color.fromARGB(255, 152, 206, 238),
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Pembayaran()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.money_off,
                      size: 50,
                      color: Color.fromARGB(255, 87, 130, 165),
                    ),
                    Text(
                      "pembayaran",
                      style: TextStyle(fontSize: 17.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            
            color: Color.fromARGB(255, 152, 206, 238),
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Pembayaran()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.data_array,
                      size: 50,
                      color: Color.fromARGB(255, 87, 130, 165),
                    ),
                    Text(
                      "riwayat",
                      style: TextStyle(fontSize: 17.0),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
