void main() {
  Map<String, int> users = {
    'Ruveyda': 20,
    'Ömer': 21,
    'Salih': 7,
    'Büşra': 25,
    'Mustafa': 18
  }; // Key :value

  for (var item in users.values) {
    print(item);
  }

  for (int i = 0; i < users.length; i++) {
    print(users.values.elementAt(i));
  }

  //Bir bankanın müşterilerinin birden fazla hesabı olabilir.

  Map<String, List<int>> Bank = {
    'Ruveyda': [100, 200, 300, 1000],
    'Salih': [20, 500],
    'Mustafa': [0, 740, 100, 50]
  };

  print(Bank);
  Bank['Ayşe'] = [10, 500, 440];
  print(Bank);
  for (var item in Bank.keys) {
    for (var money in Bank[item]!) {
      if (money > 500) print('krediniz hazır $item');
    }
  }

//Müşterilerin hesaplarındaki toplam parayı bulalım.
//Bank[item]! --> musterinin hesapları
  for (var item in Bank.keys) {
    int toplam = 0;
    for (var money in Bank[item]!) {
      toplam+=money;

    }
    print('Toplam paranız $toplam sayın $item ');
  }
}
