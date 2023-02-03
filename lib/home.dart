import 'package:flutter/material.dart';
import 'package:my_project/basket.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'order.dart';
import 'login.dart';
import 'main.dart';
import 'basket.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser!;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  static const List<Widget> _widgetOptions = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //void Page1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xFF7CB342),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/food2.png'),
                    fit: BoxFit.fitWidth)),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Pick your favorites!'),
            const SizedBox(width: 80, height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const TepungPelita();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      //alignment: Alignment(0, 0),
                      primary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Image.asset('images/KeropokNipis.png',
                        fit: BoxFit.contain)),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const TepungPelita();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      //alignment: Alignment(0, 0),
                      primary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Image.asset('images/KeropokTebal.png',
                        fit: BoxFit.contain)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      //alignment: Alignment(0, 0),
                      primary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Image.asset('images/NasiLemak.png',
                        fit: BoxFit.contain)),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const TepungPelita();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      //alignment: Alignment(0, 0),
                      primary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child:
                        Image.asset('images/Popia.png', fit: BoxFit.contain)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const TepungPelita();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      //alignment: Alignment(0, 0),
                      primary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child:
                        Image.asset('images/Pulut.png', fit: BoxFit.contain)),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const TepungPelita();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      //alignment: Alignment(0, 0),
                      primary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Image.asset('images/Teh.png', fit: BoxFit.contain)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const TepungPelita();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      //alignment: Alignment(0, 0),
                      primary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Image.asset('images/TehO.png', fit: BoxFit.contain)),
                const SizedBox(width: 10),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const TepungPelita();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      //alignment: Alignment(0, 0),
                      primary: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Image.asset('images/TepungPelita.png',
                        fit: BoxFit.contain)),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Basket',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen[600],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeRoute();
                }),
              );
              break;

            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return BasketRoute();
                }),
              );
              break;
          }
        },
      ),
    );
  }
}
