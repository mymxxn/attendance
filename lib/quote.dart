import 'package:alazhar/add.dart';
import 'package:alazhar/attendance.dart';
import 'package:alazhar/login.dart';
import 'package:alazhar/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Quotepage extends StatefulWidget {
  const Quotepage({Key? key}) : super(key: key);

  @override
  State<Quotepage> createState() => _QuotepageState();
}

class _QuotepageState extends State<Quotepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Cheer Up!! \nOnly you can \nmake those students \nmore incredible.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Add()));
                },
                child: Text(
                  "ADD",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.black),
              ),
              Container(
                width: 63,
                height: 34,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Colors.black,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AttendanceHour()));
                  },
                  icon: Icon(
                    Icons.people_outline_sharp,
                    size: 22,
                    color: Colors.white,
                  ),
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ViewStudents()));
                },
                child: Text("VIEW", style: TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(backgroundColor: Colors.black),
              ),
              Container(
                width: 63,
                height: 34,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Colors.black,
                ),
                child: IconButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.remove("username");
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  icon: Icon(
                    Icons.logout_outlined,
                    color: Colors.white ,
                  ),
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
