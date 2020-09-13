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

  /// `YouSupership`
  String get youSupership {
    return Intl.message(
      'YouSupership',
      name: 'youSupership',
      desc: '',
      args: [],
    );
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

  /// `Ship by airline for normal`
  String get shipByAirlineForNormal {
    return Intl.message(
      'Ship by airline for normal',
      name: 'shipByAirlineForNormal',
      desc: '',
      args: [],
    );
  }

  /// `Ship by airline for special`
  String get shipByAirlineForSpecial {
    return Intl.message(
      'Ship by airline for special',
      name: 'shipByAirlineForSpecial',
      desc: '',
      args: [],
    );
  }

  /// `Ship by airline express for normal`
  String get shipByAirlineExpressForNormal {
    return Intl.message(
      'Ship by airline express for normal',
      name: 'shipByAirlineExpressForNormal',
      desc: '',
      args: [],
    );
  }

  /// `Ship by airline express for special`
  String get shipByAirlineExpressForSpecial {
    return Intl.message(
      'Ship by airline express for special',
      name: 'shipByAirlineExpressForSpecial',
      desc: '',
      args: [],
    );
  }

  /// `Ship by sea for normal`
  String get shipBySeaForNormal {
    return Intl.message(
      'Ship by sea for normal',
      name: 'shipBySeaForNormal',
      desc: '',
      args: [],
    );
  }

  /// `Ship by sea for special`
  String get shipBySeaForSpecial {
    return Intl.message(
      'Ship by sea for special',
      name: 'shipBySeaForSpecial',
      desc: '',
      args: [],
    );
  }

  /// `Ship by sea express for normal`
  String get shipBySeaExpressForNormal {
    return Intl.message(
      'Ship by sea express for normal',
      name: 'shipBySeaExpressForNormal',
      desc: '',
      args: [],
    );
  }

  /// `Ship by sea express for special`
  String get shipBySeaExpressForSpecial {
    return Intl.message(
      'Ship by sea express for special',
      name: 'shipBySeaExpressForSpecial',
      desc: '',
      args: [],
    );
  }

  /// `{shipMethod} CN${shipPrice} / kg, takes {shipDurationFrom}~{shipDurationTo}d`
  String shipDescriptionBy(Object shipMethod, Object shipPrice, Object shipDurationFrom, Object shipDurationTo) {
    return Intl.message(
      '$shipMethod CN\$$shipPrice / kg, takes $shipDurationFrom~${shipDurationTo}d',
      name: 'shipDescriptionBy',
      desc: '',
      args: [shipMethod, shipPrice, shipDurationFrom, shipDurationTo],
    );
  }

  /// `by weight CN${weightPrice} by volume CN${volumeWeightPrice} / {volumeWeight}kg`
  String weightPriceDescription(Object weightPrice, Object volumeWeightPrice, Object volumeWeight) {
    return Intl.message(
      'by weight CN\$$weightPrice by volume CN\$$volumeWeightPrice / ${volumeWeight}kg',
      name: 'weightPriceDescription',
      desc: '',
      args: [weightPrice, volumeWeightPrice, volumeWeight],
    );
  }

  /// `Ship by`
  String get shipBy {
    return Intl.message(
      'Ship by',
      name: 'shipBy',
      desc: '',
      args: [],
    );
  }

  /// `https://shop179633346.taobao.com/`
  String get yousupership_taobao_url {
    return Intl.message(
      'https://shop179633346.taobao.com/',
      name: 'yousupership_taobao_url',
      desc: '',
      args: [],
    );
  }

  /// `https://line.me/R/ti/p/@619gndbg`
  String get yousupership_line_id_url {
    return Intl.message(
      'https://line.me/R/ti/p/@619gndbg',
      name: 'yousupership_line_id_url',
      desc: '',
      args: [],
    );
  }

  /// `@619gndbg`
  String get yousupership_line_id {
    return Intl.message(
      '@619gndbg',
      name: 'yousupership_line_id',
      desc: '',
      args: [],
    );
  }

  /// `一般如果尺寸不是很大的，都会按实际重量计算約莫大于1米以上的大货物，如果材积大于重量的会按材积算\n\n免費驗貨\n木架 CN$100 起\n電視開機驗貨`
  String get shipPriceDescription {
    return Intl.message(
      '一般如果尺寸不是很大的，都会按实际重量计算約莫大于1米以上的大货物，如果材积大于重量的会按材积算\n\n免費驗貨\n木架 CN\$100 起\n電視開機驗貨',
      name: 'shipPriceDescription',
      desc: '',
      args: [],
    );
  }

  /// `https://amos.alicdn.com/getcid.aw?uid={id}&site=cntaobao`
  String aliwangwangBy(Object id) {
    return Intl.message(
      'https://amos.alicdn.com/getcid.aw?uid=$id&site=cntaobao',
      name: 'aliwangwangBy',
      desc: '',
      args: [id],
    );
  }

  /// `yangyong_linaijun`
  String get yousupershipAliwangwangId {
    return Intl.message(
      'yangyong_linaijun',
      name: 'yousupershipAliwangwangId',
      desc: '',
      args: [],
    );
  }

  /// `https://m.me/100049773130378`
  String get yousupershipMessengerUrl {
    return Intl.message(
      'https://m.me/100049773130378',
      name: 'yousupershipMessengerUrl',
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
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
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