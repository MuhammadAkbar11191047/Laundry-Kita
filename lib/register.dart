import 'package:deliv/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 107, 176, 233),
      body: SingleChildScrollView( 

        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),

          child: Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 250,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(image: AssetImage('assets/img/laundri.png'))
                ),
                
              ),
              const SizedBox(height: 10,),
              const Text('Silahkan Registrasi', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
      
              const SizedBox(height: 40,),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 251, 251)),
                  ),
                  prefixIcon: Icon(Icons.person, size: 40, color: Colors.white,),
                  hintText: 'Masukan Username',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  labelText: 'username',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  prefixIcon: Icon(Icons.person, size: 40, color: Colors.white,),
                  hintText: 'Masukkan Email',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  prefixIcon: Icon(Icons.person, size: 40, color: Colors.white,),
                  hintText: 'Masukan Password',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  prefixIcon: Icon(Icons.person, size: 40, color: Colors.white,),
                  hintText: 'Masukkan Ulang Password anda',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  labelText: 'Konfirmasi Password',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
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
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: const Center(
                      child: Text('Register', style: TextStyle(fontSize: 20, color: Colors.white,),),
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