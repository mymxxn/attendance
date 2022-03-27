import 'package:alazhar/firebase/data.dart';
import 'package:flutter/cupertino.dart';

class DatasProvider extends ChangeNotifier {
  List<Students> student = [
    Students(name: "hi", rollno: 5, department: "bkn", sem: 5)
  ];
  // void addstudent(datas)
}
