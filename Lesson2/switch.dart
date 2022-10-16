void main(List<String> args) {
  final classDegree = 10;

  //0 ise sınıfta kaldı
  //1 ise başarısız
  //2 ise başarılı
  //3 ise çok başarılı
  //4 ise Adamsın   yazdırsın

  switch (classDegree) {
    case 0:
      print('Sınıfta kaldın');
      break;

    case 1:
      print('Başarısız');
      break;

    case 2:
      print('başarılı');
      break;

    case 3:
      print('çok başarılı');
      break;

    case 4:
      print('Adamsın vesselam');
      break;

    default:
      print('$classDegree çok büyük ortalama yanlış hesaplanmış olabilir.');
  }

  //Mağazaya gelen isimlerden biri ruveyda ise hoşgeldiniz yaz

  String musteri = 'Salih';
  switch (musteri) {
    case 'Ruveyda':
    case 'Salih':
      print('$musteri hoşgeldin  <3  <3  <3');
      break;
    default:
      print('Kapalıyız');
  }
}
