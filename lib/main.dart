import 'package:flutter/material.dart';
import 'package:mybank/http/webclient.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(const MyBankApp());
  findAll().then((transactions) => print('new transactions $transactions'));
}

class MyBankApp extends StatelessWidget {
  const MyBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(
          secondary: Colors.tealAccent[900],
        ),
      ),
      home: const Dashboard(),
    );
  }
}
