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

  static m0(id) => "https://amos.alicdn.com/getcid.aw?uid=${id}&site=cntaobao";

  static m1(shipMethod, shipPrice, shipDurationFrom, shipDurationTo) => "${shipMethod} CN\$${shipPrice} / kg, takes ${shipDurationFrom}~${shipDurationTo}d";

  static m2(weightPrice, volumeWeightPrice, volumeWeight) => "by weight CN\$${weightPrice} by volume CN\$${volumeWeightPrice} / ${volumeWeight}kg";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aliwangwangBy" : m0,
    "calculate" : MessageLookupByLibrary.simpleMessage("Calculate"),
    "height" : MessageLookupByLibrary.simpleMessage("Height"),
    "length" : MessageLookupByLibrary.simpleMessage("Length"),
    "price" : MessageLookupByLibrary.simpleMessage("Price"),
    "processingData" : MessageLookupByLibrary.simpleMessage("Processing Data"),
    "shipBy" : MessageLookupByLibrary.simpleMessage("Ship by"),
    "shipByAirlineExpressForNormal" : MessageLookupByLibrary.simpleMessage("Ship by airline express for normal"),
    "shipByAirlineExpressForSpecial" : MessageLookupByLibrary.simpleMessage("Ship by airline express for special"),
    "shipByAirlineForNormal" : MessageLookupByLibrary.simpleMessage("Ship by airline for normal"),
    "shipByAirlineForSpecial" : MessageLookupByLibrary.simpleMessage("Ship by airline for special"),
    "shipBySeaExpressForNormal" : MessageLookupByLibrary.simpleMessage("Ship by sea express for normal"),
    "shipBySeaExpressForSpecial" : MessageLookupByLibrary.simpleMessage("Ship by sea express for special"),
    "shipBySeaForNormal" : MessageLookupByLibrary.simpleMessage("Ship by sea for normal"),
    "shipBySeaForSpecial" : MessageLookupByLibrary.simpleMessage("Ship by sea for special"),
    "shipDescriptionBy" : m1,
    "shipPriceDescription" : MessageLookupByLibrary.simpleMessage("一般如果尺寸不是很大的，都会按实际重量计算約莫大于1米以上的大货物，如果材积大于重量的会按材积算\n\n免費驗貨\n木架 CN\$100 起\n電視開機驗貨"),
    "shipping" : MessageLookupByLibrary.simpleMessage("Shipping"),
    "size" : MessageLookupByLibrary.simpleMessage("Size"),
    "sizeCm" : MessageLookupByLibrary.simpleMessage("Size (cm)"),
    "weight" : MessageLookupByLibrary.simpleMessage("Weight"),
    "weightKg" : MessageLookupByLibrary.simpleMessage("Weight (kg)"),
    "weightPriceDescription" : m2,
    "width" : MessageLookupByLibrary.simpleMessage("Width"),
    "youSupership" : MessageLookupByLibrary.simpleMessage("YouSupership"),
    "yousupershipAliwangwangId" : MessageLookupByLibrary.simpleMessage("yangyong_linaijun"),
    "yousupershipMessengerUrl" : MessageLookupByLibrary.simpleMessage("https://m.me/100049773130378"),
    "yousupership_line_id" : MessageLookupByLibrary.simpleMessage("@yangyong_linaijun"),
    "yousupership_line_id_url" : MessageLookupByLibrary.simpleMessage("https://line.me/R/ti/p/@yangyong_linaijun"),
    "yousupership_taobao_url" : MessageLookupByLibrary.simpleMessage("https://shop179633346.taobao.com/")
  };
}
