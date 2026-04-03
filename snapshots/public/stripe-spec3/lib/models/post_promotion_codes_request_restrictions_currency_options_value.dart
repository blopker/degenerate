// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPromotionCodesRequestRestrictionsCurrencyOptionsValue {const PostPromotionCodesRequestRestrictionsCurrencyOptionsValue({this.minimumAmount});

factory PostPromotionCodesRequestRestrictionsCurrencyOptionsValue.fromJson(Map<String, dynamic> json) { return PostPromotionCodesRequestRestrictionsCurrencyOptionsValue(
  minimumAmount: json['minimum_amount'] != null ? (json['minimum_amount'] as num).toInt() : null,
); }

final int? minimumAmount;

Map<String, dynamic> toJson() { return {
  'minimum_amount': ?minimumAmount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'minimum_amount'}.contains(key)); } 
PostPromotionCodesRequestRestrictionsCurrencyOptionsValue copyWith({int Function()? minimumAmount}) { return PostPromotionCodesRequestRestrictionsCurrencyOptionsValue(
  minimumAmount: minimumAmount != null ? minimumAmount() : this.minimumAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPromotionCodesRequestRestrictionsCurrencyOptionsValue &&
          minimumAmount == other.minimumAmount; } 
@override int get hashCode { return minimumAmount.hashCode; } 
@override String toString() { return 'PostPromotionCodesRequestRestrictionsCurrencyOptionsValue(minimumAmount: $minimumAmount)'; } 
 }
