import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdHour extends StatefulWidget {
  const ThirdHour({ Key? key }) : super(key: key);

  @override
  State<ThirdHour> createState() => _ThirdHourState();
}

class _ThirdHourState extends State<ThirdHour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[700]),
        backgroundColor: Color.fromRGBO(204, 226, 203, 100),
        title: Text(
          "3rd Hour",
          style: TextStyle(color: Colors.grey[700]),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}