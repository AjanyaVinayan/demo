import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: MobileScanner(
        onDetect:(barcodes) {},
      ),
    );
  }
}
