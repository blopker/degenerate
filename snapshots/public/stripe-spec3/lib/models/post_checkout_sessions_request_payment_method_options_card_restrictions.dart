// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked {const PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked.fromJson(String json) { return switch (json) {
  'american_express' => americanExpress,
  'discover_global_network' => discoverGlobalNetwork,
  'mastercard' => mastercard,
  'visa' => visa,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked americanExpress = PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked._('american_express');

static const PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked discoverGlobalNetwork = PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked._('discover_global_network');

static const PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked mastercard = PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked._('mastercard');

static const PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked visa = PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked._('visa');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked> values = [americanExpress, discoverGlobalNetwork, mastercard, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictions {const PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictions({this.brandsBlocked});

factory PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictions.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictions(
  brandsBlocked: (json['brands_blocked'] as List<dynamic>?)?.map((e) => PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked.fromJson(e as String)).toList(),
); }

final List<PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked>? brandsBlocked;

Map<String, dynamic> toJson() { return {
  if (brandsBlocked != null) 'brands_blocked': brandsBlocked?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'brands_blocked'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictions copyWith({List<PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictionsBrandsBlocked> Function()? brandsBlocked}) { return PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictions(
  brandsBlocked: brandsBlocked != null ? brandsBlocked() : this.brandsBlocked,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictions &&
          listEquals(brandsBlocked, other.brandsBlocked); } 
@override int get hashCode { return Object.hashAll(brandsBlocked ?? const []).hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsCardRestrictions(brandsBlocked: $brandsBlocked)'; } 
 }
