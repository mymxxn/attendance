import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthHour extends StatefulWidget {
  const FourthHour({ Key? key }) : super(key: key);

  @override
  State<FourthHour> createState() => _FourthHourState();
}

class _FourthHourState extends State<FourthHour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[700]),
        backgroundColor: Color.fromRGBO(182, 207, 182, 100),
        title: Text(
          "4th Hour",
          style: TextStyle(color: Colors.grey[700]),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}