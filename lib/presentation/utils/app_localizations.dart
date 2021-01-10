import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce/presentation/utils/constant.dart';

class AppLocalizations {
  final Locale _locale;
  AppLocalizations._(this._locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  Map<String, String> _localizationStrings;

  Future<void> load() async{
    String jsonString = await rootBundle.loadString('assets/lang/lang_${_locale.languageCode}.json');

    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizationStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String text(String key) => _localizationStrings[key];
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return SUPPORTED_LANGUAGES.contains(locale.languageCode) && SUPPORTED_COUNTRY_CODES.contains(locale.countryCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async{
    final localizations = AppLocalizations._(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) => false;
}