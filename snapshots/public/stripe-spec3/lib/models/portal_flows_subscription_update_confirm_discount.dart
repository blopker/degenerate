// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PortalFlowsSubscriptionUpdateConfirmDiscount {const PortalFlowsSubscriptionUpdateConfirmDiscount({this.coupon, this.promotionCode, });

factory PortalFlowsSubscriptionUpdateConfirmDiscount.fromJson(Map<String, dynamic> json) { return PortalFlowsSubscriptionUpdateConfirmDiscount(
  coupon: json['coupon'] as String?,
  promotionCode: json['promotion_code'] as String?,
); }

/// The ID of the coupon to apply to this subscription update.
final String? coupon;

/// The ID of a promotion code to apply to this subscription update.
final String? promotionCode;

Map<String, dynamic> toJson() { return {
  'coupon': ?coupon,
  'promotion_code': ?promotionCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'coupon', 'promotion_code'}.contains(key)); } 
PortalFlowsSubscriptionUpdateConfirmDiscount copyWith({String? Function()? coupon, String? Function()? promotionCode, }) { return PortalFlowsSubscriptionUpdateConfirmDiscount(
  coupon: coupon != null ? coupon() : this.coupon,
  promotionCode: promotionCode != null ? promotionCode() : this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsSubscriptionUpdateConfirmDiscount &&
          coupon == other.coupon &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, promotionCode); } 
@override String toString() { return 'PortalFlowsSubscriptionUpdateConfirmDiscount(coupon: $coupon, promotionCode: $promotionCode)'; } 
 }
