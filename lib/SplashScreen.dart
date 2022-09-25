import 'dart:async';
import 'package:deliv/login.dart';
import 'package:flutter/material.dart';
import 'package:deliv/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override 
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
    } );
  }
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/laundri.png',
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ), 
            const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            
          ],
        ),
      )
    );
  }
}