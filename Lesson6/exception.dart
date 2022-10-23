void main(List<String> args) {
  String userName = "sdjfdsfn";

  if (userName.length > 2) {
    print("uzun isim");
  } else {
    throw UserNameException();
  }
}

class UserNameException implements Exception {
  @override
  String toString() {
    // TODO: implement toString
    return 'user name null girmişsin bunu düzelt';
  }
}
