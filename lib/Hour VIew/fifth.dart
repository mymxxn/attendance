import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FifthHour extends StatefulWidget {
  const FifthHour({ Key? key }) : super(key: key);

  @override
  State<FifthHour> createState() => _FifthHourState();
}

class _FifthHourState extends State<FifthHour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[700]),
        backgroundColor: Color.fromRGBO(151, 193, 169, 100),
        title: Text(
          "5th Hour",
          style: TextStyle(color: Colors.grey[700]),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}