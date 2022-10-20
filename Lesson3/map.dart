void main() {
  Map<String, int> users = {
    'Ruveyda': 20,
    'Ömer': 21,
    'Salih': 7,
    'Büşra': 25,
    'Mustafa': 18
  }; // Key :value

  // for (var item in users.values) {
  //   print(item);
  // }

  // for (int i = 0; i < users.length; i++) {
  //   print(users.values.elementAt(i));
  // }

  //Bir bankanın müşterilerinin birden fazla hesabı olabilir.
  

  Map<String, List<int>> Bank = {
    'Ruveyda': [100, 200, 300],
    'Salih': [20, 500],
    'Mustafa': [540, 740, 100, 550]
  };

  print(Bank);

}
