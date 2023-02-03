import 'package:flutter/material.dart';
import 'basket.dart';

class PaymentRoute extends StatefulWidget {
  const PaymentRoute({super.key});

  @override
  State<PaymentRoute> createState() => _PaymentRouteState();
}

/*class _PaymentRouteState extends State<PaymentRoute> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}*/

class _PaymentRouteState extends State<PaymentRoute> {
  dynamic _selectedPaymentOption;
  //const PaymentRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text('Checkout'),
        ),
      ),
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(15.0),
            width: 450.0,
            height: 125.0,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //------------------------------PASSENGER DETAILS

                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(15.0),
                    child: RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.edit_note,
                            size: 23.5,
                            color: Colors.lightGreen[600],
                          ),
                        ),
                        const TextSpan(
                            text: 'Passenger details',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ]),
                    )),

                SizedBox(
                  width: 100,
                  height: 20,
                  child: TextField(
                    onChanged: (value) {},
                    style: TextStyle(fontSize: 12),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Seat number',
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 100,
                  height: 20,
                  child: TextField(
                    onChanged: (value) {},
                    style: TextStyle(fontSize: 12),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Name',
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 5),

          //------------------------------PAYMENT METHOD
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.all(15.0),
            width: 450.0,
            height: 220.0,
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
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(15.0),
                    child: RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.wallet,
                            size: 23.5,
                            color: Colors.lightGreen[600],
                          ),
                        ),
                        const TextSpan(
                            text: 'Payment method',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ]),
                    )),

                //SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RadioListTile(
                        value: "Credit/Debit Card",
                        title: Text("Credit/Debit Card"),
                        groupValue: _selectedPaymentOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedPaymentOption = value;
                          });
                        },
                      ),
                      RadioListTile(
                        value: "Net Banking",
                        title: Text("Net Banking"),
                        groupValue: _selectedPaymentOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedPaymentOption = value;
                          });
                        },
                      ),
                      RadioListTile(
                        value: "Paytm Wallet",
                        title: Text("Paytm Wallet"),
                        groupValue: _selectedPaymentOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedPaymentOption = value;
                          });
                        },
                      ),
                      /*const SizedBox(
                        height: 16.0,
                      ),*/
                      /*ElevatedButton(
                        child: Text('Proceed to pay'),
                          onPressed: () {
                            if (_selectedPaymentOption == null) {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Error!'),
                                      content: const Text(
                                          'Please select a payment option.'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Ok'))
                                      ],
                                    );
                                  },
                                  );
                            }else {
                            Navigator.of(context).pop(_selectedPaymentOption);
                          }
                          },
                          
                         // child: Text('Proceed to pay'),
                         ),*/
                    ],
                  ),
                ),
              ],
            ),
          ),

          //------------------------------ORDER SUMMARY
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.all(15.0),
            width: 450.0,
            height: 150.0,
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
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(15.0),
                    child: RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.receipt_long_outlined,
                            size: 23.5,
                            color: Colors.lightGreen[600],
                          ),
                        ),
                        const TextSpan(
                            text: 'Order summary',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ]),
                    )),

                // SizedBox(height: 10),

                const SizedBox(
                    width: 400,
                    height: 20,
                    child: Text(
                      '2x Keropok Nipis',
                      textAlign: TextAlign.left,
                    )),

                const SizedBox(
                    width: 400,
                    child: Text(
                      'Subtotal',
                      textAlign: TextAlign.left,
                    )),

                const SizedBox(
                    width: 400,
                    child: Text(
                      'Delivery fee',
                      textAlign: TextAlign.left,
                    )),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: ((context) => AlertDialog(
                            title: const Text('Payment has been made!'),
                            content:
                                const Text('Your order will arrive shortly'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: Text('OK'),
                              ),
                            ],
                          )),
                    );
                  },
                  child: const Text('Pay'),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
