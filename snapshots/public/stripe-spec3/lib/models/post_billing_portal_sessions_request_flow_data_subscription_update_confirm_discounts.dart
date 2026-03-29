// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts {const PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts({this.coupon, this.promotionCode, });

factory PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts.fromJson(Map<String, dynamic> json) { return PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts(
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
PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts copyWith({String Function()? coupon, String Function()? promotionCode, }) { return PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts(
  coupon: coupon != null ? coupon() : this.coupon,
  promotionCode: promotionCode != null ? promotionCode() : this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts &&
          coupon == other.coupon &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, promotionCode); } 
@override String toString() { return 'PostBillingPortalSessionsRequestFlowDataSubscriptionUpdateConfirmDiscounts(coupon: $coupon, promotionCode: $promotionCode)'; } 
 }
