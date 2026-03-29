// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetCreditNotesPreviewShippingCost {const GetCreditNotesPreviewShippingCost({this.shippingRate});

factory GetCreditNotesPreviewShippingCost.fromJson(Map<String, dynamic> json) { return GetCreditNotesPreviewShippingCost(
  shippingRate: json['shipping_rate'] as String?,
); }

final String? shippingRate;

Map<String, dynamic> toJson() { return {
  'shipping_rate': ?shippingRate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'shipping_rate'}.contains(key)); } 
GetCreditNotesPreviewShippingCost copyWith({String Function()? shippingRate}) { return GetCreditNotesPreviewShippingCost(
  shippingRate: shippingRate != null ? shippingRate() : this.shippingRate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCreditNotesPreviewShippingCost &&
          shippingRate == other.shippingRate; } 
@override int get hashCode { return shippingRate.hashCode; } 
@override String toString() { return 'GetCreditNotesPreviewShippingCost(shippingRate: $shippingRate)'; } 
 }
