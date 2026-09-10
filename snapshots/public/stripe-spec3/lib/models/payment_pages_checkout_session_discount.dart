// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'coupon.dart';import 'payment_pages_checkout_session_discount_coupon.dart';import 'payment_pages_checkout_session_discount_promotion_code.dart';import 'promotion_code.dart';/// 
@immutable final class PaymentPagesCheckoutSessionDiscount {const PaymentPagesCheckoutSessionDiscount({this.coupon = const Omittable.absent(), this.promotionCode = const Omittable.absent(), });

factory PaymentPagesCheckoutSessionDiscount.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionDiscount(
  coupon: json.containsKey('coupon') ? Omittable(json['coupon'] != null ? OneOf2.parse(json['coupon'], fromA: (v) => v as String, fromB: (v) => Coupon.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  promotionCode: json.containsKey('promotion_code') ? Omittable(json['promotion_code'] != null ? OneOf2.parse(json['promotion_code'], fromA: (v) => v as String, fromB: (v) => PromotionCode.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
); }

/// Coupon attached to the Checkout Session.
final Omittable<PaymentPagesCheckoutSessionDiscountCoupon?> coupon;

/// Promotion code attached to the Checkout Session.
final Omittable<PaymentPagesCheckoutSessionDiscountPromotionCode?> promotionCode;

Map<String, dynamic> toJson() { return {
  if (coupon.isPresent) 'coupon': coupon.value?.toJson(),
  if (promotionCode.isPresent) 'promotion_code': promotionCode.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'coupon', 'promotion_code'}.contains(key)); } 
PaymentPagesCheckoutSessionDiscount copyWith({Omittable<PaymentPagesCheckoutSessionDiscountCoupon?>? coupon, Omittable<PaymentPagesCheckoutSessionDiscountPromotionCode?>? promotionCode, }) { return PaymentPagesCheckoutSessionDiscount(
  coupon: coupon ?? this.coupon,
  promotionCode: promotionCode ?? this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionDiscount &&
          coupon == other.coupon &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, promotionCode); } 
@override String toString() { return 'PaymentPagesCheckoutSessionDiscount(coupon: $coupon, promotionCode: $promotionCode)'; } 
 }
