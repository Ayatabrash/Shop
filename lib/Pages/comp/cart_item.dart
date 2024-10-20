import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Pages/models/Cart.dart';
import 'package:shop/Pages/models/shoe.dart';

class CartItem extends StatefulWidget {
  CartItem({super.key, required this.shoe});
  final Shoe shoe;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(
          widget.shoe.imagePath,
        ),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing:
            IconButton(onPressed: removeItemFromCart, icon: Icon(Icons.delete)),
      ),
    );
  }
}
