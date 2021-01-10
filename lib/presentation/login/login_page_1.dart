import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/resources/styles.dart';
import 'package:flutter_ecommerce/presentation/utils/app_localizations.dart';
import 'package:flutter_ecommerce/presentation/utils/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage1 extends StatefulWidget {
  @override
  _LoginPage1State createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          _buildAppBar(context),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SafeArea(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 10.0,
            left: 5.0,
          ),
          child: Row(
            children: [
              Icon(Icons.keyboard_arrow_left_outlined),
              Text(
                'Back',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/icons/ic_airplane.svg',
                  width: 48.0,
                  height: 48.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 12.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context).text('hello'),
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.9),
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)
                                .text('sign_in_your_account'),
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.9),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: getInputStyle(
                                AppLocalizations.of(context)
                                    .text('login_page_email_form_hint')),
                            validator: (String value) {
                              return RegExp(EMAIL_REG_PATTERN).hasMatch(value)
                                  ? 'Email invalid'
                                  : '';
                            },
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText: true,
                            decoration: getInputStyle(
                                AppLocalizations.of(context)
                                    .text('login_page_password_form_hint')),
                            validator: (String value) {
                              return RegExp(EMAIL_REG_PATTERN).hasMatch(value)
                                  ? 'Email invalid'
                                  : '';
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 7.0,
                            ),
                            alignment: Alignment.centerRight,
                            child: Text(
                              AppLocalizations.of(context)
                                  .text('login_page_forgot_password'),
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {},
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                            ),
                            color: Colors.orange,
                          ),
                          Text(
                            'Or Login using social media',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/icons/ic_facebook.svg',
                                width: 20.0,
                                height: 20.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              SvgPicture.asset(
                                'assets/images/icons/ic_twitter.svg',
                                width: 20.0,
                                height: 20.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: AppLocalizations.of(context)
                        .text('login_page_do_not_have_account'),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    children: [
                      WidgetSpan(child: SizedBox(
                        width: 10.0,
                      )),
                      TextSpan(
                        text: AppLocalizations.of(context)
                            .text('login_page_register_now'),
                        style: getTextLinkStyle(15.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
