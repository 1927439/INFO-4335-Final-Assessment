import 'package:flutter/material.dart';
import 'home.dart';

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const TepungPelita(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class TepungPelita extends StatelessWidget {
  const TepungPelita({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF7CB342),
          centerTitle: true,
          title: Text(''),),
      body: Center(
        child: Column(
          children: [
            /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.lightGreen,
                  onPressed: () {},
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.lightGreen,
                  onPressed: () {},
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),*/
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: ((context) => AlertDialog(
                        title: const Text('Your item has been added!'),
                        content: const Text(
                            'Check your items in the cart before making payment.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: Text('OK'),
                          ),
                        ],
                      )),
                );
              },
              child: const Text('Add to cart'),
            ),
          ],
        ),
      ),
    );
  }
}
