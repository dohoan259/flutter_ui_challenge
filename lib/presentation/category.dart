import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/login/login_list_page.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCategoryItem(context, 'Login', LoginListPage()),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
      BuildContext context, String itemName, Widget nextPage) {
    return RaisedButton(
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (ctx) => nextPage),
        );
      },
      child: Text(
        itemName,
        style: TextStyle(fontSize: 18.0, color: Colors.black),
      ),
    );
  }
}
