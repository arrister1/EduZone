import 'package:final_submission/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:final_submission/styling/button_style.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25.0, top: 4.0, bottom: 4.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //SizedBox(height: 30.0),
                  Image.asset('images/welcome.png', width: 400),
                  const Text(
                    'Hi! Welcome to EduZone',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 99, 117)),
                  ),
                  SizedBox(height: 8.0),
                  const Text(
                    'Sekarang, Kamu Bisa Eksplorasi Materi Apapun yang Kamu Mau Hanya dengan Sekali Klik.',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  SizedBox(height: 16.0),
                  const Text(
                    'Sebelum lanjut, Kenalan dulu yuk!',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10.0),
                  SizedBox(
                    width: 330,
                    child: TextField(
                      controller: _name,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 170, 180),
                          enabledBorder: inputborder(),
                          focusedBorder: inputborder(),
                          labelText: 'Nama kamu',
                          hintText: 'Wagiman',
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  SizedBox(
                    width: 330,
                    child: TextField(
                      controller: _email,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 170, 180),
                          enabledBorder: inputborder(),
                          focusedBorder: inputborder(),
                          labelText: 'Email',
                          hintText: 'example@email.com',
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  ElevatedButton(
                      style: buttonWelcome,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                HomeScreen(name: _name.text)));
                      },
                      child: const Text('Mulai Jelajahi!')),
                ]),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder inputborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Colors.black,
        width: 1,
      ));
}
