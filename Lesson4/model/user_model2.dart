class User2 {
  final String name;
  int _money;
  int get money => _money;
  set money(int? money) {
    _money = money == null ? _money = 0 : _money = money;
  }

  final int? age;
  final String? city;
  late final String userCode;
  User2(this.name, this._money, {this.age, this.city}) {
    userCode = (city ?? 'ist') + name;
  }
}
