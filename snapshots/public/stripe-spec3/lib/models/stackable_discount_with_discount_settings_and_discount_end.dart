// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'coupon.dart';import 'discount.dart';import 'promotion_code.dart';import 'stackable_discount_with_discount_settings_and_discount_end_coupon.dart';import 'stackable_discount_with_discount_settings_and_discount_end_discount.dart';import 'stackable_discount_with_discount_settings_and_discount_end_promotion_code.dart';/// 
final class StackableDiscountWithDiscountSettingsAndDiscountEnd {const StackableDiscountWithDiscountSettingsAndDiscountEnd({this.coupon, this.discount, this.promotionCode, });

factory StackableDiscountWithDiscountSettingsAndDiscountEnd.fromJson(Map<String, dynamic> json) { return StackableDiscountWithDiscountSettingsAndDiscountEnd(
  coupon: json['coupon'] != null ? OneOf2.parse(json['coupon'], fromA: (v) => v as String, fromB: (v) => Coupon.fromJson(v as Map<String, dynamic>),) : null,
  discount: json['discount'] != null ? OneOf2.parse(json['discount'], fromA: (v) => v as String, fromB: (v) => Discount.fromJson(v as Map<String, dynamic>),) : null,
  promotionCode: json['promotion_code'] != null ? OneOf2.parse(json['promotion_code'], fromA: (v) => v as String, fromB: (v) => PromotionCode.fromJson(v as Map<String, dynamic>),) : null,
); }

/// ID of the coupon to create a new discount for.
final StackableDiscountWithDiscountSettingsAndDiscountEndCoupon? coupon;

/// ID of an existing discount on the object (or one of its ancestors) to reuse.
final StackableDiscountWithDiscountSettingsAndDiscountEndDiscount? discount;

/// ID of the promotion code to create a new discount for.
final StackableDiscountWithDiscountSettingsAndDiscountEndPromotionCode? promotionCode;

Map<String, dynamic> toJson() { return {
  if (coupon != null) 'coupon': coupon?.toJson(),
  if (discount != null) 'discount': discount?.toJson(),
  if (promotionCode != null) 'promotion_code': promotionCode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
StackableDiscountWithDiscountSettingsAndDiscountEnd copyWith({StackableDiscountWithDiscountSettingsAndDiscountEndCoupon? Function()? coupon, StackableDiscountWithDiscountSettingsAndDiscountEndDiscount? Function()? discount, StackableDiscountWithDiscountSettingsAndDiscountEndPromotionCode? Function()? promotionCode, }) { return StackableDiscountWithDiscountSettingsAndDiscountEnd(
  coupon: coupon != null ? coupon() : this.coupon,
  discount: discount != null ? discount() : this.discount,
  promotionCode: promotionCode != null ? promotionCode() : this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StackableDiscountWithDiscountSettingsAndDiscountEnd &&
          coupon == other.coupon &&
          discount == other.discount &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, discount, promotionCode); } 
@override String toString() { return 'StackableDiscountWithDiscountSettingsAndDiscountEnd(coupon: $coupon, discount: $discount, promotionCode: $promotionCode)'; } 
 }
