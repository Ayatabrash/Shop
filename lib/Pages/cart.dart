import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Pages/comp/cart_item.dart';
import 'package:shop/Pages/models/Cart.dart';
import 'package:shop/Pages/models/shoe.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: value.getUserCart()?.length ?? 0,
                    itemBuilder: (context, index) {
                      Shoe individualShoe = value.getUserCart()[index];
                      return CartItem(
                        shoe: individualShoe,
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
