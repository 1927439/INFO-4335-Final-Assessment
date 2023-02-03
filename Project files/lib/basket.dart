import 'package:flutter/material.dart';
import 'package:my_project/payment.dart';
import 'home.dart';
import 'order.dart';

class BasketRoute extends StatefulWidget {
  const BasketRoute({super.key});

  @override
  State<BasketRoute> createState() => _BasketRouteState();
}

class _BasketRouteState extends State<BasketRoute> {
  int _counter = 0;
  double _keropoknipis = 0.00;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementItem() {
    setState(() {
      _keropoknipis += 9;
    });
  }

  void _decrementItem() {
    setState(() {
      _keropoknipis -= 9;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xFF7CB342),
          centerTitle: true,
          title: Text('Basket'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15.0),
              height: 500.0,
              width: 500.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                  )
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //FAB,Image,Food name, Price
                  Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: FloatingActionButton(
                            backgroundColor: Colors.lightGreen,
                            onPressed: () {
                              _decrementCounter();
                              _decrementItem();
                            },
                            tooltip: 'Decrement',
                            child: const Icon(Icons.remove),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          child: Text('$_counter', textAlign: TextAlign.center,),
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: FloatingActionButton(
                            backgroundColor: Colors.lightGreen,
                            onPressed: () {
                              _incrementCounter();
                              _incrementItem();
                            },
                            tooltip: 'Increment',
                            child: const Icon(Icons.add),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 100,
                          child: Image.asset('images/KeropokNipis.png',
                              alignment: Alignment.center,
                              scale: 0.5,
                              fit: BoxFit.contain),
                        ),
                        const SizedBox(
                            width: 100,
                            child: Text(
                              'Keropok Nipis',
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(
                            width: 50,
                            child: Text(
                              'RM',
                              textAlign: TextAlign.center,
                            )),
                        Text('$_keropoknipis'),
                      ],
                    ),
                  ),
                ],
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
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return PaymentRoute();
                    }),
                  );
                },
                child: Text('Proceed to pay'))
          ],
        ),
      ),
    );
  }
}
