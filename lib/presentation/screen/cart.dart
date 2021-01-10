import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/widget/cart_list_item.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (ctx, index) {
        return CartItem();
      },
    );
  }
}
