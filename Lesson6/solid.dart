void main(List<String> args) {
  Idatabase database = SQL();

  database = Mongo();
  database.write();
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager mnager;
  UserLocalization(this.mnager);
  void updateNameAndLocalization() {
    mnager.changeUserName('name');
  }

  void changeLocalization() {
    print('object');
  }
}

//Open-Close

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);
  final String category = "asd";
}

//Liskov

abstract class Idatabase {
  void write();
}

class SQL extends Idatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class Mongo extends Idatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

//

abstract class IUserOperation with IUserLocation, Ilanguage, IRead {
  void write();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class Ilanguage {
  void language();
}

abstract class IRead {
  void Iread();
}

//

abstract class ICameraManager {
  void readQR();
}

class IphoneCamereReader extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCamereReader iphoneCamereReader;

  DeviceCameraManager(this.iphoneCamereReader);

  @override
  void readQR() {
    // TODO: implement readQR
  }
}
