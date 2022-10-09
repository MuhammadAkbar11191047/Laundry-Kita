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
      backgroundColor: Color.fromARGB(255, 90, 175, 245),
      body: SingleChildScrollView(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 150,
                height: 250,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(image: AssetImage('assets/img/laundri.png'))
                ),                
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 107, 176, 233),
                
                height: 250,
                child: Text('Aplikasi Laundry Kita merupakan aplikasi yang berguna baik itu dari sisi owner maupun sisi pelanggan. Dari sisi pelanggan akan mempermudah dalam mencari penyedia jasa layanan laundry yang ada disekitar. sedangkan dari owner aplikasi ini akan sangat membantu dalam mengelola usaha laundrynya seperti mengelola data pelanggan yang melakukan pesanan, jenis paket laundry yang tersedia. aplikasi ini juga akan membantu pemilik laundry dalam melihat riwayat pelanggan.', 
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold, fontFamily: "MAIAN" ), ),
              ),

            Card(
                color: Colors.blue,
                elevation: 5,
                child: Container(
                  width: 280,
                  height: 50,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GoogleMapSample(),
                        ),
                      );
                    },
                    child: const Center(
                      child: Text('Temukan Laundry Disekitarmu', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                elevation: 5,
                child: Container(
                  width: 250,
                  height: 50,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: const Center(
                      child: Text('masuk ke laundrymu', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}