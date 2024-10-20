import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jorden',
        description: '',
        imagePath: 'lib/images/1.jpg',
        price: '220'),
    Shoe(
        name: 'Zoom FREAK',
        description: 'The forward-thinking design of his last signature shoe',
        imagePath: 'lib/images/2.jpg',
        price: '236'),
    Shoe(
        name: 'KD Treys',
        description: '',
        imagePath: 'lib/images/3.jpg',
        price: '240'),
    Shoe(
        name: 'Kyrie 6',
        description: '',
        imagePath: 'lib/images/4.jpg',
        price: '190')
  ];
  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  void addItemInCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  getUserCart() {
    return userCart;
  }
}
