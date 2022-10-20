void main(List<String> args) {
  List<int> moneys = [200, 120, 500, 1000];
  final List<int> numbers = [1, 2, 3];
  //print(moneys[2]);
  //print(moneys);
  moneys.sort(); //Küçükten büyüğe sıraladı.
  //print(moneys);
  moneys.add(350);
  //print(moneys);
  moneys.insert(2, 300); //3.indisine 300 ekle
  //print(moneys);
  //print(numbers);
  numbers.insert(0,
      0); //final olan listeye eleman ekleyebiliyoruz.Burada 1. indise 0 ekledik.
  //print(numbers);
  numbers.clear(); //listeyi temizledi
  //print(numbers);
  List<int> customerMoney = List.generate(100, (index) {
    return index * index;
  });
  //print(customerMoney);

//Customers 100 30 40 60
//35 tl den büyük olanlara burada kredi verebilirz yaz
//küçük olanlara üzgünüz yaz

  List<int> customer = [100, 30, 40, 60];

  for (int i = 0; i < customer.length; i++) {
    if (customer[i] < 35)
      print('Üzgünüz...');
    else if (customer[i] >= 35) print('Kredi alabilirsiniz');
  }
}
