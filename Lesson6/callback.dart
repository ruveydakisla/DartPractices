void main(List<String> args) {
  final user = User(money: 5);
  user.calculateMoney((int result) {
    print(user.money);
  });
}

class User {
  int money;
  User({required this.money});

  void calculateMoney(void Function(int data) onComplete) {
    money += 5;
    onComplete(money);
  }
}
