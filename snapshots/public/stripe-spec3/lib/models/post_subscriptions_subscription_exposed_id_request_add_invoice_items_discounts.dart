// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsDiscounts {const PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsDiscounts({this.coupon, this.discount, this.promotionCode, });

factory PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsDiscounts.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsDiscounts(
  coupon: json['coupon'] as String?,
  discount: json['discount'] as String?,
  promotionCode: json['promotion_code'] as String?,
); }

final String? coupon;

final String? discount;

final String? promotionCode;

Map<String, dynamic> toJson() { return {
  'coupon': ?coupon,
  'discount': ?discount,
  'promotion_code': ?promotionCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsDiscounts copyWith({String Function()? coupon, String Function()? discount, String Function()? promotionCode, }) { return PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsDiscounts(
  coupon: coupon != null ? coupon() : this.coupon,
  discount: discount != null ? discount() : this.discount,
  promotionCode: promotionCode != null ? promotionCode() : this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsDiscounts &&
          coupon == other.coupon &&
          discount == other.discount &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, discount, promotionCode); } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsDiscounts(coupon: $coupon, discount: $discount, promotionCode: $promotionCode)'; } 
 }
