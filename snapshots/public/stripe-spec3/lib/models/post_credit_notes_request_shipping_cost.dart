// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
@immutable final class PostCreditNotesRequestShippingCost {const PostCreditNotesRequestShippingCost({this.shippingRate});

factory PostCreditNotesRequestShippingCost.fromJson(Map<String, dynamic> json) { return PostCreditNotesRequestShippingCost(
  shippingRate: json['shipping_rate'] as String?,
); }

final String? shippingRate;

Map<String, dynamic> toJson() { return {
  'shipping_rate': ?shippingRate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'shipping_rate'}.contains(key)); } 
PostCreditNotesRequestShippingCost copyWith({String Function()? shippingRate}) { return PostCreditNotesRequestShippingCost(
  shippingRate: shippingRate != null ? shippingRate() : this.shippingRate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCreditNotesRequestShippingCost &&
          shippingRate == other.shippingRate; } 
@override int get hashCode { return shippingRate.hashCode; } 
@override String toString() { return 'PostCreditNotesRequestShippingCost(shippingRate: $shippingRate)'; } 
 }
