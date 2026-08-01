// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer.dart';import 'deleted_customer.dart';import 'promotion_code_customer.dart';import 'promotion_codes_resource_promotion.dart';import 'promotion_codes_resource_restrictions.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class PromotionCodeObject {const PromotionCodeObject._(this.value);

factory PromotionCodeObject.fromJson(String json) { return switch (json) {
  'promotion_code' => promotionCode,
  _ => PromotionCodeObject._(json),
}; }

static const PromotionCodeObject promotionCode = PromotionCodeObject._('promotion_code');

static const List<PromotionCodeObject> values = [promotionCode];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PromotionCodeObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PromotionCodeObject($value)'; } 
 }
/// A Promotion Code represents a customer-redeemable code for an underlying promotion.
/// You can create multiple codes for a single promotion.
/// 
/// If you enable promotion codes in your [customer portal configuration](https://docs.stripe.com/customer-management/configure-portal), then customers can redeem a code themselves when updating a subscription in the portal.
/// Customers can also view the currently active promotion codes and coupons on each of their subscriptions in the portal.
@immutable final class PromotionCode {const PromotionCode({required this.active, required this.code, required this.created, required this.id, required this.livemode, required this.object, required this.promotion, required this.restrictions, required this.timesRedeemed, this.customer = const Omittable.absent(), this.customerAccount = const Omittable.absent(), this.expiresAt = const Omittable.absent(), this.maxRedemptions = const Omittable.absent(), this.metadata = const Omittable.absent(), });

factory PromotionCode.fromJson(Map<String, dynamic> json) { return PromotionCode(
  active: json['active'] as bool,
  code: json['code'] as String,
  created: (json['created'] as num).toInt(),
  customer: json.containsKey('customer') ? Omittable(json['customer'] != null ? OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  customerAccount: json.containsKey('customer_account') ? Omittable(json['customer_account'] as String?) : const Omittable.absent(),
  expiresAt: json.containsKey('expires_at') ? Omittable(json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null) : const Omittable.absent(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  maxRedemptions: json.containsKey('max_redemptions') ? Omittable(json['max_redemptions'] != null ? (json['max_redemptions'] as num).toInt() : null) : const Omittable.absent(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  object: PromotionCodeObject.fromJson(json['object'] as String),
  promotion: PromotionCodesResourcePromotion.fromJson(json['promotion'] as Map<String, dynamic>),
  restrictions: PromotionCodesResourceRestrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
  timesRedeemed: (json['times_redeemed'] as num).toInt(),
); }

/// Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
final bool active;

/// The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer. Valid characters are lower case letters (a-z), upper case letters (A-Z), digits (0-9), and dashes (-).
final String code;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// The customer who can use this promotion code.
final Omittable<PromotionCodeCustomer?> customer;

/// The account representing the customer who can use this promotion code.
final Omittable<String?> customerAccount;

/// Date at which the promotion code can no longer be redeemed.
final Omittable<int?> expiresAt;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Maximum number of times this promotion code can be redeemed.
final Omittable<int?> maxRedemptions;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Omittable<Map<String,String>?> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final PromotionCodeObject object;

final PromotionCodesResourcePromotion promotion;

final PromotionCodesResourceRestrictions restrictions;

/// Number of times this promotion code has been used.
final int timesRedeemed;

Map<String, dynamic> toJson() { return {
  'active': active,
  'code': code,
  'created': created,
  if (customer.isPresent) 'customer': customer.value?.toJson(),
  if (customerAccount.isPresent) 'customer_account': customerAccount.value,
  if (expiresAt.isPresent) 'expires_at': expiresAt.value,
  'id': id,
  'livemode': livemode,
  if (maxRedemptions.isPresent) 'max_redemptions': maxRedemptions.value,
  if (metadata.isPresent) 'metadata': metadata.value,
  'object': object.toJson(),
  'promotion': promotion.toJson(),
  'restrictions': restrictions.toJson(),
  'times_redeemed': timesRedeemed,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('active') && json['active'] is bool &&
      json.containsKey('code') && json['code'] is String &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('promotion') &&
      json.containsKey('restrictions') &&
      json.containsKey('times_redeemed') && json['times_redeemed'] is num; } 
PromotionCode copyWith({bool? active, String? code, int? created, Omittable<PromotionCodeCustomer?>? customer, Omittable<String?>? customerAccount, Omittable<int?>? expiresAt, String? id, bool? livemode, Omittable<int?>? maxRedemptions, Omittable<Map<String,String>?>? metadata, PromotionCodeObject? object, PromotionCodesResourcePromotion? promotion, PromotionCodesResourceRestrictions? restrictions, int? timesRedeemed, }) { return PromotionCode(
  active: active ?? this.active,
  code: code ?? this.code,
  created: created ?? this.created,
  customer: customer ?? this.customer,
  customerAccount: customerAccount ?? this.customerAccount,
  expiresAt: expiresAt ?? this.expiresAt,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  maxRedemptions: maxRedemptions ?? this.maxRedemptions,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  promotion: promotion ?? this.promotion,
  restrictions: restrictions ?? this.restrictions,
  timesRedeemed: timesRedeemed ?? this.timesRedeemed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PromotionCode &&
          active == other.active &&
          code == other.code &&
          created == other.created &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          expiresAt == other.expiresAt &&
          id == other.id &&
          livemode == other.livemode &&
          maxRedemptions == other.maxRedemptions &&
          metadata == other.metadata &&
          object == other.object &&
          promotion == other.promotion &&
          restrictions == other.restrictions &&
          timesRedeemed == other.timesRedeemed; } 
@override int get hashCode { return Object.hash(active, code, created, customer, customerAccount, expiresAt, id, livemode, maxRedemptions, metadata, object, promotion, restrictions, timesRedeemed); } 
@override String toString() { return 'PromotionCode(active: $active, code: $code, created: $created, customer: $customer, customerAccount: $customerAccount, expiresAt: $expiresAt, id: $id, livemode: $livemode, maxRedemptions: $maxRedemptions, metadata: $metadata, object: $object, promotion: $promotion, restrictions: $restrictions, timesRedeemed: $timesRedeemed)'; } 
 }
