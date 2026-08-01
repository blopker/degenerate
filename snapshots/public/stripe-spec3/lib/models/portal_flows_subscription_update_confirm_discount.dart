// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PortalFlowsSubscriptionUpdateConfirmDiscount {const PortalFlowsSubscriptionUpdateConfirmDiscount({this.coupon = const Omittable.absent(), this.promotionCode = const Omittable.absent(), });

factory PortalFlowsSubscriptionUpdateConfirmDiscount.fromJson(Map<String, dynamic> json) { return PortalFlowsSubscriptionUpdateConfirmDiscount(
  coupon: json.containsKey('coupon') ? Omittable(json['coupon'] as String?) : const Omittable.absent(),
  promotionCode: json.containsKey('promotion_code') ? Omittable(json['promotion_code'] as String?) : const Omittable.absent(),
); }

/// The ID of the coupon to apply to this subscription update.
final Omittable<String?> coupon;

/// The ID of a promotion code to apply to this subscription update.
final Omittable<String?> promotionCode;

Map<String, dynamic> toJson() { return {
  if (coupon.isPresent) 'coupon': coupon.value,
  if (promotionCode.isPresent) 'promotion_code': promotionCode.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'coupon', 'promotion_code'}.contains(key)); } 
PortalFlowsSubscriptionUpdateConfirmDiscount copyWith({Omittable<String?>? coupon, Omittable<String?>? promotionCode, }) { return PortalFlowsSubscriptionUpdateConfirmDiscount(
  coupon: coupon ?? this.coupon,
  promotionCode: promotionCode ?? this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsSubscriptionUpdateConfirmDiscount &&
          coupon == other.coupon &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, promotionCode); } 
@override String toString() { return 'PortalFlowsSubscriptionUpdateConfirmDiscount(coupon: $coupon, promotionCode: $promotionCode)'; } 
 }
