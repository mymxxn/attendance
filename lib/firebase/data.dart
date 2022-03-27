// class StudentDatas{
//   static
// }
class Students {
  String name;
  dynamic rollno;
  String department;
  dynamic sem;
  Students(
      {required this.name,
      required this.rollno,
      required this.department,
      required this.sem});
  static Students fromJson(Map<dynamic, dynamic> json) => Students(
      name: json['name'],
      rollno: json['rollno'],
      department: json['department'],
      sem: json['sem']);
  Map<String, dynamic> toJson() => {
        "Studentname": name,
        "Studentroll": rollno,
        "Studentdep": department,
        "Studentsem": sem
      };
}
