void main(List<String> args) {
  final user = _User('Ruveyda', age: 20);

//müşterinin yaşı 18 den küçük kontrolü yapar mısın
  //if ((user.age ?? 0) < 18) {} --> null olabilir nu yüzden bu kontrolü yapmalıyız.

  if (user.age is int) {
    if (user.age! < 18) {
      print('18 den küçük');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithInt(20);
    }
  }

// kullanıcıların parası var ama paranın tipi değişken olabilir
//paranın tipi  string de olabilir değer de olabilir.
// tr veya 15 yazabilir;

  final _newType = user.moneyType is String ? (user.moneyType as String) : "";
  print(_newType + 'A');

  final moneyBank1 = Bank(40, '12');
  final moneyBank2 = Bank(50, '120');
  print(moneyBank1 + moneyBank2);
  //Bankada id si aynı olan müşteriler aynı kişi olmalıdır.
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  //Diğer bankadan bir modül aldık bunu ekleyip müşterinin parasını sorgula

  //müşteri adamın parasına 10tl ekle ekrana döndür,adamın id sini 1 artır sonrasında ismini değiştir.
  moneyBank1.money += 10;
  print(moneyBank1.money);
  moneyBank1
    ..money += 10
    ..updateName('Ruveyda');
}

class _User {
  final String name;
  int? age;
  dynamic moneyType;
  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithInt(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  void updateName(String name) {
    this.name = name;
  }

  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  //Constructor sız sınıf diyebiliriz.İnterface gibi.
  void sayBankHello();
  void calculateMoney(int money) {
    print(money);
  }
}
