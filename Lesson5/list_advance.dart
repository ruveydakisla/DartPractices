void main(List<String> args) {
  final model = CarModel(
      category: CarModels.bmw, name: 'ali', money: 852000, isSecondHand: false);

  final carItems = {
    CarModel(
        category: CarModels.bmw,
        name: 'ali',
        money: 852000,
        isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'mehmet', money: 897000),
    CarModel(
        category: CarModels.yamaha,
        name: 'can',
        money: 652000,
        isSecondHand: false),
    CarModel(category: CarModels.bmw, name: 'ayşe', money: 350000),
    CarModel(
        category: CarModels.toyota,
        name: 'nur',
        money: 869000,
        isSecondHand: false),
  };

  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;

  print(resultCount);

  final newCar = CarModel(
      category: CarModels.toyota,
      name: 'nur',
      money: 869000,
      isSecondHand: false);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('bizde var');
  } else {
    print('Elimizde yok');
  }

  final resultBmwMore5k = carItems
      .where((element) =>
          element.category == CarModels.bmw && element.money > 500000)
      .join();

  print(resultBmwMore5k);

  final carName = carItems.map((e) => e.name).join(',');
  print(carName);

  try {
    // data olmadığından crash yeriz bu yüzden try catch de yazdık.
    final mercedesCAr = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
  } catch (e) {
    print('Araba yok abi');
  } finally {
    print('bu işlemi bir daha sorma');
  }

  carItems.add(
      CarModel(category: CarModels.mercedes, name: 'Sedat ', money: 450000));

  // carItems.sort((first, second) => first.money.compareTo(first.money));

  carItems.removeWhere((element) => element.category == CarModels.yamaha);
}

//Benim arabalar sınıfım olacak
//arabaların modeli ismi,parası kesin olacak ,şehri olmayacak
// ikinci el durumu müşteri söylemezse kabul edilecek

// Benim 5 arabam olsun

//Bu arabaların kaç tanesi ikinci el

//Yeni bir araba geldi bu bizde var mı

// bana bmw olan ve money i 500000 den büyük arabalarımızın ismini söyler misin

//İsimleri yan yana gösterir misin

// benim elimde mercedes var mı

// Yenş araba ekler misin

// Arabaları küçükten büyüğe sıralar mısın

// Arabalardan yamaha olanı sil
class CarModel {
  final CarModels category;
  final String name;
  final int money;
  String? city;
  bool isSecondHand;

  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
