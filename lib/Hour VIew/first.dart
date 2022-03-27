import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstHour extends StatefulWidget {
  const FirstHour({Key? key}) : super(key: key);

  @override
  State<FirstHour> createState() => _FirstHourState();
}

class _FirstHourState extends State<FirstHour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[700]),
        backgroundColor: const Color.fromRGBO(212, 240, 240, 100),
        title: Text(
          "1st Hour",
          style: TextStyle(color: Colors.grey[700]),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
