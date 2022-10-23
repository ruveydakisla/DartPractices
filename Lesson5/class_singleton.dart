import 'model/product_config_model.dart';

void main(List<String> args) {
  print(Product.price);

  Product.priceIncrement(50);
  print(Product.price);

  // User classını kullanarak product yapmak istiyorum.
  final user1 = User('ruveyda', 'çiçek');

  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);

  // Api key im neydi acaba
  ProductConfig.instance.apiKey;
  
}

void calculateMoney(int money) {
  if (money > 5) {
    print('5 ₺ daha ekledik');
    Product.priceIncrement(5);
    print(Product.price);
  }
}

void productNameChange() {
  Product.price = null;
}

class Product {
  static int? price = 50;
  static const conpanyName = 'VB Bank';
  String name;

  Product(this.name);

  Product.veli([this.name = 'veli']);
  factory Product.fromUser(User user) {
    // Geriye değer döndüren constructor istiyorsak factory kullanmalıyız
    return Product(user.name);
  }

  static priceIncrement(int newPrice) {
    if (price != null) {
      price = price! + newPrice;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
