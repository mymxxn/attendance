import 'package:alazhar/firebase/data.dart';
import 'package:alazhar/firebase/firebaseapi.dart';
import 'package:alazhar/provider/datas.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:alazhar/provider/datas.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final _formkey = GlobalKey<FormState>();
  String name = "";
  dynamic rollno;
  String department = "";
  dynamic sem;
  // addstudent() {
  //   DocumentReference documentReference =
  //       FirebaseFirestore.instance.collection("Students").doc(name);

  //   documentReference
  //       .set(student)
  //       .whenComplete(() => print("Data Stored Successfully"));
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {
            // addstudent(students);
          },
          // {
          //   // setState(() {
          //   //   addstudent();
          //   // });
          // },
          child: Text(
            "ADD",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey[700]),
          title: Text(
            "Add",
            style: TextStyle(color: Colors.grey[700]),
          ),
          backgroundColor: Color.fromRGBO(143, 202, 202, 100),
        ),
        body: Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textfields("Name"),
                    textfields("Roll No."),
                    textfields("Department"),
                    textfields("Sem"),
                  ]),
            )));
  }

  // void addstudent() {
  //   final isValid = _formkey.currentState!.validate();
  //   if (!isValid) {
  //     return;
  //   } else {
  //     final datas = Students(
  //         name: name, rollno: rollno, department: department, sem: sem);
  //     final provider = Provider.of<DatasProvider>(context, listen: false);
  //     provider.addstudent(datas);
  //   }
  // }
}

Widget textfields(title) => TextFormField(
      validator: (value) {
        if (value == null) {
          return ' Enter';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          labelText: title,
          labelStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      style: TextStyle(color: Colors.grey[700], fontSize: 15),
      cursorColor: Colors.black,
    );
