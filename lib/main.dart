import 'package:flutter/material.dart';
import 'package:qr_app/qr_signin.dart';
import 'login.dart';
import 'package:qr_app/registration.dart';
import 'package:qr_app/registration.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Login()
     // home: Reg(),
     // home: Qr(),
    );
  }
}
