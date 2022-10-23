void main(List<String> args) {
  final user1 = English('Walter');
  final user2 = Turk('Ali');

  user1.SayHello();
  user2.SayHello();
}

abstract class IUser {
  late String name;
  void SayHello();
}

class English implements IUser {
  @override
  String name;
  English(this.name);
  @override
  void SayHello() {
    print('Hello $name');
  }
}

class Turk implements IUser {
  @override
  String name;
  Turk(this.name);
  @override
  void SayHello() {
    print('Merhaba $name');
  }
}
