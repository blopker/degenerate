// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestDiscounts {const PostCheckoutSessionsRequestDiscounts({this.coupon, this.promotionCode, });

factory PostCheckoutSessionsRequestDiscounts.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestDiscounts(
  coupon: json['coupon'] as String?,
  promotionCode: json['promotion_code'] as String?,
); }

final String? coupon;

final String? promotionCode;

Map<String, dynamic> toJson() { return {
  'coupon': ?coupon,
  'promotion_code': ?promotionCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'coupon', 'promotion_code'}.contains(key)); } 
PostCheckoutSessionsRequestDiscounts copyWith({String Function()? coupon, String Function()? promotionCode, }) { return PostCheckoutSessionsRequestDiscounts(
  coupon: coupon != null ? coupon() : this.coupon,
  promotionCode: promotionCode != null ? promotionCode() : this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestDiscounts &&
          coupon == other.coupon &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, promotionCode); } 
@override String toString() { return 'PostCheckoutSessionsRequestDiscounts(coupon: $coupon, promotionCode: $promotionCode)'; } 
 }
