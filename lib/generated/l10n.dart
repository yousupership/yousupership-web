// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Calculate`
  String get calculate {
    return Intl.message(
      'Calculate',
      name: 'calculate',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight {
    return Intl.message(
      'Weight',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Processing Data`
  String get processingData {
    return Intl.message(
      'Processing Data',
      name: 'processingData',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Height`
  String get height {
    return Intl.message(
      'Height',
      name: 'height',
      desc: '',
      args: [],
    );
  }

  /// `Width`
  String get width {
    return Intl.message(
      'Width',
      name: 'width',
      desc: '',
      args: [],
    );
  }

  /// `Length`
  String get length {
    return Intl.message(
      'Length',
      name: 'length',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get shipping {
    return Intl.message(
      'Shipping',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Size (cm)`
  String get sizeCm {
    return Intl.message(
      'Size (cm)',
      name: 'sizeCm',
      desc: '',
      args: [],
    );
  }

  /// `Weight (kg)`
  String get weightKg {
    return Intl.message(
      'Weight (kg)',
      name: 'weightKg',
      desc: '',
      args: [],
    );
  }

  /// `海快特貨`
  String get seaExpressForSpecial {
    return Intl.message(
      '海快特貨',
      name: 'seaExpressForSpecial',
      desc: '',
      args: [],
    );
  }

  /// `空運特貨`
  String get airlineForSpecial {
    return Intl.message(
      '空運特貨',
      name: 'airlineForSpecial',
      desc: '',
      args: [],
    );
  }

  /// `空快特貨`
  String get airlineExpressForSpecial {
    return Intl.message(
      '空快特貨',
      name: 'airlineExpressForSpecial',
      desc: '',
      args: [],
    );
  }

  /// `海運普貨`
  String get seaForNormal {
    return Intl.message(
      '海運普貨',
      name: 'seaForNormal',
      desc: '',
      args: [],
    );
  }

  /// `海快普貨`
  String get shipBySeaExpress {
    return Intl.message(
      '海快普貨',
      name: 'shipBySeaExpress',
      desc: '',
      args: [],
    );
  }

  /// `空運普貨`
  String get shipByAirlineForNormal {
    return Intl.message(
      '空運普貨',
      name: 'shipByAirlineForNormal',
      desc: '',
      args: [],
    );
  }

  /// `空快普貨`
  String get shipByAirlineExpressForNormal {
    return Intl.message(
      '空快普貨',
      name: 'shipByAirlineExpressForNormal',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}