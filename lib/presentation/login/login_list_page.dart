import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/login/login_page_1.dart';
import 'package:flutter_ecommerce/presentation/login/login_page_2.dart';
import 'package:flutter_ecommerce/presentation/login/login_page_3.dart';
import 'package:flutter_ecommerce/presentation/login/login_page_4.dart';
import 'package:flutter_ecommerce/presentation/login/login_page_5.dart';

class LoginListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildLoginPageItem(
                context,
                'login 1',
                LoginPage1(),
              ),
              _buildLoginPageItem(
                context,
                'login 2',
                LoginPage2(),
              ),
              _buildLoginPageItem(
                context,
                'login 3',
                LoginPage3(),
              ),
              _buildLoginPageItem(
                context,
                'login 4',
                LoginPage4(),
              ),
              _buildLoginPageItem(
                context,
                'login 5',
                LoginPage5(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginPageItem(
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
