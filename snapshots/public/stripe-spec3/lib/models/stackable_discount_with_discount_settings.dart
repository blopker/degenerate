// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'coupon.dart';import 'discount.dart';import 'promotion_code.dart';import 'stackable_discount_with_discount_settings_coupon.dart';import 'stackable_discount_with_discount_settings_discount.dart';import 'stackable_discount_with_discount_settings_promotion_code.dart';/// 
@immutable final class StackableDiscountWithDiscountSettings {const StackableDiscountWithDiscountSettings({this.coupon = const Omittable.absent(), this.discount = const Omittable.absent(), this.promotionCode = const Omittable.absent(), });

factory StackableDiscountWithDiscountSettings.fromJson(Map<String, dynamic> json) { return StackableDiscountWithDiscountSettings(
  coupon: json.containsKey('coupon') ? Omittable(json['coupon'] != null ? OneOf2.parse(json['coupon'], fromA: (v) => v as String, fromB: (v) => Coupon.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  discount: json.containsKey('discount') ? Omittable(json['discount'] != null ? OneOf2.parse(json['discount'], fromA: (v) => v as String, fromB: (v) => Discount.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  promotionCode: json.containsKey('promotion_code') ? Omittable(json['promotion_code'] != null ? OneOf2.parse(json['promotion_code'], fromA: (v) => v as String, fromB: (v) => PromotionCode.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
); }

/// ID of the coupon to create a new discount for.
final Omittable<StackableDiscountWithDiscountSettingsCoupon?> coupon;

/// ID of an existing discount on the object (or one of its ancestors) to reuse.
final Omittable<StackableDiscountWithDiscountSettingsDiscount?> discount;

/// ID of the promotion code to create a new discount for.
final Omittable<StackableDiscountWithDiscountSettingsPromotionCode?> promotionCode;

Map<String, dynamic> toJson() { return {
  if (coupon.isPresent) 'coupon': coupon.value?.toJson(),
  if (discount.isPresent) 'discount': discount.value?.toJson(),
  if (promotionCode.isPresent) 'promotion_code': promotionCode.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'coupon', 'discount', 'promotion_code'}.contains(key)); } 
StackableDiscountWithDiscountSettings copyWith({Omittable<StackableDiscountWithDiscountSettingsCoupon?>? coupon, Omittable<StackableDiscountWithDiscountSettingsDiscount?>? discount, Omittable<StackableDiscountWithDiscountSettingsPromotionCode?>? promotionCode, }) { return StackableDiscountWithDiscountSettings(
  coupon: coupon ?? this.coupon,
  discount: discount ?? this.discount,
  promotionCode: promotionCode ?? this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StackableDiscountWithDiscountSettings &&
          coupon == other.coupon &&
          discount == other.discount &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, discount, promotionCode); } 
@override String toString() { return 'StackableDiscountWithDiscountSettings(coupon: $coupon, discount: $discount, promotionCode: $promotionCode)'; } 
 }
