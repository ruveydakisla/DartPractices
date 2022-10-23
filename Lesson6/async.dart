Future<void> main(List<String> args) async {
  // 5 sn bekle sonra hello yaz

  // Future.delayed(Duration(seconds: 5)).whenComplete(() => print('hello'));

  // await Future.forEach([1, 2, 3, 4, 5], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('Bu işlem bitti');
  // });

  // await Future.delayed(Duration(seconds: 2));
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(15, 3);
  bankMoneys.listen((event) {
    print(event);
  });

  print('ab');
  Future.delayed(Duration(seconds: 0)).whenComplete(() {
    print('Hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 0)).whenComplete(() {
    print('Hello4');
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
  }
}
