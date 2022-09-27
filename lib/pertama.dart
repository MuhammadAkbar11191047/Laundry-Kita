import 'dart:ui';

import 'package:deliv/login.dart';
import 'package:deliv/user.dart';
import 'package:flutter/material.dart';

class Pertama extends StatefulWidget {
  const Pertama({super.key});

  @override
  State<Pertama> createState() => _PertamaState();
}

class _PertamaState extends State<Pertama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 100,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(image: AssetImage('assets/img/laundri.png'))
                ),                
              ),
            const Text('Aplikasi Laundry Kita merupakan aplikasi yang berguna baik itu dari sisi owner maupun sisi pelanggan. Dari sisi pelanggan akan mempermudah dalam mencari penyedia jasa layanan laundry yang ada disekitar. sedangkan dari owner aplikasi ini akan sangat membantu dalam mengelola usaha laundrynya seperti mengelola data pelanggan yang melakukan pesanan, jenis paket laundry yang tersedia. aplikasi ini juga akan membantu pemilik laundry dalam melihat riwayat pelanggan.',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 40, 10, 122),
            
            ),),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp(),),);}, child: Text('temukan laundry di sekitarmu',style: TextStyle(fontSize: 20),)),
            const SizedBox(height: 2,),
            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage(),),);}, child: Text('masuk ke laundrymu',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}