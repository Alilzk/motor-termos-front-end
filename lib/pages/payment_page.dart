import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Main User Page")),
    );
  }
}
