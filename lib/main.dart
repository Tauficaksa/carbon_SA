import 'package:flutter/material.dart';

void main() {
  runApp(const Tauficaksa());
}

class Tauficaksa extends StatelessWidget {
  const Tauficaksa({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("bismillha"),
        ),
      ),
    );
  }
}