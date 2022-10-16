// musteri bankaya gelir ve 10 tl si vardır ve sorgu yapar.
//eğer parası sorguya yeterli ise  sorgu sonucu 20 tl si alınacaktır
// Değilse kovulacaktır.
// Adamın parası banking cost a yetmiyorsa bankaya almayın
void main() {
  int newCustomerMoney = 30;
  const int bankingCost = 20;
  if (newCustomerMoney > 0) {
    if (newCustomerMoney > bankingCost) {
      print('Welcome to our bank');
      newCustomerMoney = newCustomerMoney - bankingCost;
    } else {
      print(
          'Your transaction could not be processed due to insufficient funds ');
    }
  } else {
    print('insufficient balance');
  }

  // bir bebeğe isim verilecek
  // ornek isimler toplanır : ali veli berk mahmut osman mustafa han murat
  // anne baba karakter uzunluğu 4 veya daha fazla olanları gormek istiyor.

  String isim1 = 'ali\n';
  String isim2 = 'veli\n';
  String isim4 = 'salih\n';
  String isim3 = 'berk\n';
  String isim5 = 'osman\n';
  String isim6 = 'han\n';
  String isim7 = 'mustafa\n';
  String results = ''+'';
  if (isim1.length >= 4) {
    results = results + isim1;
  }
  if (isim2.length >= 4) {
    results = results + isim2;
  }

  if (isim3.length >= 4) {
    results = results + isim3;
  }

  if (isim4.length >= 4) {
    results = results + isim4;
  }

  if (isim5.length >= 4) {
    results = results + isim5;
  }
  if (isim6.length >= 4) {
    results = results + isim6;
  }

  if (isim7.length >= 4) {
    results = results + isim7;
  }
  print(results);
}
