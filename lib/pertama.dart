import 'package:deliv/login.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Aplikasi Laundry Kita merupakan aplikasi yang berguna baik itu dari sisi owner maupun sisi pelanggan. Dari sisi pelanggan akan mempermudah dalam mencari penyedia jasa layanan laundry yang ada disekitar. sedangkan dari owner aplikasi ini akan sangat membantu dalam mengelola usaha laundrynya seperti mengelola data pelanggan yang melakukan pesanan, jenis paket laundry yang tersedia. aplikasi ini juga akan membantu pemilik laundry dalam melihat riwayat pelanggan.'),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage(),),);}, child: Text('masuk ke laundrymu'))
          ],
        ),
      ),
    );
  }
}