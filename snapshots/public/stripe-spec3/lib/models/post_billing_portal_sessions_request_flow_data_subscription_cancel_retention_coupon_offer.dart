// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostBillingPortalSessionsRequestFlowDataSubscriptionCancelRetentionCouponOffer {const PostBillingPortalSessionsRequestFlowDataSubscriptionCancelRetentionCouponOffer({required this.coupon});

factory PostBillingPortalSessionsRequestFlowDataSubscriptionCancelRetentionCouponOffer.fromJson(Map<String, dynamic> json) { return PostBillingPortalSessionsRequestFlowDataSubscriptionCancelRetentionCouponOffer(
  coupon: json['coupon'] as String,
); }

final String coupon;

Map<String, dynamic> toJson() { return {
  'coupon': coupon,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('coupon') && json['coupon'] is String; } 
PostBillingPortalSessionsRequestFlowDataSubscriptionCancelRetentionCouponOffer copyWith({String? coupon}) { return PostBillingPortalSessionsRequestFlowDataSubscriptionCancelRetentionCouponOffer(
  coupon: coupon ?? this.coupon,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalSessionsRequestFlowDataSubscriptionCancelRetentionCouponOffer &&
          coupon == other.coupon; } 
@override int get hashCode { return coupon.hashCode; } 
@override String toString() { return 'PostBillingPortalSessionsRequestFlowDataSubscriptionCancelRetentionCouponOffer(coupon: $coupon)'; } 
 }
