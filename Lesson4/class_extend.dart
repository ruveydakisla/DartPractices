void main(List<String> args) {
  final user1 = BankUser('Ruveyda', 450, 12345);
  final user2 = User('Beste', 126);

  final user3 = SpecialUser('Ayşe', 150, 152, 15);
  user1.sayMoneyWithCompanyName();
  user2.sayMoneyWithCompanyName();
  print(user3.calculateMoney);
}

abstract class IUser {
  final String name;
  final int money;
  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('$name-$money paranız vardır');
  }
}

class User extends IUser {
  User(String name, int money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;
  BankUser(String name, int money, this.bankingCode) : super(name, money);
}

class SpecialUser extends IUser {
  final int bankingCode;
  late final int _discount;
  SpecialUser(String name, int money, this.bankingCode, int discount)
      : super(name, money) {
    _discount = discount;
  }

  int get calculateMoney => money - (money ~/ _discount);
}


//Extend ile implement arasıdnaki fark 
//implementte(override edebiliriz) birebir aynı oluyor sınıflar extend de farklı olabilir