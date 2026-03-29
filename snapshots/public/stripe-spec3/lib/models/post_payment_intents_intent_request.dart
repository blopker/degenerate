// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_param.dart';import 'optional_fields_shipping.dart';import 'payment_details.dart';import 'post_payment_intents_intent_request_amount_details.dart';import 'post_payment_intents_intent_request_application_fee_amount.dart';import 'post_payment_intents_intent_request_excluded_payment_method_types.dart';import 'post_payment_intents_intent_request_hooks.dart';import 'post_payment_intents_intent_request_metadata.dart';import 'post_payment_intents_intent_request_payment_details.dart';import 'post_payment_intents_intent_request_payment_method_data.dart';import 'post_payment_intents_intent_request_payment_method_options.dart';import 'post_payment_intents_intent_request_receipt_email.dart';import 'post_payment_intents_intent_request_shipping.dart';import 'post_payment_intents_intent_request_transfer_data.dart';/// Controls when the funds will be captured from the customer's account.
final class PostPaymentIntentsIntentRequestCaptureMethod {const PostPaymentIntentsIntentRequestCaptureMethod._(this.value);

factory PostPaymentIntentsIntentRequestCaptureMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'automatic_async' => automaticAsync,
  'manual' => manual,
  _ => PostPaymentIntentsIntentRequestCaptureMethod._(json),
}; }

static const PostPaymentIntentsIntentRequestCaptureMethod automatic = PostPaymentIntentsIntentRequestCaptureMethod._('automatic');

static const PostPaymentIntentsIntentRequestCaptureMethod automaticAsync = PostPaymentIntentsIntentRequestCaptureMethod._('automatic_async');

static const PostPaymentIntentsIntentRequestCaptureMethod manual = PostPaymentIntentsIntentRequestCaptureMethod._('manual');

static const List<PostPaymentIntentsIntentRequestCaptureMethod> values = [automatic, automaticAsync, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestCaptureMethod($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
/// 
/// If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
final class PostPaymentIntentsIntentRequestSetupFutureUsage {const PostPaymentIntentsIntentRequestSetupFutureUsage._(this.value);

factory PostPaymentIntentsIntentRequestSetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PostPaymentIntentsIntentRequestSetupFutureUsage._(json),
}; }

static const PostPaymentIntentsIntentRequestSetupFutureUsage $empty = PostPaymentIntentsIntentRequestSetupFutureUsage._('');

static const PostPaymentIntentsIntentRequestSetupFutureUsage offSession = PostPaymentIntentsIntentRequestSetupFutureUsage._('off_session');

static const PostPaymentIntentsIntentRequestSetupFutureUsage onSession = PostPaymentIntentsIntentRequestSetupFutureUsage._('on_session');

static const List<PostPaymentIntentsIntentRequestSetupFutureUsage> values = [$empty, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestSetupFutureUsage($value)'; } 
 }
final class PostPaymentIntentsIntentRequest {const PostPaymentIntentsIntentRequest({this.amount, this.amountDetails, this.applicationFeeAmount, this.captureMethod, this.currency, this.customer, this.customerAccount, this.description, this.excludedPaymentMethodTypes, this.expand, this.hooks, this.metadata, this.paymentDetails, this.paymentMethod, this.paymentMethodConfiguration, this.paymentMethodData, this.paymentMethodOptions, this.paymentMethodTypes, this.receiptEmail, this.setupFutureUsage, this.shipping, this.statementDescriptor, this.statementDescriptorSuffix, this.transferData, this.transferGroup, });

factory PostPaymentIntentsIntentRequest.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequest(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  amountDetails: json['amount_details'] != null ? OneOf2.parse(json['amount_details'], fromA: (v) => AmountDetailsParam.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentIntentsIntentRequestAmountDetailsVariant2.fromJson(v as String),) : null,
  applicationFeeAmount: json['application_fee_amount'] != null ? OneOf2.parse(json['application_fee_amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2.fromJson(v as String),) : null,
  captureMethod: json['capture_method'] != null ? PostPaymentIntentsIntentRequestCaptureMethod.fromJson(json['capture_method'] as String) : null,
  currency: json['currency'] as String?,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  description: json['description'] as String?,
  excludedPaymentMethodTypes: json['excluded_payment_method_types'] != null ? OneOf2.parse(json['excluded_payment_method_types'], fromA: (v) => (v as List<dynamic>).map((e) => PostPaymentIntentsIntentRequestExcludedPaymentMethodTypesVariant1.fromJson(e as String)).toList(), fromB: (v) => PostPaymentIntentsIntentRequestExcludedPaymentMethodTypesVariant2.fromJson(v as String),) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  hooks: json['hooks'] != null ? PostPaymentIntentsIntentRequestHooks.fromJson(json['hooks'] as Map<String, dynamic>) : null,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostPaymentIntentsIntentRequestMetadataVariant2.fromJson(v as String),) : null,
  paymentDetails: json['payment_details'] != null ? OneOf2.parse(json['payment_details'], fromA: (v) => PaymentDetails.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentIntentsIntentRequestPaymentDetailsVariant2.fromJson(v as String),) : null,
  paymentMethod: json['payment_method'] as String?,
  paymentMethodConfiguration: json['payment_method_configuration'] as String?,
  paymentMethodData: json['payment_method_data'] != null ? PostPaymentIntentsIntentRequestPaymentMethodData.fromJson(json['payment_method_data'] as Map<String, dynamic>) : null,
  paymentMethodOptions: json['payment_method_options'] != null ? PostPaymentIntentsIntentRequestPaymentMethodOptions.fromJson(json['payment_method_options'] as Map<String, dynamic>) : null,
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)?.map((e) => e as String).toList(),
  receiptEmail: json['receipt_email'] != null ? OneOf2.parse(json['receipt_email'], fromA: (v) => v as String, fromB: (v) => PostPaymentIntentsIntentRequestReceiptEmailVariant2.fromJson(v as String),) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PostPaymentIntentsIntentRequestSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  shipping: json['shipping'] != null ? OneOf2.parse(json['shipping'], fromA: (v) => OptionalFieldsShipping.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentIntentsIntentRequestShippingVariant2.fromJson(v as String),) : null,
  statementDescriptor: json['statement_descriptor'] as String?,
  statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
  transferData: json['transfer_data'] != null ? PostPaymentIntentsIntentRequestTransferData.fromJson(json['transfer_data'] as Map<String, dynamic>) : null,
  transferGroup: json['transfer_group'] as String?,
); }

/// Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
final int? amount;

/// Provides industry-specific information about the amount.
final PostPaymentIntentsIntentRequestAmountDetails? amountDetails;

/// The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
final PostPaymentIntentsIntentRequestApplicationFeeAmount? applicationFeeAmount;

/// Controls when the funds will be captured from the customer's account.
final PostPaymentIntentsIntentRequestCaptureMethod? captureMethod;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String? currency;

/// ID of the Customer this PaymentIntent belongs to, if one exists.
/// 
/// Payment methods attached to other Customers cannot be used with this PaymentIntent.
/// 
/// If [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
final String? customer;

/// ID of the Account representing the customer that this PaymentIntent belongs to, if one exists.
/// 
/// Payment methods attached to other Accounts cannot be used with this PaymentIntent.
/// 
/// If [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Account after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Account instead.
final String? customerAccount;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final String? description;

/// The list of payment method types to exclude from use with this payment.
final PostPaymentIntentsIntentRequestExcludedPaymentMethodTypes? excludedPaymentMethodTypes;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Automations to be run during the PaymentIntent lifecycle
final PostPaymentIntentsIntentRequestHooks? hooks;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostPaymentIntentsIntentRequestMetadata? metadata;

/// Provides industry-specific information about the charge.
final PostPaymentIntentsIntentRequestPaymentDetails? paymentDetails;

/// ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://docs.stripe.com/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent. To unset this field to null, pass in an empty string.
final String? paymentMethod;

/// The ID of the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) to use with this PaymentIntent.
final String? paymentMethodConfiguration;

/// If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
/// in the [payment_method](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-payment_method)
/// property on the PaymentIntent.
final PostPaymentIntentsIntentRequestPaymentMethodData? paymentMethodData;

/// Payment-method-specific configuration for this PaymentIntent.
final PostPaymentIntentsIntentRequestPaymentMethodOptions? paymentMethodOptions;

/// The list of payment method types (for example, card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
final List<String>? paymentMethodTypes;

/// Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
final PostPaymentIntentsIntentRequestReceiptEmail? receiptEmail;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
/// 
/// If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
final PostPaymentIntentsIntentRequestSetupFutureUsage? setupFutureUsage;

/// Shipping information for this PaymentIntent.
final PostPaymentIntentsIntentRequestShipping? shipping;

/// Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
/// 
/// Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
final String? statementDescriptor;

/// Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
final String? statementDescriptorSuffix;

/// Use this parameter to automatically create a Transfer when the payment succeeds. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
final PostPaymentIntentsIntentRequestTransferData? transferData;

/// A string that identifies the resulting payment as part of a group. You can only provide `transfer_group` if it hasn't been set. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
final String? transferGroup;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  if (amountDetails != null) 'amount_details': amountDetails?.toJson(),
  if (applicationFeeAmount != null) 'application_fee_amount': applicationFeeAmount?.toJson(),
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  'currency': ?currency,
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'description': ?description,
  if (excludedPaymentMethodTypes != null) 'excluded_payment_method_types': excludedPaymentMethodTypes?.toJson(),
  'expand': ?expand,
  if (hooks != null) 'hooks': hooks?.toJson(),
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (paymentDetails != null) 'payment_details': paymentDetails?.toJson(),
  'payment_method': ?paymentMethod,
  'payment_method_configuration': ?paymentMethodConfiguration,
  if (paymentMethodData != null) 'payment_method_data': paymentMethodData?.toJson(),
  if (paymentMethodOptions != null) 'payment_method_options': paymentMethodOptions?.toJson(),
  'payment_method_types': ?paymentMethodTypes,
  if (receiptEmail != null) 'receipt_email': receiptEmail?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  if (shipping != null) 'shipping': shipping?.toJson(),
  'statement_descriptor': ?statementDescriptor,
  'statement_descriptor_suffix': ?statementDescriptorSuffix,
  if (transferData != null) 'transfer_data': transferData?.toJson(),
  'transfer_group': ?transferGroup,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentIntentsIntentRequest copyWith({int Function()? amount, PostPaymentIntentsIntentRequestAmountDetails Function()? amountDetails, PostPaymentIntentsIntentRequestApplicationFeeAmount Function()? applicationFeeAmount, PostPaymentIntentsIntentRequestCaptureMethod Function()? captureMethod, String Function()? currency, String Function()? customer, String Function()? customerAccount, String Function()? description, PostPaymentIntentsIntentRequestExcludedPaymentMethodTypes Function()? excludedPaymentMethodTypes, List<String> Function()? expand, PostPaymentIntentsIntentRequestHooks Function()? hooks, PostPaymentIntentsIntentRequestMetadata Function()? metadata, PostPaymentIntentsIntentRequestPaymentDetails Function()? paymentDetails, String Function()? paymentMethod, String Function()? paymentMethodConfiguration, PostPaymentIntentsIntentRequestPaymentMethodData Function()? paymentMethodData, PostPaymentIntentsIntentRequestPaymentMethodOptions Function()? paymentMethodOptions, List<String> Function()? paymentMethodTypes, PostPaymentIntentsIntentRequestReceiptEmail Function()? receiptEmail, PostPaymentIntentsIntentRequestSetupFutureUsage Function()? setupFutureUsage, PostPaymentIntentsIntentRequestShipping Function()? shipping, String Function()? statementDescriptor, String Function()? statementDescriptorSuffix, PostPaymentIntentsIntentRequestTransferData Function()? transferData, String Function()? transferGroup, }) { return PostPaymentIntentsIntentRequest(
  amount: amount != null ? amount() : this.amount,
  amountDetails: amountDetails != null ? amountDetails() : this.amountDetails,
  applicationFeeAmount: applicationFeeAmount != null ? applicationFeeAmount() : this.applicationFeeAmount,
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  currency: currency != null ? currency() : this.currency,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  description: description != null ? description() : this.description,
  excludedPaymentMethodTypes: excludedPaymentMethodTypes != null ? excludedPaymentMethodTypes() : this.excludedPaymentMethodTypes,
  expand: expand != null ? expand() : this.expand,
  hooks: hooks != null ? hooks() : this.hooks,
  metadata: metadata != null ? metadata() : this.metadata,
  paymentDetails: paymentDetails != null ? paymentDetails() : this.paymentDetails,
  paymentMethod: paymentMethod != null ? paymentMethod() : this.paymentMethod,
  paymentMethodConfiguration: paymentMethodConfiguration != null ? paymentMethodConfiguration() : this.paymentMethodConfiguration,
  paymentMethodData: paymentMethodData != null ? paymentMethodData() : this.paymentMethodData,
  paymentMethodOptions: paymentMethodOptions != null ? paymentMethodOptions() : this.paymentMethodOptions,
  paymentMethodTypes: paymentMethodTypes != null ? paymentMethodTypes() : this.paymentMethodTypes,
  receiptEmail: receiptEmail != null ? receiptEmail() : this.receiptEmail,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  shipping: shipping != null ? shipping() : this.shipping,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
  statementDescriptorSuffix: statementDescriptorSuffix != null ? statementDescriptorSuffix() : this.statementDescriptorSuffix,
  transferData: transferData != null ? transferData() : this.transferData,
  transferGroup: transferGroup != null ? transferGroup() : this.transferGroup,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequest &&
          amount == other.amount &&
          amountDetails == other.amountDetails &&
          applicationFeeAmount == other.applicationFeeAmount &&
          captureMethod == other.captureMethod &&
          currency == other.currency &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          description == other.description &&
          excludedPaymentMethodTypes == other.excludedPaymentMethodTypes &&
          listEquals(expand, other.expand) &&
          hooks == other.hooks &&
          metadata == other.metadata &&
          paymentDetails == other.paymentDetails &&
          paymentMethod == other.paymentMethod &&
          paymentMethodConfiguration == other.paymentMethodConfiguration &&
          paymentMethodData == other.paymentMethodData &&
          paymentMethodOptions == other.paymentMethodOptions &&
          listEquals(paymentMethodTypes, other.paymentMethodTypes) &&
          receiptEmail == other.receiptEmail &&
          setupFutureUsage == other.setupFutureUsage &&
          shipping == other.shipping &&
          statementDescriptor == other.statementDescriptor &&
          statementDescriptorSuffix == other.statementDescriptorSuffix &&
          transferData == other.transferData &&
          transferGroup == other.transferGroup; } 
@override int get hashCode { return Object.hashAll([amount, amountDetails, applicationFeeAmount, captureMethod, currency, customer, customerAccount, description, excludedPaymentMethodTypes, Object.hashAll(expand ?? const []), hooks, metadata, paymentDetails, paymentMethod, paymentMethodConfiguration, paymentMethodData, paymentMethodOptions, Object.hashAll(paymentMethodTypes ?? const []), receiptEmail, setupFutureUsage, shipping, statementDescriptor, statementDescriptorSuffix, transferData, transferGroup]); } 
@override String toString() { return 'PostPaymentIntentsIntentRequest(amount: $amount, amountDetails: $amountDetails, applicationFeeAmount: $applicationFeeAmount, captureMethod: $captureMethod, currency: $currency, customer: $customer, customerAccount: $customerAccount, description: $description, excludedPaymentMethodTypes: $excludedPaymentMethodTypes, expand: $expand, hooks: $hooks, metadata: $metadata, paymentDetails: $paymentDetails, paymentMethod: $paymentMethod, paymentMethodConfiguration: $paymentMethodConfiguration, paymentMethodData: $paymentMethodData, paymentMethodOptions: $paymentMethodOptions, paymentMethodTypes: $paymentMethodTypes, receiptEmail: $receiptEmail, setupFutureUsage: $setupFutureUsage, shipping: $shipping, statementDescriptor: $statementDescriptor, statementDescriptorSuffix: $statementDescriptorSuffix, transferData: $transferData, transferGroup: $transferGroup)'; } 
 }
