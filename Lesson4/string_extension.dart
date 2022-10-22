void main(List<String> args) {
  if ('ADMİN'.isAdmin()) {
    print('Welcome admin');
  } else {
    print('ali is not admin');
  }
  name.isAdmin();
}

String? name;

extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
