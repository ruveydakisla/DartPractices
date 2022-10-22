void main(List<String> args) {
  final customerMouse = Mouses.a4;
  print(customerMouse.index);

  switch (customerMouse) {
    case Mouses.apple:
      break;
    case Mouses.logitech:
      break;
    case Mouses.a4:
      break;
    case Mouses.magic:
      break;
  }
}

enum Mouses { apple, logitech, a4, magic }
