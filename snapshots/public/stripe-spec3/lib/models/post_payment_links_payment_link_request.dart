// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'name_collection_params.dart';import 'post_payment_links_payment_link_request_after_completion.dart';import 'post_payment_links_payment_link_request_automatic_tax.dart';import 'post_payment_links_payment_link_request_custom_fields.dart';import 'post_payment_links_payment_link_request_custom_fields_variant1.dart';import 'post_payment_links_payment_link_request_custom_text.dart';import 'post_payment_links_payment_link_request_inactive_message.dart';import 'post_payment_links_payment_link_request_invoice_creation.dart';import 'post_payment_links_payment_link_request_line_items.dart';import 'post_payment_links_payment_link_request_name_collection.dart';import 'post_payment_links_payment_link_request_optional_items.dart';import 'post_payment_links_payment_link_request_optional_items_variant1.dart';import 'post_payment_links_payment_link_request_payment_intent_data.dart';import 'post_payment_links_payment_link_request_payment_method_types.dart';import 'post_payment_links_payment_link_request_phone_number_collection.dart';import 'post_payment_links_payment_link_request_restrictions.dart';import 'post_payment_links_payment_link_request_shipping_address_collection.dart';import 'post_payment_links_payment_link_request_subscription_data.dart';import 'post_payment_links_payment_link_request_tax_id_collection.dart';import 'restrictions_params.dart';import 'shipping_address_collection_params.dart';/// Configuration for collecting the customer's billing address. Defaults to `auto`.
final class PostPaymentLinksPaymentLinkRequestBillingAddressCollection {const PostPaymentLinksPaymentLinkRequestBillingAddressCollection._(this.value);

factory PostPaymentLinksPaymentLinkRequestBillingAddressCollection.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'required' => $required,
  _ => PostPaymentLinksPaymentLinkRequestBillingAddressCollection._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestBillingAddressCollection auto = PostPaymentLinksPaymentLinkRequestBillingAddressCollection._('auto');

static const PostPaymentLinksPaymentLinkRequestBillingAddressCollection $required = PostPaymentLinksPaymentLinkRequestBillingAddressCollection._('required');

static const List<PostPaymentLinksPaymentLinkRequestBillingAddressCollection> values = [auto, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestBillingAddressCollection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestBillingAddressCollection($value)'; } 
 }
/// Configures whether [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link create a [Customer](https://docs.stripe.com/api/customers).
final class PostPaymentLinksPaymentLinkRequestCustomerCreation {const PostPaymentLinksPaymentLinkRequestCustomerCreation._(this.value);

factory PostPaymentLinksPaymentLinkRequestCustomerCreation.fromJson(String json) { return switch (json) {
  'always' => always,
  'if_required' => ifRequired,
  _ => PostPaymentLinksPaymentLinkRequestCustomerCreation._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestCustomerCreation always = PostPaymentLinksPaymentLinkRequestCustomerCreation._('always');

static const PostPaymentLinksPaymentLinkRequestCustomerCreation ifRequired = PostPaymentLinksPaymentLinkRequestCustomerCreation._('if_required');

static const List<PostPaymentLinksPaymentLinkRequestCustomerCreation> values = [always, ifRequired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestCustomerCreation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestCustomerCreation($value)'; } 
 }
/// Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.
/// 
/// Can only be set in `subscription` mode. Defaults to `always`.
/// 
/// If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://docs.stripe.com/payments/checkout/free-trials).
final class PostPaymentLinksPaymentLinkRequestPaymentMethodCollection {const PostPaymentLinksPaymentLinkRequestPaymentMethodCollection._(this.value);

factory PostPaymentLinksPaymentLinkRequestPaymentMethodCollection.fromJson(String json) { return switch (json) {
  'always' => always,
  'if_required' => ifRequired,
  _ => PostPaymentLinksPaymentLinkRequestPaymentMethodCollection._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestPaymentMethodCollection always = PostPaymentLinksPaymentLinkRequestPaymentMethodCollection._('always');

static const PostPaymentLinksPaymentLinkRequestPaymentMethodCollection ifRequired = PostPaymentLinksPaymentLinkRequestPaymentMethodCollection._('if_required');

static const List<PostPaymentLinksPaymentLinkRequestPaymentMethodCollection> values = [always, ifRequired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestPaymentMethodCollection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestPaymentMethodCollection($value)'; } 
 }
/// Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://docs.stripe.com/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
final class PostPaymentLinksPaymentLinkRequestSubmitType {const PostPaymentLinksPaymentLinkRequestSubmitType._(this.value);

factory PostPaymentLinksPaymentLinkRequestSubmitType.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'book' => book,
  'donate' => donate,
  'pay' => pay,
  'subscribe' => subscribe,
  _ => PostPaymentLinksPaymentLinkRequestSubmitType._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestSubmitType auto = PostPaymentLinksPaymentLinkRequestSubmitType._('auto');

static const PostPaymentLinksPaymentLinkRequestSubmitType book = PostPaymentLinksPaymentLinkRequestSubmitType._('book');

static const PostPaymentLinksPaymentLinkRequestSubmitType donate = PostPaymentLinksPaymentLinkRequestSubmitType._('donate');

static const PostPaymentLinksPaymentLinkRequestSubmitType pay = PostPaymentLinksPaymentLinkRequestSubmitType._('pay');

static const PostPaymentLinksPaymentLinkRequestSubmitType subscribe = PostPaymentLinksPaymentLinkRequestSubmitType._('subscribe');

static const List<PostPaymentLinksPaymentLinkRequestSubmitType> values = [auto, book, donate, pay, subscribe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestSubmitType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestSubmitType($value)'; } 
 }
final class PostPaymentLinksPaymentLinkRequest {const PostPaymentLinksPaymentLinkRequest({this.active, this.afterCompletion, this.allowPromotionCodes, this.automaticTax, this.billingAddressCollection, this.customFields, this.customText, this.customerCreation, this.expand, this.inactiveMessage, this.invoiceCreation, this.lineItems, this.metadata, this.nameCollection, this.optionalItems, this.paymentIntentData, this.paymentMethodCollection, this.paymentMethodTypes, this.phoneNumberCollection, this.restrictions, this.shippingAddressCollection, this.submitType, this.subscriptionData, this.taxIdCollection, });

factory PostPaymentLinksPaymentLinkRequest.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequest(
  active: json['active'] as bool?,
  afterCompletion: json['after_completion'] != null ? PostPaymentLinksPaymentLinkRequestAfterCompletion.fromJson(json['after_completion'] as Map<String, dynamic>) : null,
  allowPromotionCodes: json['allow_promotion_codes'] as bool?,
  automaticTax: json['automatic_tax'] != null ? PostPaymentLinksPaymentLinkRequestAutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>) : null,
  billingAddressCollection: json['billing_address_collection'] != null ? PostPaymentLinksPaymentLinkRequestBillingAddressCollection.fromJson(json['billing_address_collection'] as String) : null,
  customFields: json['custom_fields'] != null ? OneOf2.parse(json['custom_fields'], fromA: (v) => (v as List<dynamic>).map((e) => PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2.fromJson(v as String),) : null,
  customText: json['custom_text'] != null ? PostPaymentLinksPaymentLinkRequestCustomText.fromJson(json['custom_text'] as Map<String, dynamic>) : null,
  customerCreation: json['customer_creation'] != null ? PostPaymentLinksPaymentLinkRequestCustomerCreation.fromJson(json['customer_creation'] as String) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  inactiveMessage: json['inactive_message'] != null ? OneOf2.parse(json['inactive_message'], fromA: (v) => v as String, fromB: (v) => PostPaymentLinksPaymentLinkRequestInactiveMessageVariant2.fromJson(v as String),) : null,
  invoiceCreation: json['invoice_creation'] != null ? PostPaymentLinksPaymentLinkRequestInvoiceCreation.fromJson(json['invoice_creation'] as Map<String, dynamic>) : null,
  lineItems: (json['line_items'] as List<dynamic>?)?.map((e) => PostPaymentLinksPaymentLinkRequestLineItems.fromJson(e as Map<String, dynamic>)).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  nameCollection: json['name_collection'] != null ? OneOf2.parse(json['name_collection'], fromA: (v) => NameCollectionParams.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentLinksPaymentLinkRequestNameCollectionVariant2.fromJson(v as String),) : null,
  optionalItems: json['optional_items'] != null ? OneOf2.parse(json['optional_items'], fromA: (v) => (v as List<dynamic>).map((e) => PostPaymentLinksPaymentLinkRequestOptionalItemsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2.fromJson(v as String),) : null,
  paymentIntentData: json['payment_intent_data'] != null ? PostPaymentLinksPaymentLinkRequestPaymentIntentData.fromJson(json['payment_intent_data'] as Map<String, dynamic>) : null,
  paymentMethodCollection: json['payment_method_collection'] != null ? PostPaymentLinksPaymentLinkRequestPaymentMethodCollection.fromJson(json['payment_method_collection'] as String) : null,
  paymentMethodTypes: json['payment_method_types'] != null ? OneOf2.parse(json['payment_method_types'], fromA: (v) => (v as List<dynamic>).map((e) => PostPaymentLinksPaymentLinkRequestPaymentMethodTypesVariant1.fromJson(e as String)).toList(), fromB: (v) => PostPaymentLinksPaymentLinkRequestPaymentMethodTypesVariant2.fromJson(v as String),) : null,
  phoneNumberCollection: json['phone_number_collection'] != null ? PostPaymentLinksPaymentLinkRequestPhoneNumberCollection.fromJson(json['phone_number_collection'] as Map<String, dynamic>) : null,
  restrictions: json['restrictions'] != null ? OneOf2.parse(json['restrictions'], fromA: (v) => RestrictionsParams.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentLinksPaymentLinkRequestRestrictionsVariant2.fromJson(v as String),) : null,
  shippingAddressCollection: json['shipping_address_collection'] != null ? OneOf2.parse(json['shipping_address_collection'], fromA: (v) => ShippingAddressCollectionParams.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2.fromJson(v as String),) : null,
  submitType: json['submit_type'] != null ? PostPaymentLinksPaymentLinkRequestSubmitType.fromJson(json['submit_type'] as String) : null,
  subscriptionData: json['subscription_data'] != null ? PostPaymentLinksPaymentLinkRequestSubscriptionData.fromJson(json['subscription_data'] as Map<String, dynamic>) : null,
  taxIdCollection: json['tax_id_collection'] != null ? PostPaymentLinksPaymentLinkRequestTaxIdCollection.fromJson(json['tax_id_collection'] as Map<String, dynamic>) : null,
); }

/// Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
final bool? active;

/// Behavior after the purchase is complete.
final PostPaymentLinksPaymentLinkRequestAfterCompletion? afterCompletion;

/// Enables user redeemable promotion codes.
final bool? allowPromotionCodes;

/// Configuration for automatic tax collection.
final PostPaymentLinksPaymentLinkRequestAutomaticTax? automaticTax;

/// Configuration for collecting the customer's billing address. Defaults to `auto`.
final PostPaymentLinksPaymentLinkRequestBillingAddressCollection? billingAddressCollection;

/// Collect additional information from your customer using custom fields. Up to 3 fields are supported. You can't set this parameter if `ui_mode` is `custom`.
final PostPaymentLinksPaymentLinkRequestCustomFields? customFields;

/// Display additional text for your customers using custom text. You can't set this parameter if `ui_mode` is `custom`.
final PostPaymentLinksPaymentLinkRequestCustomText? customText;

/// Configures whether [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link create a [Customer](https://docs.stripe.com/api/customers).
final PostPaymentLinksPaymentLinkRequestCustomerCreation? customerCreation;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The custom message to be displayed to a customer when a payment link is no longer active.
final PostPaymentLinksPaymentLinkRequestInactiveMessage? inactiveMessage;

/// Generate a post-purchase Invoice for one-time payments.
final PostPaymentLinksPaymentLinkRequestInvoiceCreation? invoiceCreation;

/// The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
final List<PostPaymentLinksPaymentLinkRequestLineItems>? lineItems;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link.
final Map<String,String>? metadata;

/// Controls settings applied for collecting the customer's name.
final PostPaymentLinksPaymentLinkRequestNameCollection? nameCollection;

/// A list of optional items the customer can add to their order at checkout. Use this parameter to pass one-time or recurring [Prices](https://docs.stripe.com/api/prices).
/// There is a maximum of 10 optional items allowed on a payment link, and the existing limits on the number of line items allowed on a payment link apply to the combined number of line items and optional items.
/// There is a maximum of 20 combined line items and optional items.
final PostPaymentLinksPaymentLinkRequestOptionalItems? optionalItems;

/// A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
final PostPaymentLinksPaymentLinkRequestPaymentIntentData? paymentIntentData;

/// Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.
/// 
/// Can only be set in `subscription` mode. Defaults to `always`.
/// 
/// If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://docs.stripe.com/payments/checkout/free-trials).
final PostPaymentLinksPaymentLinkRequestPaymentMethodCollection? paymentMethodCollection;

/// The list of payment method types that customers can use. Pass an empty string to enable dynamic payment methods that use your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
final PostPaymentLinksPaymentLinkRequestPaymentMethodTypes? paymentMethodTypes;

/// Controls phone number collection settings during checkout.
/// 
/// We recommend that you review your privacy policy and check with your legal contacts.
final PostPaymentLinksPaymentLinkRequestPhoneNumberCollection? phoneNumberCollection;

/// Settings that restrict the usage of a payment link.
final PostPaymentLinksPaymentLinkRequestRestrictions? restrictions;

/// Configuration for collecting the customer's shipping address.
final PostPaymentLinksPaymentLinkRequestShippingAddressCollection? shippingAddressCollection;

/// Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://docs.stripe.com/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
final PostPaymentLinksPaymentLinkRequestSubmitType? submitType;

/// When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
final PostPaymentLinksPaymentLinkRequestSubscriptionData? subscriptionData;

/// Controls tax ID collection during checkout.
final PostPaymentLinksPaymentLinkRequestTaxIdCollection? taxIdCollection;

Map<String, dynamic> toJson() { return {
  'active': ?active,
  if (afterCompletion != null) 'after_completion': afterCompletion?.toJson(),
  'allow_promotion_codes': ?allowPromotionCodes,
  if (automaticTax != null) 'automatic_tax': automaticTax?.toJson(),
  if (billingAddressCollection != null) 'billing_address_collection': billingAddressCollection?.toJson(),
  if (customFields != null) 'custom_fields': customFields?.toJson(),
  if (customText != null) 'custom_text': customText?.toJson(),
  if (customerCreation != null) 'customer_creation': customerCreation?.toJson(),
  'expand': ?expand,
  if (inactiveMessage != null) 'inactive_message': inactiveMessage?.toJson(),
  if (invoiceCreation != null) 'invoice_creation': invoiceCreation?.toJson(),
  if (lineItems != null) 'line_items': lineItems?.map((e) => e.toJson()).toList(),
  'metadata': ?metadata,
  if (nameCollection != null) 'name_collection': nameCollection?.toJson(),
  if (optionalItems != null) 'optional_items': optionalItems?.toJson(),
  if (paymentIntentData != null) 'payment_intent_data': paymentIntentData?.toJson(),
  if (paymentMethodCollection != null) 'payment_method_collection': paymentMethodCollection?.toJson(),
  if (paymentMethodTypes != null) 'payment_method_types': paymentMethodTypes?.toJson(),
  if (phoneNumberCollection != null) 'phone_number_collection': phoneNumberCollection?.toJson(),
  if (restrictions != null) 'restrictions': restrictions?.toJson(),
  if (shippingAddressCollection != null) 'shipping_address_collection': shippingAddressCollection?.toJson(),
  if (submitType != null) 'submit_type': submitType?.toJson(),
  if (subscriptionData != null) 'subscription_data': subscriptionData?.toJson(),
  if (taxIdCollection != null) 'tax_id_collection': taxIdCollection?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'active', 'after_completion', 'allow_promotion_codes', 'automatic_tax', 'billing_address_collection', 'custom_fields', 'custom_text', 'customer_creation', 'expand', 'inactive_message', 'invoice_creation', 'line_items', 'metadata', 'name_collection', 'optional_items', 'payment_intent_data', 'payment_method_collection', 'payment_method_types', 'phone_number_collection', 'restrictions', 'shipping_address_collection', 'submit_type', 'subscription_data', 'tax_id_collection'}.contains(key)); } 
PostPaymentLinksPaymentLinkRequest copyWith({bool Function()? active, PostPaymentLinksPaymentLinkRequestAfterCompletion Function()? afterCompletion, bool Function()? allowPromotionCodes, PostPaymentLinksPaymentLinkRequestAutomaticTax Function()? automaticTax, PostPaymentLinksPaymentLinkRequestBillingAddressCollection Function()? billingAddressCollection, PostPaymentLinksPaymentLinkRequestCustomFields Function()? customFields, PostPaymentLinksPaymentLinkRequestCustomText Function()? customText, PostPaymentLinksPaymentLinkRequestCustomerCreation Function()? customerCreation, List<String> Function()? expand, PostPaymentLinksPaymentLinkRequestInactiveMessage Function()? inactiveMessage, PostPaymentLinksPaymentLinkRequestInvoiceCreation Function()? invoiceCreation, List<PostPaymentLinksPaymentLinkRequestLineItems> Function()? lineItems, Map<String, String> Function()? metadata, PostPaymentLinksPaymentLinkRequestNameCollection Function()? nameCollection, PostPaymentLinksPaymentLinkRequestOptionalItems Function()? optionalItems, PostPaymentLinksPaymentLinkRequestPaymentIntentData Function()? paymentIntentData, PostPaymentLinksPaymentLinkRequestPaymentMethodCollection Function()? paymentMethodCollection, PostPaymentLinksPaymentLinkRequestPaymentMethodTypes Function()? paymentMethodTypes, PostPaymentLinksPaymentLinkRequestPhoneNumberCollection Function()? phoneNumberCollection, PostPaymentLinksPaymentLinkRequestRestrictions Function()? restrictions, PostPaymentLinksPaymentLinkRequestShippingAddressCollection Function()? shippingAddressCollection, PostPaymentLinksPaymentLinkRequestSubmitType Function()? submitType, PostPaymentLinksPaymentLinkRequestSubscriptionData Function()? subscriptionData, PostPaymentLinksPaymentLinkRequestTaxIdCollection Function()? taxIdCollection, }) { return PostPaymentLinksPaymentLinkRequest(
  active: active != null ? active() : this.active,
  afterCompletion: afterCompletion != null ? afterCompletion() : this.afterCompletion,
  allowPromotionCodes: allowPromotionCodes != null ? allowPromotionCodes() : this.allowPromotionCodes,
  automaticTax: automaticTax != null ? automaticTax() : this.automaticTax,
  billingAddressCollection: billingAddressCollection != null ? billingAddressCollection() : this.billingAddressCollection,
  customFields: customFields != null ? customFields() : this.customFields,
  customText: customText != null ? customText() : this.customText,
  customerCreation: customerCreation != null ? customerCreation() : this.customerCreation,
  expand: expand != null ? expand() : this.expand,
  inactiveMessage: inactiveMessage != null ? inactiveMessage() : this.inactiveMessage,
  invoiceCreation: invoiceCreation != null ? invoiceCreation() : this.invoiceCreation,
  lineItems: lineItems != null ? lineItems() : this.lineItems,
  metadata: metadata != null ? metadata() : this.metadata,
  nameCollection: nameCollection != null ? nameCollection() : this.nameCollection,
  optionalItems: optionalItems != null ? optionalItems() : this.optionalItems,
  paymentIntentData: paymentIntentData != null ? paymentIntentData() : this.paymentIntentData,
  paymentMethodCollection: paymentMethodCollection != null ? paymentMethodCollection() : this.paymentMethodCollection,
  paymentMethodTypes: paymentMethodTypes != null ? paymentMethodTypes() : this.paymentMethodTypes,
  phoneNumberCollection: phoneNumberCollection != null ? phoneNumberCollection() : this.phoneNumberCollection,
  restrictions: restrictions != null ? restrictions() : this.restrictions,
  shippingAddressCollection: shippingAddressCollection != null ? shippingAddressCollection() : this.shippingAddressCollection,
  submitType: submitType != null ? submitType() : this.submitType,
  subscriptionData: subscriptionData != null ? subscriptionData() : this.subscriptionData,
  taxIdCollection: taxIdCollection != null ? taxIdCollection() : this.taxIdCollection,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequest &&
          active == other.active &&
          afterCompletion == other.afterCompletion &&
          allowPromotionCodes == other.allowPromotionCodes &&
          automaticTax == other.automaticTax &&
          billingAddressCollection == other.billingAddressCollection &&
          customFields == other.customFields &&
          customText == other.customText &&
          customerCreation == other.customerCreation &&
          listEquals(expand, other.expand) &&
          inactiveMessage == other.inactiveMessage &&
          invoiceCreation == other.invoiceCreation &&
          listEquals(lineItems, other.lineItems) &&
          metadata == other.metadata &&
          nameCollection == other.nameCollection &&
          optionalItems == other.optionalItems &&
          paymentIntentData == other.paymentIntentData &&
          paymentMethodCollection == other.paymentMethodCollection &&
          paymentMethodTypes == other.paymentMethodTypes &&
          phoneNumberCollection == other.phoneNumberCollection &&
          restrictions == other.restrictions &&
          shippingAddressCollection == other.shippingAddressCollection &&
          submitType == other.submitType &&
          subscriptionData == other.subscriptionData &&
          taxIdCollection == other.taxIdCollection; } 
@override int get hashCode { return Object.hashAll([active, afterCompletion, allowPromotionCodes, automaticTax, billingAddressCollection, customFields, customText, customerCreation, Object.hashAll(expand ?? const []), inactiveMessage, invoiceCreation, Object.hashAll(lineItems ?? const []), metadata, nameCollection, optionalItems, paymentIntentData, paymentMethodCollection, paymentMethodTypes, phoneNumberCollection, restrictions, shippingAddressCollection, submitType, subscriptionData, taxIdCollection]); } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequest(active: $active, afterCompletion: $afterCompletion, allowPromotionCodes: $allowPromotionCodes, automaticTax: $automaticTax, billingAddressCollection: $billingAddressCollection, customFields: $customFields, customText: $customText, customerCreation: $customerCreation, expand: $expand, inactiveMessage: $inactiveMessage, invoiceCreation: $invoiceCreation, lineItems: $lineItems, metadata: $metadata, nameCollection: $nameCollection, optionalItems: $optionalItems, paymentIntentData: $paymentIntentData, paymentMethodCollection: $paymentMethodCollection, paymentMethodTypes: $paymentMethodTypes, phoneNumberCollection: $phoneNumberCollection, restrictions: $restrictions, shippingAddressCollection: $shippingAddressCollection, submitType: $submitType, subscriptionData: $subscriptionData, taxIdCollection: $taxIdCollection)'; } 
 }
