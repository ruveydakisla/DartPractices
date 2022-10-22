import 'model/user_model.dart';
import 'model/user_model2.dart';

void main(List<String> args) {
  User user1 = User('Ruveyda', 450, age: 20, city: 'Isparta', id: '123');
  print(user1.age);
  User2 user2 = User2('Ali', 500);
  user2.money = null;
  print(user2.money);

  //id si 123 olana 50 lira ekle

  if (user1.isSpecialUser('123')) {
    user1.money += 50;
    print('Tebrikler 50 lira kazandınız');
  }
  print(user1.toString());
}
