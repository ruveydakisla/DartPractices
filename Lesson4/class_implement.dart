abstract class Istudent {
  String name;
  int StudentNumber;
  Istudent(this.name, this.StudentNumber);
  void sayHello() {
    print('$name Helloo');
  }
}

class Student implements Istudent {
  @override
  int StudentNumber;

  @override
  String name;

  @override
  void sayHello() {
    // TODO: implement sayHello
  }
  Student(this.StudentNumber, this.name);
}
