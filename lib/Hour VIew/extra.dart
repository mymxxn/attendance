import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtraHour extends StatefulWidget {
  const ExtraHour({Key? key}) : super(key: key);

  @override
  State<ExtraHour> createState() => _ExtraHourState();
}

class _ExtraHourState extends State<ExtraHour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[700]),
        backgroundColor: Color.fromRGBO(162, 225, 219, 100),
        title: Text(
          "Extra Hour",
          style: TextStyle(color: Colors.grey[700]),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
