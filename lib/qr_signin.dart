import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Qr extends StatefulWidget {
  const Qr({Key? key}) : super(key: key);

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
    ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 160),
                  child: Icon (
                    Icons.account_circle,
                    size: 160,
                    color: Colors.white,
                  ),
                ),
                QrImage(
                  data: '1234567890',
                  //version: QrVersions.auto,
                  size: 200.0,
                ),
              ],
            ),
      );
  }
}
