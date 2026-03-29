// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_checkout_sessions_session_request_shipping_options_variant1_shipping_rate_data_delivery_estimate.dart';import 'post_checkout_sessions_session_request_shipping_options_variant1_shipping_rate_data_fixed_amount.dart';final class PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior {const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior._(this.value);

factory PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior._(json),
}; }

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior exclusive = PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior._('exclusive');

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior inclusive = PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior._('inclusive');

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior unspecified = PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior._('unspecified');

static const List<PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior($value)'; } 
 }
final class PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType {const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType._(this.value);

factory PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType.fromJson(String json) { return switch (json) {
  'fixed_amount' => fixedAmount,
  _ => PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType._(json),
}; }

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType fixedAmount = PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType._('fixed_amount');

static const List<PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType> values = [fixedAmount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType($value)'; } 
 }
final class PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData {const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData({this.deliveryEstimate, required this.displayName, this.fixedAmount, this.metadata, this.taxBehavior, this.taxCode, this.type, });

factory PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData(
  deliveryEstimate: json['delivery_estimate'] != null ? PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate.fromJson(json['delivery_estimate'] as Map<String, dynamic>) : null,
  displayName: json['display_name'] as String,
  fixedAmount: json['fixed_amount'] != null ? PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataFixedAmount.fromJson(json['fixed_amount'] as Map<String, dynamic>) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  taxBehavior: json['tax_behavior'] != null ? PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  taxCode: json['tax_code'] as String?,
  type: json['type'] != null ? PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType.fromJson(json['type'] as String) : null,
); }

final PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate? deliveryEstimate;

final String displayName;

final PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataFixedAmount? fixedAmount;

final Map<String,String>? metadata;

final PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior? taxBehavior;

final String? taxCode;

final PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType? type;

Map<String, dynamic> toJson() { return {
  if (deliveryEstimate != null) 'delivery_estimate': deliveryEstimate?.toJson(),
  'display_name': displayName,
  if (fixedAmount != null) 'fixed_amount': fixedAmount?.toJson(),
  'metadata': ?metadata,
  if (taxBehavior != null) 'tax_behavior': taxBehavior?.toJson(),
  'tax_code': ?taxCode,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('display_name') && json['display_name'] is String; } 
PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData copyWith({PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate Function()? deliveryEstimate, String? displayName, PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataFixedAmount Function()? fixedAmount, Map<String, String> Function()? metadata, PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataTaxBehavior Function()? taxBehavior, String Function()? taxCode, PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataType Function()? type, }) { return PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData(
  deliveryEstimate: deliveryEstimate != null ? deliveryEstimate() : this.deliveryEstimate,
  displayName: displayName ?? this.displayName,
  fixedAmount: fixedAmount != null ? fixedAmount() : this.fixedAmount,
  metadata: metadata != null ? metadata() : this.metadata,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  taxCode: taxCode != null ? taxCode() : this.taxCode,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData &&
          deliveryEstimate == other.deliveryEstimate &&
          displayName == other.displayName &&
          fixedAmount == other.fixedAmount &&
          metadata == other.metadata &&
          taxBehavior == other.taxBehavior &&
          taxCode == other.taxCode &&
          type == other.type; } 
@override int get hashCode { return Object.hash(deliveryEstimate, displayName, fixedAmount, metadata, taxBehavior, taxCode, type); } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData(deliveryEstimate: $deliveryEstimate, displayName: $displayName, fixedAmount: $fixedAmount, metadata: $metadata, taxBehavior: $taxBehavior, taxCode: $taxCode, type: $type)'; } 
 }
