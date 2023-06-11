import 'package:flutter/material.dart';


class FoodProvider extends ChangeNotifier {
  List<String> foods = ['Beans', 'Rice', 'Yam', 'Egg', 'Spaghetti'];

  void addtofood(String food) {
    foods.add(food);
    notifyListeners();
  }
}
