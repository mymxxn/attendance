import 'package:alazhar/firebase/data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  static Future<String> addStudent(Students student) async {
    final datastu = FirebaseFirestore.instance.collection("Students").doc();
    student.name = datastu.id;
    await datastu.set(student.toJson());
    return datastu.id;
  }
}
