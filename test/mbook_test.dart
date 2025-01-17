import 'package:flutter_test/flutter_test.dart';
import 'package:mbook/mbook/book.dart';

import 'package:mbook/mbook/mbook.dart';

import 'mbook_test.reflectable.dart';

void main() {
  initializeReflectable();

  test('save list of savable objects or simple objects', () async {
    Test t = Test();
    t.name = "secondTest";
    Book b =MBook.book("myBook2");
    var list = [];
    list.add(t);
    list.add(t);
    list.add(t);
    list.add(t);
    await b.write<List>("lsit_paper", list);
  });
}
@savable
class Test {
  Test();

  String name = "";
  int id = 0;
  bool isHuman = true;
  bool isAnimal = false;
  double weight = 1.55;
  num nb = 1.55;
  num nb2 = 1;

  @override
  String toString() {
    return 'Test{name: $name, id: $id, isHuman: $isHuman, isAnimal: $isAnimal, weight: $weight, nb: $nb, nb2: $nb2}';
  }
}