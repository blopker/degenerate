// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsDiscounts {const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsDiscounts({this.coupon, this.discount, this.promotionCode, });

factory PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsDiscounts.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsDiscounts(
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'coupon', 'discount', 'promotion_code'}.contains(key)); } 
PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsDiscounts copyWith({String Function()? coupon, String Function()? discount, String Function()? promotionCode, }) { return PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsDiscounts(
  coupon: coupon != null ? coupon() : this.coupon,
  discount: discount != null ? discount() : this.discount,
  promotionCode: promotionCode != null ? promotionCode() : this.promotionCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsDiscounts &&
          coupon == other.coupon &&
          discount == other.discount &&
          promotionCode == other.promotionCode; } 
@override int get hashCode { return Object.hash(coupon, discount, promotionCode); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsDiscounts(coupon: $coupon, discount: $discount, promotionCode: $promotionCode)'; } 
 }
