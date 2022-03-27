import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondHour extends StatefulWidget {
  const SecondHour({ Key? key }) : super(key: key);

  @override
  State<SecondHour> createState() => _SecondHourState();
}

class _SecondHourState extends State<SecondHour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[700]),
        backgroundColor: Color.fromRGBO(143, 202, 202, 100),
        title: Text(
          "2nd Hour",
          style: TextStyle(color: Colors.grey[700]),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}