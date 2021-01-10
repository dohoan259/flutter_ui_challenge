import 'package:flutter/material.dart';

class LoginPage3 extends StatefulWidget {
  @override
  _LoginPage3State createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Stack(
        children: [
          _buildBackground(context),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildLogin(context),
          _buildSignup(context),
        ],
      ),
    );
  }

  Widget _buildLogin(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/bg/khanh_van.png',
            ),
            fit: BoxFit.fitWidth),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Awesome App',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 45.0,
            ),
            Text(
              'login'.toUpperCase(),
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            _buildTextInput(context, 'email', false, false),
            SizedBox(
              height: 20.0,
            ),
            _buildTextInput(context, 'password', true, true),
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              height: 45.0,
              child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  side: BorderSide(
                    color: Colors.deepOrange,
                  ),
                ),
                color: Colors.orange,
                textColor: Colors.white,
                child: Text(
                  'login',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextInput(
      BuildContext context, String label, bool isSecure, bool isSuggestion) {
    return SizedBox(
      height: 50.0,
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7.0),
              ),
            ),
            labelText: label,
            floatingLabelBehavior: FloatingLabelBehavior.never),
        autocorrect: isSuggestion,
        obscureText: isSecure,
      ),
    );
  }

  Widget _buildSignup(BuildContext context) {
    return Expanded(
      child: Container(
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            'sign up'.toUpperCase(),
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
