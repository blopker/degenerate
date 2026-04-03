// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetCreditNotesPreviewLinesShippingCost {const GetCreditNotesPreviewLinesShippingCost({this.shippingRate});

factory GetCreditNotesPreviewLinesShippingCost.fromJson(Map<String, dynamic> json) { return GetCreditNotesPreviewLinesShippingCost(
  shippingRate: json['shipping_rate'] as String?,
); }

final String? shippingRate;

Map<String, dynamic> toJson() { return {
  'shipping_rate': ?shippingRate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'shipping_rate'}.contains(key)); } 
GetCreditNotesPreviewLinesShippingCost copyWith({String Function()? shippingRate}) { return GetCreditNotesPreviewLinesShippingCost(
  shippingRate: shippingRate != null ? shippingRate() : this.shippingRate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCreditNotesPreviewLinesShippingCost &&
          shippingRate == other.shippingRate; } 
@override int get hashCode { return shippingRate.hashCode; } 
@override String toString() { return 'GetCreditNotesPreviewLinesShippingCost(shippingRate: $shippingRate)'; } 
 }
