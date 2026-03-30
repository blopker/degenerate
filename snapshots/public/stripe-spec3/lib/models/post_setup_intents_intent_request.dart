// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_request_excluded_payment_method_types.dart';import 'post_setup_intents_intent_request_metadata.dart';import 'post_setup_intents_intent_request_payment_method_data.dart';import 'post_setup_intents_intent_request_payment_method_options.dart';final class PostSetupIntentsIntentRequestFlowDirections {const PostSetupIntentsIntentRequestFlowDirections._(this.value);

factory PostSetupIntentsIntentRequestFlowDirections.fromJson(String json) { return switch (json) {
  'inbound' => inbound,
  'outbound' => outbound,
  _ => PostSetupIntentsIntentRequestFlowDirections._(json),
}; }

static const PostSetupIntentsIntentRequestFlowDirections inbound = PostSetupIntentsIntentRequestFlowDirections._('inbound');

static const PostSetupIntentsIntentRequestFlowDirections outbound = PostSetupIntentsIntentRequestFlowDirections._('outbound');

static const List<PostSetupIntentsIntentRequestFlowDirections> values = [inbound, outbound];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestFlowDirections && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestFlowDirections($value)'; } 
 }
final class PostSetupIntentsIntentRequest {const PostSetupIntentsIntentRequest({this.attachToSelf, this.customer, this.customerAccount, this.description, this.excludedPaymentMethodTypes, this.expand, this.flowDirections, this.metadata, this.paymentMethod, this.paymentMethodConfiguration, this.paymentMethodData, this.paymentMethodOptions, this.paymentMethodTypes, });

factory PostSetupIntentsIntentRequest.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequest(
  attachToSelf: json['attach_to_self'] as bool?,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  description: json['description'] as String?,
  excludedPaymentMethodTypes: json['excluded_payment_method_types'] != null ? OneOf2.parse(json['excluded_payment_method_types'], fromA: (v) => (v as List<dynamic>).map((e) => PostSetupIntentsIntentRequestExcludedPaymentMethodTypesVariant1.fromJson(e as String)).toList(), fromB: (v) => PostSetupIntentsIntentRequestExcludedPaymentMethodTypesVariant2.fromJson(v as String),) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  flowDirections: (json['flow_directions'] as List<dynamic>?)?.map((e) => PostSetupIntentsIntentRequestFlowDirections.fromJson(e as String)).toList(),
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostSetupIntentsIntentRequestMetadataVariant2.fromJson(v as String),) : null,
  paymentMethod: json['payment_method'] as String?,
  paymentMethodConfiguration: json['payment_method_configuration'] as String?,
  paymentMethodData: json['payment_method_data'] != null ? PostSetupIntentsIntentRequestPaymentMethodData.fromJson(json['payment_method_data'] as Map<String, dynamic>) : null,
  paymentMethodOptions: json['payment_method_options'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptions.fromJson(json['payment_method_options'] as Map<String, dynamic>) : null,
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
/// 
/// It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
final bool? attachToSelf;

/// ID of the Customer this SetupIntent belongs to, if one exists.
/// 
/// If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
final String? customer;

/// ID of the Account this SetupIntent belongs to, if one exists.
/// 
/// If present, the SetupIntent's payment method will be attached to the Account on successful setup. Payment methods attached to other Accounts cannot be used with this SetupIntent.
final String? customerAccount;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final String? description;

/// The list of payment method types to exclude from use with this SetupIntent.
final PostSetupIntentsIntentRequestExcludedPaymentMethodTypes? excludedPaymentMethodTypes;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Indicates the directions of money movement for which this payment method is intended to be used.
/// 
/// Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
final List<PostSetupIntentsIntentRequestFlowDirections>? flowDirections;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostSetupIntentsIntentRequestMetadata? metadata;

/// ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent. To unset this field to null, pass in an empty string.
final String? paymentMethod;

/// The ID of the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) to use with this SetupIntent.
final String? paymentMethodConfiguration;

/// When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-payment_method)
/// value in the SetupIntent.
final PostSetupIntentsIntentRequestPaymentMethodData? paymentMethodData;

/// Payment method-specific configuration for this SetupIntent.
final PostSetupIntentsIntentRequestPaymentMethodOptions? paymentMethodOptions;

/// The list of payment method types (for example, card) that this SetupIntent can set up. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
final List<String>? paymentMethodTypes;

Map<String, dynamic> toJson() { return {
  'attach_to_self': ?attachToSelf,
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'description': ?description,
  if (excludedPaymentMethodTypes != null) 'excluded_payment_method_types': excludedPaymentMethodTypes?.toJson(),
  'expand': ?expand,
  if (flowDirections != null) 'flow_directions': flowDirections?.map((e) => e.toJson()).toList(),
  if (metadata != null) 'metadata': metadata?.toJson(),
  'payment_method': ?paymentMethod,
  'payment_method_configuration': ?paymentMethodConfiguration,
  if (paymentMethodData != null) 'payment_method_data': paymentMethodData?.toJson(),
  if (paymentMethodOptions != null) 'payment_method_options': paymentMethodOptions?.toJson(),
  'payment_method_types': ?paymentMethodTypes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'attach_to_self', 'customer', 'customer_account', 'description', 'excluded_payment_method_types', 'expand', 'flow_directions', 'metadata', 'payment_method', 'payment_method_configuration', 'payment_method_data', 'payment_method_options', 'payment_method_types'}.contains(key)); } 
PostSetupIntentsIntentRequest copyWith({bool Function()? attachToSelf, String Function()? customer, String Function()? customerAccount, String Function()? description, PostSetupIntentsIntentRequestExcludedPaymentMethodTypes Function()? excludedPaymentMethodTypes, List<String> Function()? expand, List<PostSetupIntentsIntentRequestFlowDirections> Function()? flowDirections, PostSetupIntentsIntentRequestMetadata Function()? metadata, String Function()? paymentMethod, String Function()? paymentMethodConfiguration, PostSetupIntentsIntentRequestPaymentMethodData Function()? paymentMethodData, PostSetupIntentsIntentRequestPaymentMethodOptions Function()? paymentMethodOptions, List<String> Function()? paymentMethodTypes, }) { return PostSetupIntentsIntentRequest(
  attachToSelf: attachToSelf != null ? attachToSelf() : this.attachToSelf,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  description: description != null ? description() : this.description,
  excludedPaymentMethodTypes: excludedPaymentMethodTypes != null ? excludedPaymentMethodTypes() : this.excludedPaymentMethodTypes,
  expand: expand != null ? expand() : this.expand,
  flowDirections: flowDirections != null ? flowDirections() : this.flowDirections,
  metadata: metadata != null ? metadata() : this.metadata,
  paymentMethod: paymentMethod != null ? paymentMethod() : this.paymentMethod,
  paymentMethodConfiguration: paymentMethodConfiguration != null ? paymentMethodConfiguration() : this.paymentMethodConfiguration,
  paymentMethodData: paymentMethodData != null ? paymentMethodData() : this.paymentMethodData,
  paymentMethodOptions: paymentMethodOptions != null ? paymentMethodOptions() : this.paymentMethodOptions,
  paymentMethodTypes: paymentMethodTypes != null ? paymentMethodTypes() : this.paymentMethodTypes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequest &&
          attachToSelf == other.attachToSelf &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          description == other.description &&
          excludedPaymentMethodTypes == other.excludedPaymentMethodTypes &&
          listEquals(expand, other.expand) &&
          listEquals(flowDirections, other.flowDirections) &&
          metadata == other.metadata &&
          paymentMethod == other.paymentMethod &&
          paymentMethodConfiguration == other.paymentMethodConfiguration &&
          paymentMethodData == other.paymentMethodData &&
          paymentMethodOptions == other.paymentMethodOptions &&
          listEquals(paymentMethodTypes, other.paymentMethodTypes); } 
@override int get hashCode { return Object.hash(attachToSelf, customer, customerAccount, description, excludedPaymentMethodTypes, Object.hashAll(expand ?? const []), Object.hashAll(flowDirections ?? const []), metadata, paymentMethod, paymentMethodConfiguration, paymentMethodData, paymentMethodOptions, Object.hashAll(paymentMethodTypes ?? const [])); } 
@override String toString() { return 'PostSetupIntentsIntentRequest(attachToSelf: $attachToSelf, customer: $customer, customerAccount: $customerAccount, description: $description, excludedPaymentMethodTypes: $excludedPaymentMethodTypes, expand: $expand, flowDirections: $flowDirections, metadata: $metadata, paymentMethod: $paymentMethod, paymentMethodConfiguration: $paymentMethodConfiguration, paymentMethodData: $paymentMethodData, paymentMethodOptions: $paymentMethodOptions, paymentMethodTypes: $paymentMethodTypes)'; } 
 }
