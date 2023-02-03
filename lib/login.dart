import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'home.dart';
import 'order.dart';
import 'main.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final _auth = FirebaseAuth.instance;

  String email = '';
  String trainNum = '';
  String seatNum = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(250.0),
            child: AppBar(
              elevation: 10,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/trainlogo4.png'),
                  scale: 2.5,
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
              )),
              centerTitle: true,
              backgroundColor: Colors.lightGreen[600],
            ),
          ),
          body: Center(
            child: Container(
                height: 270.0,
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      height: 60,
                      child: TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        style: TextStyle(fontSize: 12),
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 60,
                      child: TextField(
                        onChanged: (value) {
                          trainNum = value;
                        },
                        style: TextStyle(fontSize: 12),
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          labelText: 'Train Number',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 80,
                      child: TextField(
                        onChanged: (value) {
                          seatNum = value;
                        },
                        style: TextStyle(fontSize: 12),
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          labelText: 'Seat Number',
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 30),
                        //alignment: Alignment(0, 0),
                        primary: Colors.lightGreen,
                        shadowColor: Colors.green,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: const Text('Login'),
                      onPressed: () async {
                        try {
                          final user = _auth.signInWithEmailAndPassword(
                              email: email, password: password);

                          if (user != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomeRoute();
                                },
                              ),
                            );
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                    ),
                  ],
                )),
          ),
          backgroundColor: Colors.white,
        ));
  }
}
