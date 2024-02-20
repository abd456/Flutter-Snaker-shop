import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air max - Red',
        price: '240',
        imagePath: 'lib/images/shoe8.png',
        description: 'number one shoe in the whole wide world'),
    Shoe(
        name: 'Zoom FREAK',
        price: '119',
        imagePath: 'lib/images/shoe13.png',
        description: 'number one shoe in the whole wide world'),
    Shoe(
        name: 'Air Force',
        price: '236',
        imagePath: 'lib/images/shoe14.png',
        description: 'number one shoe in the whole wide world'),
    Shoe(
        name: 'Puma Nitro',
        price: '149',
        imagePath: 'lib/images/nitro.webp',
        description: 'number one shoe in the whole wide world'),

    // Shoe(
    //     name: 'Puma Nitro',
    //     price: '240',
    //     imagePath: 'lib/images/shoe8.png',
    //     description:
    //         'The foward thinking design of his latest signature shoe.'),
    // Shoe(
    //     name: 'Zoom freak',
    //     price: '100',
    //     imagePath: 'lib/images/shoe13.png',
    //     description:
    //         'You\'ve got the hops and the speed-lace up in shoes that enhance performance'),
    // Shoe(
    //     name: 'Air Force',
    //     price: '250',
    //     imagePath: 'lib/images/shoe14.png',
    //     description:
    //         'A secure midfoot strap is suited for scoring binges and defensive actions.'),
    // Shoe(
    //     name: 'Nike sports',
    //     price: '150',
    //     imagePath: 'lib/images/nitro.webp',
    //     description:
    //         'Bouncy cushioning is paired with soft yet supportive from for resting feet.')
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
