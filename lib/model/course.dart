class Course {
  final String title;
  final String description;

  Course({this.title, this.description});

  factory Course.fromJson(Map<String, dynamic> map) {
    return Course(
      title: map["title"],
      description: map["description"],
    );
  }
}
