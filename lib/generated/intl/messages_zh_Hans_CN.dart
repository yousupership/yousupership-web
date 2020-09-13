// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hans_CN locale. All the
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
  String get localeName => 'zh_Hans_CN';

  static m1(shipMethod, shipPrice, shipDurationFrom, shipDurationTo) => "${shipMethod} ${shipPrice} 元/公斤，时效 ${shipDurationFrom}~${shipDurationTo}天左右";

  static m2(weightPrice, volumeWeightPrice, volumeWeight) => "重量计 CN\$${weightPrice} 材积计 CN\$${volumeWeightPrice} / ${volumeWeight}kg";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "calculate" : MessageLookupByLibrary.simpleMessage("计算"),
    "height" : MessageLookupByLibrary.simpleMessage("高度"),
    "length" : MessageLookupByLibrary.simpleMessage("长度"),
    "price" : MessageLookupByLibrary.simpleMessage("费用"),
    "processingData" : MessageLookupByLibrary.simpleMessage("处理中"),
    "shipBy" : MessageLookupByLibrary.simpleMessage("运送方式"),
    "shipByAirlineExpressForNormal" : MessageLookupByLibrary.simpleMessage("空快普货"),
    "shipByAirlineExpressForSpecial" : MessageLookupByLibrary.simpleMessage("空快特货"),
    "shipByAirlineForNormal" : MessageLookupByLibrary.simpleMessage("空运普货"),
    "shipByAirlineForSpecial" : MessageLookupByLibrary.simpleMessage("空运特货"),
    "shipBySeaExpressForNormal" : MessageLookupByLibrary.simpleMessage("海快普货"),
    "shipBySeaExpressForSpecial" : MessageLookupByLibrary.simpleMessage("海快特货"),
    "shipBySeaForNormal" : MessageLookupByLibrary.simpleMessage("海运普货"),
    "shipBySeaForSpecial" : MessageLookupByLibrary.simpleMessage("海运特货"),
    "shipDescriptionBy" : m1,
    "shipPriceDescription" : MessageLookupByLibrary.simpleMessage("一般如果尺寸不是很大的，都会按实际重量计算約莫大于1米以上的大货物，如果材积大于重量的会按材积算\n\n免費驗貨\n木架 CN\$100 起\n電視開機驗貨"),
    "shipping" : MessageLookupByLibrary.simpleMessage("运费试算"),
    "size" : MessageLookupByLibrary.simpleMessage("尺寸"),
    "sizeCm" : MessageLookupByLibrary.simpleMessage("尺寸 (cm)"),
    "weight" : MessageLookupByLibrary.simpleMessage("重量"),
    "weightKg" : MessageLookupByLibrary.simpleMessage("重量 (kg)"),
    "weightPriceDescription" : m2,
    "width" : MessageLookupByLibrary.simpleMessage("宽度"),
    "youSupership" : MessageLookupByLibrary.simpleMessage("永超集运")
  };
}
