void main() {
  int customer1Money = 0;
  int customer2Money = 200;
  //isRich(customer1Money);
  //isRich(customer2Money);
  double customer3Money = 300.0;
  print(usdConverter(customer3Money));
}

void isRich(int money) {
  if (money > 0)
    print('Rich');
  else if (money <= 0) print('Poor');
}
//Biri parasını dolar yapmak istiyor.

double usdConverter(double money) {
  double USD = 18.59;
  return money / USD;
}

//Bunun daha güzel bir yolu daha var
double usdConverter2(double money, {double USD = 18.59}) { // Burada usd ye her seferinde yazmak yerine opsiyonel parametre kullandık
  return money / USD;
}

double usdConverter3(double money,{required double USD}) { // Burada ise bu methodu çağırırken USD ye değer atamalıyız. usdConverter3(USD:18.59) gibi
  
  return money / USD;
}