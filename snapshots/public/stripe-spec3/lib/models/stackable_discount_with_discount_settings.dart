// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'coupon.dart';import 'discount.dart';import 'promotion_code.dart';import 'stackable_discount_with_discount_settings_coupon.dart';import 'stackable_discount_with_discount_settings_discount.dart';import 'stackable_discount_with_discount_settings_promotion_code.dart';/// 
final class StackableDiscountWithDiscountSettings {const StackableDiscountWithDiscountSettings({this.coupon, this.discount, this.promotionCode, });

factory StackableDiscountWithDiscountSettings.fromJson(Map<String, dynamic> json) { return StackableDiscountWithDiscountSettings(
  coupon: json['coupon'] != null ? OneOf2.parse(json['coupon'], fromA: (v) => v as String, fromB: (v) => Coupon.fromJson(v as Map<String, dynamic>),) : null,
  discount: json['discount'] != null ? OneOf2.parse(json['discount'], fromA: (v) => v as String, fromB: (v) => Discount.fromJson(v as Map<String, dynamic>),) : null,
  promotionCode: json['promotion_code'] != null ? OneOf2.parse(json['promotion_code'], fromA: (v) => v as String, fromB: (v) => PromotionCode.fromJson(v as Map<String, dynamic>),) : null,
); }

/// ID of the coupon to create a new discount for.
final StackableDiscountWithDiscountSettingsCoupon? coupon;

/// ID of an existing discount on the object (or one of its ancestors) to reuse.
final StackableDiscountWithDiscountSettingsDiscount? discount;

/// ID of the promotion code to create a new discount for.
final StackableDiscountWithDiscountSettingsPromotionCode? promotionCode;

Map<String, dynamic> toJson() { return {
  if (coupon != null) 'coupon': coupon?.toJson(),
  if (discount != null) 'discount': discount?.toJson(),
  if (promotionCode != null) 'promotion_code': promotionCode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
StackableDiscountWithDiscountSettings copyWith({StackableDiscountWithDiscountSettingsCoupon? Function()? coupon, StackableDiscountWithDiscountSettingsDiscount? Function()? discount, StackableDiscountWithDiscountSettingsPromotionCode? Function()? promotionCode, }) { return StackableDiscountWithDiscountSettings(
  coupon: coupon != null ? coupon() : this.coupon,
  discount: discount != null ? discount() : this.discount,
  promotionCode: promotionCode != null ? promotionCode() : this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StackableDiscountWithDiscountSettings &&
          coupon == other.coupon &&
          discount == other.discount &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, discount, promotionCode); } 
@override String toString() { return 'StackableDiscountWithDiscountSettings(coupon: $coupon, discount: $discount, promotionCode: $promotionCode)'; } 
 }
