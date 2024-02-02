class Student {
  String name;
  int id;
  List<String> courses;
  Student(
    this.name,
    this.id,
    this.courses,
  );
  void addCourse(String course) {
    courses.add(course);
    print("Course Added: ${course}.");
  }

  void dropCourse(String course) {
    courses.remove(course);
    print("Course Removed: ${course}.");
  }

  void displayCourses() {
    print("--- Student Info ---\nName: ${name}\nID: ${id}\nCourses: ${courses}\n--- --- --- ---");
  }
}
