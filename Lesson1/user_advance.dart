//Benim bir halısaham var 100 kişi kapasiteli
//saat 10 da musteri1  kesin 20 kişilik maç yapacak
// saat 10 da musteri2 50 kisilik yer ayırtacak
// bu işlem sonunda ne kadar kapasitem kalmıştır
void main() {
  int haliSahaKapasitesi = 100;
  final musteri1Maci = 20;
  int musteri2Maci = 50;
  int Kapasite = haliSahaKapasitesi - musteri1Maci - musteri2Maci;
  print('Kalan Kapasite:$Kapasite');
}
