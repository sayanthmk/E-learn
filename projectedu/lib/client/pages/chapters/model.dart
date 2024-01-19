class StudentModel {
  final String heading;
  final String selectimage;
  StudentModel({
    required this.heading,
    required this.selectimage,
  });
  static StudentModel fromMap(Map<String, Object?> map) {
    final heading = map['heading'] as String;
    final selectimage = map['image'] as String;
    return StudentModel(heading: heading, selectimage: selectimage);
  }
}
