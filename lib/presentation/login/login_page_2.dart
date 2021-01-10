import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/resources/styles.dart';
import 'package:flutter_ecommerce/presentation/utils/app_localizations.dart';

class LoginPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          _buildBackground(context),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage(
                'assets/images/bg/khanh_van.png',
              ),
            ),
          ),
        ),
        Container(
          color: Colors.black38,
        )
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                AppLocalizations.of(context).text('login_page_2_app_title'),
                style: appTitleStyle,
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)
                          .text('login_page_2_app_name'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      AppLocalizations.of(context)
                          .text('login_page_2_text_guide'),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.greenAccent,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          primaryColor: Colors.orange,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.person,
                              color: Colors.greenAccent,
                            ),
                            labelText: AppLocalizations.of(context)
                                .text('login_page_user_name'),
                            labelStyle: TextStyle(
                              color: Colors.greenAccent,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                color: Colors.greenAccent,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                color: Colors.orange,
                              ),
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.greenAccent,
                          ),
                          cursorColor: Colors.greenAccent,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      height: 50.0,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          primaryColor: Colors.orange,
                          accentColor: Colors.orange,
                        ),
                        child: TextField(
                          obscureText: true,
                          autocorrect: false,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Colors.greenAccent,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: AppLocalizations.of(context)
                                .text('login_page_password_form_hint'),
                            labelStyle: TextStyle(color: Colors.greenAccent),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                color: Colors.greenAccent,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                color: Colors.orange,
                              ),
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.greenAccent,
                          ),
                          cursorColor: Colors.greenAccent,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      AppLocalizations.of(context)
                          .text('login_page_create_new_account'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  height: 60.0,
                  onPressed: () {},
                  child: Text(
                    AppLocalizations.of(context).text('continue').toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.0,
                    ),
                  ),
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
