
//Bir user classı oluşturalım
//adu olmak zorunda
// parası olmak zorunda
//Yaşı olmayabilir
//memleket olmayabilir
class User {

  late final String name;
  late  int money;
  late final int? age;
  late final String? city;
  late final String _id;
  late final String user_code;
  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    user_code = (city ?? 'ist') + name;
  }

  bool isSpecialUser(String id) {
    return id == _id;
  }
  bool get isEmptyId =>_id.isEmpty; // Her çağırıldığında hesaplanıyor.
}
