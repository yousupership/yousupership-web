// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(shipMethod, shipPrice, shipDurationFrom, shipDurationTo) => "${shipMethod} ${shipPrice} 元/公斤，时效 ${shipDurationFrom}~${shipDurationTo}天左右";

  static m1(weightPrice, volumeWeightPrice, volumeWeight) => "實際重量費用 CN\$${weightPrice}, 材積重量費用 CN\$${volumeWeightPrice} / ${volumeWeight}kg";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "calculate" : MessageLookupByLibrary.simpleMessage("Calculate"),
    "height" : MessageLookupByLibrary.simpleMessage("Height"),
    "length" : MessageLookupByLibrary.simpleMessage("Length"),
    "line_id" : MessageLookupByLibrary.simpleMessage("@yangyong_linaijun"),
    "line_id_url" : MessageLookupByLibrary.simpleMessage("https://line.me/R/ti/p/@yangyong_linaijun"),
    "price" : MessageLookupByLibrary.simpleMessage("Price"),
    "processingData" : MessageLookupByLibrary.simpleMessage("Processing Data"),
    "shipBy" : MessageLookupByLibrary.simpleMessage("運送方式"),
    "shipByAirlineExpressForNormal" : MessageLookupByLibrary.simpleMessage("空快普貨"),
    "shipByAirlineExpressForSpecial" : MessageLookupByLibrary.simpleMessage("空快特貨"),
    "shipByAirlineForNormal" : MessageLookupByLibrary.simpleMessage("空運普貨"),
    "shipByAirlineForSpecial" : MessageLookupByLibrary.simpleMessage("空運特貨"),
    "shipBySeaExpressForNormal" : MessageLookupByLibrary.simpleMessage("海快普貨"),
    "shipBySeaExpressForSpecial" : MessageLookupByLibrary.simpleMessage("海快特貨"),
    "shipBySeaForNormal" : MessageLookupByLibrary.simpleMessage("海運普貨"),
    "shipBySeaForSpecial" : MessageLookupByLibrary.simpleMessage("海運特貨"),
    "shipDescriptionBy" : m0,
    "shipPriceDescription" : MessageLookupByLibrary.simpleMessage("一般如果尺寸不是很大的，都会按实际重量计算約莫大于1米以上的大货物，如果材积大于重量的会按材积算"),
    "shipping" : MessageLookupByLibrary.simpleMessage("Shipping"),
    "size" : MessageLookupByLibrary.simpleMessage("Size"),
    "sizeCm" : MessageLookupByLibrary.simpleMessage("Size (cm)"),
    "weight" : MessageLookupByLibrary.simpleMessage("Weight"),
    "weightKg" : MessageLookupByLibrary.simpleMessage("Weight (kg)"),
    "weightPriceDescription" : m1,
    "width" : MessageLookupByLibrary.simpleMessage("Width"),
    "youSupership" : MessageLookupByLibrary.simpleMessage("YouSupership"),
    "yousupership_taobao_url" : MessageLookupByLibrary.simpleMessage("https://shop179633346.taobao.com/")
  };
}
