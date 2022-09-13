import 'package:deliv/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
 
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          color: Color.fromARGB(255, 94, 117, 245),
          child: Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.black87,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(Icons.person, size: 50, color: Colors.white,),
                ),
              ),
              const SizedBox(height: 10,),
              const Text('Welcome To Laundry Kita', style: TextStyle(fontSize: 20,color: Colors.black54),),
      
              const SizedBox(height: 40,),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  prefixIcon: Icon(Icons.person, size: 40,),
                  hintText: 'Masukan Username',
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: 'username',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  prefixIcon: Icon(Icons.person, size: 40,),
                  hintText: 'Masukan Password',
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 20,),
      
              Card(
                color: Colors.blue,
                elevation: 5,
                child: Container(
                  height: 50,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: const Center(
                      child: Text('Login', style: TextStyle(fontSize: 20, color: Colors.white,),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}