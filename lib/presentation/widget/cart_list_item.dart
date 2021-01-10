import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.asset(
            'assets/images/bg/french_vn.png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text('Item 10'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.delete)
                ],
              ),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Price',
                      children: [
                        WidgetSpan(
                          child: SizedBox(
                            width: 10,
                          ),
                        ),
                        TextSpan(
                          text: '\$200'
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
