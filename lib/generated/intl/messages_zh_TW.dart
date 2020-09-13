// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_TW locale. All the
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
  String get localeName => 'zh_TW';

  static m1(shipMethod, shipPrice, shipDurationFrom, shipDurationTo) => "${shipMethod} ${shipPrice} 元/公斤，時效 ${shipDurationFrom}~${shipDurationTo}天左右";

  static m2(weightPrice, volumeWeightPrice, volumeWeight) => "重量計 CN\$${weightPrice} 材積計 CN\$${volumeWeightPrice} / ${volumeWeight}kg";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "calculate" : MessageLookupByLibrary.simpleMessage("計算"),
    "height" : MessageLookupByLibrary.simpleMessage("高度"),
    "length" : MessageLookupByLibrary.simpleMessage("長度"),
    "price" : MessageLookupByLibrary.simpleMessage("費用"),
    "processingData" : MessageLookupByLibrary.simpleMessage("處理中"),
    "shipByAirlineExpressForNormal" : MessageLookupByLibrary.simpleMessage("空快普貨"),
    "shipByAirlineExpressForSpecial" : MessageLookupByLibrary.simpleMessage("空快特貨"),
    "shipByAirlineForNormal" : MessageLookupByLibrary.simpleMessage("空運普貨"),
    "shipByAirlineForSpecial" : MessageLookupByLibrary.simpleMessage("空運特貨"),
    "shipBySeaExpressForNormal" : MessageLookupByLibrary.simpleMessage("海快普貨"),
    "shipBySeaExpressForSpecial" : MessageLookupByLibrary.simpleMessage("海快特貨"),
    "shipBySeaForNormal" : MessageLookupByLibrary.simpleMessage("海運普貨"),
    "shipBySeaForSpecial" : MessageLookupByLibrary.simpleMessage("海運特貨"),
    "shipDescriptionBy" : m1,
    "shipping" : MessageLookupByLibrary.simpleMessage("運費試算"),
    "size" : MessageLookupByLibrary.simpleMessage("尺寸"),
    "sizeCm" : MessageLookupByLibrary.simpleMessage("尺寸 (cm)"),
    "weight" : MessageLookupByLibrary.simpleMessage("重量"),
    "weightKg" : MessageLookupByLibrary.simpleMessage("重量 (kg)"),
    "weightPriceDescription" : m2,
    "width" : MessageLookupByLibrary.simpleMessage("寬度"),
    "youSupership" : MessageLookupByLibrary.simpleMessage("永超集運")
  };
}
