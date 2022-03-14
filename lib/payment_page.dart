

import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Payment Page"),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
