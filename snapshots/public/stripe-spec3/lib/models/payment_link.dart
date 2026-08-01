// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'application.dart';import 'deleted_application.dart';import 'payment_link_application.dart';import 'payment_link_line_items.dart';import 'payment_link_on_behalf_of.dart';import 'payment_links_resource_after_completion.dart';import 'payment_links_resource_automatic_tax.dart';import 'payment_links_resource_consent_collection.dart';import 'payment_links_resource_custom_fields.dart';import 'payment_links_resource_custom_text.dart';import 'payment_links_resource_invoice_creation.dart';import 'payment_links_resource_name_collection.dart';import 'payment_links_resource_optional_item.dart';import 'payment_links_resource_payment_intent_data.dart';import 'payment_links_resource_phone_number_collection.dart';import 'payment_links_resource_restrictions.dart';import 'payment_links_resource_shipping_address_collection.dart';import 'payment_links_resource_shipping_option.dart';import 'payment_links_resource_subscription_data.dart';import 'payment_links_resource_tax_id_collection.dart';import 'payment_links_resource_transfer_data.dart';/// Configuration for collecting the customer's billing address. Defaults to `auto`.
@immutable final class PaymentLinkBillingAddressCollection {const PaymentLinkBillingAddressCollection._(this.value);

factory PaymentLinkBillingAddressCollection.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'required' => $required,
  _ => PaymentLinkBillingAddressCollection._(json),
}; }

static const PaymentLinkBillingAddressCollection auto = PaymentLinkBillingAddressCollection._('auto');

static const PaymentLinkBillingAddressCollection $required = PaymentLinkBillingAddressCollection._('required');

static const List<PaymentLinkBillingAddressCollection> values = [auto, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinkBillingAddressCollection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinkBillingAddressCollection($value)'; } 
 }
/// Configuration for Customer creation during checkout.
@immutable final class PaymentLinkCustomerCreation {const PaymentLinkCustomerCreation._(this.value);

factory PaymentLinkCustomerCreation.fromJson(String json) { return switch (json) {
  'always' => always,
  'if_required' => ifRequired,
  _ => PaymentLinkCustomerCreation._(json),
}; }

static const PaymentLinkCustomerCreation always = PaymentLinkCustomerCreation._('always');

static const PaymentLinkCustomerCreation ifRequired = PaymentLinkCustomerCreation._('if_required');

static const List<PaymentLinkCustomerCreation> values = [always, ifRequired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinkCustomerCreation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinkCustomerCreation($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class PaymentLinkObject {const PaymentLinkObject._(this.value);

factory PaymentLinkObject.fromJson(String json) { return switch (json) {
  'payment_link' => paymentLink,
  _ => PaymentLinkObject._(json),
}; }

static const PaymentLinkObject paymentLink = PaymentLinkObject._('payment_link');

static const List<PaymentLinkObject> values = [paymentLink];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinkObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinkObject($value)'; } 
 }
/// Configuration for collecting a payment method during checkout. Defaults to `always`.
@immutable final class PaymentLinkPaymentMethodCollection {const PaymentLinkPaymentMethodCollection._(this.value);

factory PaymentLinkPaymentMethodCollection.fromJson(String json) { return switch (json) {
  'always' => always,
  'if_required' => ifRequired,
  _ => PaymentLinkPaymentMethodCollection._(json),
}; }

static const PaymentLinkPaymentMethodCollection always = PaymentLinkPaymentMethodCollection._('always');

static const PaymentLinkPaymentMethodCollection ifRequired = PaymentLinkPaymentMethodCollection._('if_required');

static const List<PaymentLinkPaymentMethodCollection> values = [always, ifRequired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinkPaymentMethodCollection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinkPaymentMethodCollection($value)'; } 
 }
@immutable final class PaymentLinkPaymentMethodTypes {const PaymentLinkPaymentMethodTypes._(this.value);

factory PaymentLinkPaymentMethodTypes.fromJson(String json) { return switch (json) {
  'affirm' => affirm,
  'afterpay_clearpay' => afterpayClearpay,
  'alipay' => alipay,
  'alma' => alma,
  'au_becs_debit' => auBecsDebit,
  'bacs_debit' => bacsDebit,
  'bancontact' => bancontact,
  'billie' => billie,
  'blik' => blik,
  'boleto' => boleto,
  'card' => card,
  'cashapp' => cashapp,
  'eps' => eps,
  'fpx' => fpx,
  'giropay' => giropay,
  'grabpay' => grabpay,
  'ideal' => ideal,
  'klarna' => klarna,
  'konbini' => konbini,
  'link' => link,
  'mb_way' => mbWay,
  'mobilepay' => mobilepay,
  'multibanco' => multibanco,
  'oxxo' => oxxo,
  'p24' => p24,
  'pay_by_bank' => payByBank,
  'paynow' => paynow,
  'paypal' => paypal,
  'payto' => payto,
  'pix' => pix,
  'promptpay' => promptpay,
  'satispay' => satispay,
  'sepa_debit' => sepaDebit,
  'sofort' => sofort,
  'swish' => swish,
  'twint' => twint,
  'us_bank_account' => usBankAccount,
  'wechat_pay' => wechatPay,
  'zip' => zip,
  _ => PaymentLinkPaymentMethodTypes._(json),
}; }

static const PaymentLinkPaymentMethodTypes affirm = PaymentLinkPaymentMethodTypes._('affirm');

static const PaymentLinkPaymentMethodTypes afterpayClearpay = PaymentLinkPaymentMethodTypes._('afterpay_clearpay');

static const PaymentLinkPaymentMethodTypes alipay = PaymentLinkPaymentMethodTypes._('alipay');

static const PaymentLinkPaymentMethodTypes alma = PaymentLinkPaymentMethodTypes._('alma');

static const PaymentLinkPaymentMethodTypes auBecsDebit = PaymentLinkPaymentMethodTypes._('au_becs_debit');

static const PaymentLinkPaymentMethodTypes bacsDebit = PaymentLinkPaymentMethodTypes._('bacs_debit');

static const PaymentLinkPaymentMethodTypes bancontact = PaymentLinkPaymentMethodTypes._('bancontact');

static const PaymentLinkPaymentMethodTypes billie = PaymentLinkPaymentMethodTypes._('billie');

static const PaymentLinkPaymentMethodTypes blik = PaymentLinkPaymentMethodTypes._('blik');

static const PaymentLinkPaymentMethodTypes boleto = PaymentLinkPaymentMethodTypes._('boleto');

static const PaymentLinkPaymentMethodTypes card = PaymentLinkPaymentMethodTypes._('card');

static const PaymentLinkPaymentMethodTypes cashapp = PaymentLinkPaymentMethodTypes._('cashapp');

static const PaymentLinkPaymentMethodTypes eps = PaymentLinkPaymentMethodTypes._('eps');

static const PaymentLinkPaymentMethodTypes fpx = PaymentLinkPaymentMethodTypes._('fpx');

static const PaymentLinkPaymentMethodTypes giropay = PaymentLinkPaymentMethodTypes._('giropay');

static const PaymentLinkPaymentMethodTypes grabpay = PaymentLinkPaymentMethodTypes._('grabpay');

static const PaymentLinkPaymentMethodTypes ideal = PaymentLinkPaymentMethodTypes._('ideal');

static const PaymentLinkPaymentMethodTypes klarna = PaymentLinkPaymentMethodTypes._('klarna');

static const PaymentLinkPaymentMethodTypes konbini = PaymentLinkPaymentMethodTypes._('konbini');

static const PaymentLinkPaymentMethodTypes link = PaymentLinkPaymentMethodTypes._('link');

static const PaymentLinkPaymentMethodTypes mbWay = PaymentLinkPaymentMethodTypes._('mb_way');

static const PaymentLinkPaymentMethodTypes mobilepay = PaymentLinkPaymentMethodTypes._('mobilepay');

static const PaymentLinkPaymentMethodTypes multibanco = PaymentLinkPaymentMethodTypes._('multibanco');

static const PaymentLinkPaymentMethodTypes oxxo = PaymentLinkPaymentMethodTypes._('oxxo');

static const PaymentLinkPaymentMethodTypes p24 = PaymentLinkPaymentMethodTypes._('p24');

static const PaymentLinkPaymentMethodTypes payByBank = PaymentLinkPaymentMethodTypes._('pay_by_bank');

static const PaymentLinkPaymentMethodTypes paynow = PaymentLinkPaymentMethodTypes._('paynow');

static const PaymentLinkPaymentMethodTypes paypal = PaymentLinkPaymentMethodTypes._('paypal');

static const PaymentLinkPaymentMethodTypes payto = PaymentLinkPaymentMethodTypes._('payto');

static const PaymentLinkPaymentMethodTypes pix = PaymentLinkPaymentMethodTypes._('pix');

static const PaymentLinkPaymentMethodTypes promptpay = PaymentLinkPaymentMethodTypes._('promptpay');

static const PaymentLinkPaymentMethodTypes satispay = PaymentLinkPaymentMethodTypes._('satispay');

static const PaymentLinkPaymentMethodTypes sepaDebit = PaymentLinkPaymentMethodTypes._('sepa_debit');

static const PaymentLinkPaymentMethodTypes sofort = PaymentLinkPaymentMethodTypes._('sofort');

static const PaymentLinkPaymentMethodTypes swish = PaymentLinkPaymentMethodTypes._('swish');

static const PaymentLinkPaymentMethodTypes twint = PaymentLinkPaymentMethodTypes._('twint');

static const PaymentLinkPaymentMethodTypes usBankAccount = PaymentLinkPaymentMethodTypes._('us_bank_account');

static const PaymentLinkPaymentMethodTypes wechatPay = PaymentLinkPaymentMethodTypes._('wechat_pay');

static const PaymentLinkPaymentMethodTypes zip = PaymentLinkPaymentMethodTypes._('zip');

static const List<PaymentLinkPaymentMethodTypes> values = [affirm, afterpayClearpay, alipay, alma, auBecsDebit, bacsDebit, bancontact, billie, blik, boleto, card, cashapp, eps, fpx, giropay, grabpay, ideal, klarna, konbini, link, mbWay, mobilepay, multibanco, oxxo, p24, payByBank, paynow, paypal, payto, pix, promptpay, satispay, sepaDebit, sofort, swish, twint, usBankAccount, wechatPay, zip];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinkPaymentMethodTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinkPaymentMethodTypes($value)'; } 
 }
/// Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
@immutable final class PaymentLinkSubmitType {const PaymentLinkSubmitType._(this.value);

factory PaymentLinkSubmitType.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'book' => book,
  'donate' => donate,
  'pay' => pay,
  'subscribe' => subscribe,
  _ => PaymentLinkSubmitType._(json),
}; }

static const PaymentLinkSubmitType auto = PaymentLinkSubmitType._('auto');

static const PaymentLinkSubmitType book = PaymentLinkSubmitType._('book');

static const PaymentLinkSubmitType donate = PaymentLinkSubmitType._('donate');

static const PaymentLinkSubmitType pay = PaymentLinkSubmitType._('pay');

static const PaymentLinkSubmitType subscribe = PaymentLinkSubmitType._('subscribe');

static const List<PaymentLinkSubmitType> values = [auto, book, donate, pay, subscribe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinkSubmitType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinkSubmitType($value)'; } 
 }
/// A payment link is a shareable URL that will take your customers to a hosted payment page. A payment link can be shared and used multiple times.
/// 
/// When a customer opens a payment link it will open a new [checkout session](https://docs.stripe.com/api/checkout/sessions) to render the payment page. You can use [checkout session events](https://docs.stripe.com/api/events/types#event_types-checkout.session.completed) to track payments through payment links.
/// 
/// Related guide: [Payment Links API](https://docs.stripe.com/payment-links)
@immutable final class PaymentLink {const PaymentLink({required this.livemode, required this.afterCompletion, required this.allowPromotionCodes, required this.customerCreation, required this.automaticTax, required this.billingAddressCollection, required this.currency, required this.customFields, required this.customText, required this.active, required this.id, required this.shippingOptions, required this.metadata, required this.taxIdCollection, required this.paymentMethodCollection, required this.url, required this.object, required this.phoneNumberCollection, required this.submitType, this.nameCollection, this.lineItems, this.onBehalfOf = const Omittable.absent(), this.invoiceCreation = const Omittable.absent(), this.paymentIntentData = const Omittable.absent(), this.inactiveMessage = const Omittable.absent(), this.paymentMethodTypes = const Omittable.absent(), this.consentCollection = const Omittable.absent(), this.restrictions = const Omittable.absent(), this.shippingAddressCollection = const Omittable.absent(), this.optionalItems = const Omittable.absent(), this.applicationFeeAmount = const Omittable.absent(), this.subscriptionData = const Omittable.absent(), this.application = const Omittable.absent(), this.transferData = const Omittable.absent(), this.applicationFeePercent = const Omittable.absent(), });

factory PaymentLink.fromJson(Map<String, dynamic> json) { return PaymentLink(
  active: json['active'] as bool,
  afterCompletion: PaymentLinksResourceAfterCompletion.fromJson(json['after_completion'] as Map<String, dynamic>),
  allowPromotionCodes: json['allow_promotion_codes'] as bool,
  application: json.containsKey('application') ? Omittable(json['application'] != null ? OneOf3.parse(json['application'], fromA: (v) => v as String, fromB: (v) => Application.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedApplication.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  applicationFeeAmount: json.containsKey('application_fee_amount') ? Omittable(json['application_fee_amount'] != null ? (json['application_fee_amount'] as num).toInt() : null) : const Omittable.absent(),
  applicationFeePercent: json.containsKey('application_fee_percent') ? Omittable(json['application_fee_percent'] != null ? (json['application_fee_percent'] as num).toDouble() : null) : const Omittable.absent(),
  automaticTax: PaymentLinksResourceAutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>),
  billingAddressCollection: PaymentLinkBillingAddressCollection.fromJson(json['billing_address_collection'] as String),
  consentCollection: json.containsKey('consent_collection') ? Omittable(json['consent_collection'] != null ? PaymentLinksResourceConsentCollection.fromJson(json['consent_collection'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  currency: json['currency'] as String,
  customFields: (json['custom_fields'] as List<dynamic>).map((e) => PaymentLinksResourceCustomFields.fromJson(e as Map<String, dynamic>)).toList(),
  customText: PaymentLinksResourceCustomText.fromJson(json['custom_text'] as Map<String, dynamic>),
  customerCreation: PaymentLinkCustomerCreation.fromJson(json['customer_creation'] as String),
  id: json['id'] as String,
  inactiveMessage: json.containsKey('inactive_message') ? Omittable(json['inactive_message'] as String?) : const Omittable.absent(),
  invoiceCreation: json.containsKey('invoice_creation') ? Omittable(json['invoice_creation'] != null ? PaymentLinksResourceInvoiceCreation.fromJson(json['invoice_creation'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  lineItems: json['line_items'] != null ? PaymentLinkLineItems.fromJson(json['line_items'] as Map<String, dynamic>) : null,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  nameCollection: json['name_collection'] != null ? PaymentLinksResourceNameCollection.fromJson(json['name_collection'] as Map<String, dynamic>) : null,
  object: PaymentLinkObject.fromJson(json['object'] as String),
  onBehalfOf: json.containsKey('on_behalf_of') ? Omittable(json['on_behalf_of'] != null ? OneOf2.parse(json['on_behalf_of'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  optionalItems: json.containsKey('optional_items') ? Omittable((json['optional_items'] as List<dynamic>?)?.map((e) => PaymentLinksResourceOptionalItem.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  paymentIntentData: json.containsKey('payment_intent_data') ? Omittable(json['payment_intent_data'] != null ? PaymentLinksResourcePaymentIntentData.fromJson(json['payment_intent_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paymentMethodCollection: PaymentLinkPaymentMethodCollection.fromJson(json['payment_method_collection'] as String),
  paymentMethodTypes: json.containsKey('payment_method_types') ? Omittable((json['payment_method_types'] as List<dynamic>?)?.map((e) => PaymentLinkPaymentMethodTypes.fromJson(e as String)).toList()) : const Omittable.absent(),
  phoneNumberCollection: PaymentLinksResourcePhoneNumberCollection.fromJson(json['phone_number_collection'] as Map<String, dynamic>),
  restrictions: json.containsKey('restrictions') ? Omittable(json['restrictions'] != null ? PaymentLinksResourceRestrictions.fromJson(json['restrictions'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  shippingAddressCollection: json.containsKey('shipping_address_collection') ? Omittable(json['shipping_address_collection'] != null ? PaymentLinksResourceShippingAddressCollection.fromJson(json['shipping_address_collection'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  shippingOptions: (json['shipping_options'] as List<dynamic>).map((e) => PaymentLinksResourceShippingOption.fromJson(e as Map<String, dynamic>)).toList(),
  submitType: PaymentLinkSubmitType.fromJson(json['submit_type'] as String),
  subscriptionData: json.containsKey('subscription_data') ? Omittable(json['subscription_data'] != null ? PaymentLinksResourceSubscriptionData.fromJson(json['subscription_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  taxIdCollection: PaymentLinksResourceTaxIdCollection.fromJson(json['tax_id_collection'] as Map<String, dynamic>),
  transferData: json.containsKey('transfer_data') ? Omittable(json['transfer_data'] != null ? PaymentLinksResourceTransferData.fromJson(json['transfer_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  url: json['url'] as String,
); }

/// Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
final bool active;

final PaymentLinksResourceAfterCompletion afterCompletion;

/// Whether user redeemable promotion codes are enabled.
final bool allowPromotionCodes;

/// The ID of the Connect application that created the Payment Link.
final Omittable<PaymentLinkApplication?> application;

/// The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
final Omittable<int?> applicationFeeAmount;

/// This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
final Omittable<double?> applicationFeePercent;

final PaymentLinksResourceAutomaticTax automaticTax;

/// Configuration for collecting the customer's billing address. Defaults to `auto`.
final PaymentLinkBillingAddressCollection billingAddressCollection;

/// When set, provides configuration to gather active consent from customers.
final Omittable<PaymentLinksResourceConsentCollection?> consentCollection;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// Collect additional information from your customer using custom fields. Up to 3 fields are supported. You can't set this parameter if `ui_mode` is `custom`.
final List<PaymentLinksResourceCustomFields> customFields;

final PaymentLinksResourceCustomText customText;

/// Configuration for Customer creation during checkout.
final PaymentLinkCustomerCreation customerCreation;

/// Unique identifier for the object.
final String id;

/// The custom message to be displayed to a customer when a payment link is no longer active.
final Omittable<String?> inactiveMessage;

/// Configuration for creating invoice for payment mode payment links.
final Omittable<PaymentLinksResourceInvoiceCreation?> invoiceCreation;

/// The line items representing what is being sold.
final PaymentLinkLineItems? lineItems;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

final PaymentLinksResourceNameCollection? nameCollection;

/// String representing the object's type. Objects of the same type share the same value.
final PaymentLinkObject object;

/// The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
final Omittable<PaymentLinkOnBehalfOf?> onBehalfOf;

/// The optional items presented to the customer at checkout.
final Omittable<List<PaymentLinksResourceOptionalItem>?> optionalItems;

/// Indicates the parameters to be passed to PaymentIntent creation during checkout.
final Omittable<PaymentLinksResourcePaymentIntentData?> paymentIntentData;

/// Configuration for collecting a payment method during checkout. Defaults to `always`.
final PaymentLinkPaymentMethodCollection paymentMethodCollection;

/// The list of payment method types that customers can use. When `null`, Stripe will dynamically show relevant payment methods you've enabled in your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
final Omittable<List<PaymentLinkPaymentMethodTypes>?> paymentMethodTypes;

final PaymentLinksResourcePhoneNumberCollection phoneNumberCollection;

/// Settings that restrict the usage of a payment link.
final Omittable<PaymentLinksResourceRestrictions?> restrictions;

/// Configuration for collecting the customer's shipping address.
final Omittable<PaymentLinksResourceShippingAddressCollection?> shippingAddressCollection;

/// The shipping rate options applied to the session.
final List<PaymentLinksResourceShippingOption> shippingOptions;

/// Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
final PaymentLinkSubmitType submitType;

/// When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
final Omittable<PaymentLinksResourceSubscriptionData?> subscriptionData;

final PaymentLinksResourceTaxIdCollection taxIdCollection;

/// The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
final Omittable<PaymentLinksResourceTransferData?> transferData;

/// The public URL that can be shared with customers.
final String url;

Map<String, dynamic> toJson() { return {
  'active': active,
  'after_completion': afterCompletion.toJson(),
  'allow_promotion_codes': allowPromotionCodes,
  if (application.isPresent) 'application': application.value?.toJson(),
  if (applicationFeeAmount.isPresent) 'application_fee_amount': applicationFeeAmount.value,
  if (applicationFeePercent.isPresent) 'application_fee_percent': applicationFeePercent.value,
  'automatic_tax': automaticTax.toJson(),
  'billing_address_collection': billingAddressCollection.toJson(),
  if (consentCollection.isPresent) 'consent_collection': consentCollection.value?.toJson(),
  'currency': currency,
  'custom_fields': customFields.map((e) => e.toJson()).toList(),
  'custom_text': customText.toJson(),
  'customer_creation': customerCreation.toJson(),
  'id': id,
  if (inactiveMessage.isPresent) 'inactive_message': inactiveMessage.value,
  if (invoiceCreation.isPresent) 'invoice_creation': invoiceCreation.value?.toJson(),
  if (lineItems != null) 'line_items': lineItems?.toJson(),
  'livemode': livemode,
  'metadata': metadata,
  if (nameCollection != null) 'name_collection': nameCollection?.toJson(),
  'object': object.toJson(),
  if (onBehalfOf.isPresent) 'on_behalf_of': onBehalfOf.value?.toJson(),
  if (optionalItems.isPresent) 'optional_items': optionalItems.value?.map((e) => e.toJson()).toList(),
  if (paymentIntentData.isPresent) 'payment_intent_data': paymentIntentData.value?.toJson(),
  'payment_method_collection': paymentMethodCollection.toJson(),
  if (paymentMethodTypes.isPresent) 'payment_method_types': paymentMethodTypes.value?.map((e) => e.toJson()).toList(),
  'phone_number_collection': phoneNumberCollection.toJson(),
  if (restrictions.isPresent) 'restrictions': restrictions.value?.toJson(),
  if (shippingAddressCollection.isPresent) 'shipping_address_collection': shippingAddressCollection.value?.toJson(),
  'shipping_options': shippingOptions.map((e) => e.toJson()).toList(),
  'submit_type': submitType.toJson(),
  if (subscriptionData.isPresent) 'subscription_data': subscriptionData.value?.toJson(),
  'tax_id_collection': taxIdCollection.toJson(),
  if (transferData.isPresent) 'transfer_data': transferData.value?.toJson(),
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('active') && json['active'] is bool &&
      json.containsKey('after_completion') &&
      json.containsKey('allow_promotion_codes') && json['allow_promotion_codes'] is bool &&
      json.containsKey('automatic_tax') &&
      json.containsKey('billing_address_collection') &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('custom_fields') &&
      json.containsKey('custom_text') &&
      json.containsKey('customer_creation') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('payment_method_collection') &&
      json.containsKey('phone_number_collection') &&
      json.containsKey('shipping_options') &&
      json.containsKey('submit_type') &&
      json.containsKey('tax_id_collection') &&
      json.containsKey('url') && json['url'] is String; } 
PaymentLink copyWith({bool? active, PaymentLinksResourceAfterCompletion? afterCompletion, bool? allowPromotionCodes, Omittable<PaymentLinkApplication?>? application, Omittable<int?>? applicationFeeAmount, Omittable<double?>? applicationFeePercent, PaymentLinksResourceAutomaticTax? automaticTax, PaymentLinkBillingAddressCollection? billingAddressCollection, Omittable<PaymentLinksResourceConsentCollection?>? consentCollection, String? currency, List<PaymentLinksResourceCustomFields>? customFields, PaymentLinksResourceCustomText? customText, PaymentLinkCustomerCreation? customerCreation, String? id, Omittable<String?>? inactiveMessage, Omittable<PaymentLinksResourceInvoiceCreation?>? invoiceCreation, PaymentLinkLineItems? Function()? lineItems, bool? livemode, Map<String,String>? metadata, PaymentLinksResourceNameCollection? Function()? nameCollection, PaymentLinkObject? object, Omittable<PaymentLinkOnBehalfOf?>? onBehalfOf, Omittable<List<PaymentLinksResourceOptionalItem>?>? optionalItems, Omittable<PaymentLinksResourcePaymentIntentData?>? paymentIntentData, PaymentLinkPaymentMethodCollection? paymentMethodCollection, Omittable<List<PaymentLinkPaymentMethodTypes>?>? paymentMethodTypes, PaymentLinksResourcePhoneNumberCollection? phoneNumberCollection, Omittable<PaymentLinksResourceRestrictions?>? restrictions, Omittable<PaymentLinksResourceShippingAddressCollection?>? shippingAddressCollection, List<PaymentLinksResourceShippingOption>? shippingOptions, PaymentLinkSubmitType? submitType, Omittable<PaymentLinksResourceSubscriptionData?>? subscriptionData, PaymentLinksResourceTaxIdCollection? taxIdCollection, Omittable<PaymentLinksResourceTransferData?>? transferData, String? url, }) { return PaymentLink(
  active: active ?? this.active,
  afterCompletion: afterCompletion ?? this.afterCompletion,
  allowPromotionCodes: allowPromotionCodes ?? this.allowPromotionCodes,
  application: application ?? this.application,
  applicationFeeAmount: applicationFeeAmount ?? this.applicationFeeAmount,
  applicationFeePercent: applicationFeePercent ?? this.applicationFeePercent,
  automaticTax: automaticTax ?? this.automaticTax,
  billingAddressCollection: billingAddressCollection ?? this.billingAddressCollection,
  consentCollection: consentCollection ?? this.consentCollection,
  currency: currency ?? this.currency,
  customFields: customFields ?? this.customFields,
  customText: customText ?? this.customText,
  customerCreation: customerCreation ?? this.customerCreation,
  id: id ?? this.id,
  inactiveMessage: inactiveMessage ?? this.inactiveMessage,
  invoiceCreation: invoiceCreation ?? this.invoiceCreation,
  lineItems: lineItems != null ? lineItems() : this.lineItems,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  nameCollection: nameCollection != null ? nameCollection() : this.nameCollection,
  object: object ?? this.object,
  onBehalfOf: onBehalfOf ?? this.onBehalfOf,
  optionalItems: optionalItems ?? this.optionalItems,
  paymentIntentData: paymentIntentData ?? this.paymentIntentData,
  paymentMethodCollection: paymentMethodCollection ?? this.paymentMethodCollection,
  paymentMethodTypes: paymentMethodTypes ?? this.paymentMethodTypes,
  phoneNumberCollection: phoneNumberCollection ?? this.phoneNumberCollection,
  restrictions: restrictions ?? this.restrictions,
  shippingAddressCollection: shippingAddressCollection ?? this.shippingAddressCollection,
  shippingOptions: shippingOptions ?? this.shippingOptions,
  submitType: submitType ?? this.submitType,
  subscriptionData: subscriptionData ?? this.subscriptionData,
  taxIdCollection: taxIdCollection ?? this.taxIdCollection,
  transferData: transferData ?? this.transferData,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLink &&
          active == other.active &&
          afterCompletion == other.afterCompletion &&
          allowPromotionCodes == other.allowPromotionCodes &&
          application == other.application &&
          applicationFeeAmount == other.applicationFeeAmount &&
          applicationFeePercent == other.applicationFeePercent &&
          automaticTax == other.automaticTax &&
          billingAddressCollection == other.billingAddressCollection &&
          consentCollection == other.consentCollection &&
          currency == other.currency &&
          listEquals(customFields, other.customFields) &&
          customText == other.customText &&
          customerCreation == other.customerCreation &&
          id == other.id &&
          inactiveMessage == other.inactiveMessage &&
          invoiceCreation == other.invoiceCreation &&
          lineItems == other.lineItems &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          nameCollection == other.nameCollection &&
          object == other.object &&
          onBehalfOf == other.onBehalfOf &&
          optionalItems.isPresent == other.optionalItems.isPresent &&
          listEquals(optionalItems.value, other.optionalItems.value) &&
          paymentIntentData == other.paymentIntentData &&
          paymentMethodCollection == other.paymentMethodCollection &&
          paymentMethodTypes.isPresent == other.paymentMethodTypes.isPresent &&
          listEquals(paymentMethodTypes.value, other.paymentMethodTypes.value) &&
          phoneNumberCollection == other.phoneNumberCollection &&
          restrictions == other.restrictions &&
          shippingAddressCollection == other.shippingAddressCollection &&
          listEquals(shippingOptions, other.shippingOptions) &&
          submitType == other.submitType &&
          subscriptionData == other.subscriptionData &&
          taxIdCollection == other.taxIdCollection &&
          transferData == other.transferData &&
          url == other.url; } 
@override int get hashCode { return Object.hashAll([active, afterCompletion, allowPromotionCodes, application, applicationFeeAmount, applicationFeePercent, automaticTax, billingAddressCollection, consentCollection, currency, Object.hashAll(customFields), customText, customerCreation, id, inactiveMessage, invoiceCreation, lineItems, livemode, metadata, nameCollection, object, onBehalfOf, Object.hashAll(optionalItems.value ?? const []), paymentIntentData, paymentMethodCollection, Object.hashAll(paymentMethodTypes.value ?? const []), phoneNumberCollection, restrictions, shippingAddressCollection, Object.hashAll(shippingOptions), submitType, subscriptionData, taxIdCollection, transferData, url]); } 
@override String toString() { return 'PaymentLink(active: $active, afterCompletion: $afterCompletion, allowPromotionCodes: $allowPromotionCodes, application: $application, applicationFeeAmount: $applicationFeeAmount, applicationFeePercent: $applicationFeePercent, automaticTax: $automaticTax, billingAddressCollection: $billingAddressCollection, consentCollection: $consentCollection, currency: $currency, customFields: $customFields, customText: $customText, customerCreation: $customerCreation, id: $id, inactiveMessage: $inactiveMessage, invoiceCreation: $invoiceCreation, lineItems: $lineItems, livemode: $livemode, metadata: $metadata, nameCollection: $nameCollection, object: $object, onBehalfOf: $onBehalfOf, optionalItems: $optionalItems, paymentIntentData: $paymentIntentData, paymentMethodCollection: $paymentMethodCollection, paymentMethodTypes: $paymentMethodTypes, phoneNumberCollection: $phoneNumberCollection, restrictions: $restrictions, shippingAddressCollection: $shippingAddressCollection, shippingOptions: $shippingOptions, submitType: $submitType, subscriptionData: $subscriptionData, taxIdCollection: $taxIdCollection, transferData: $transferData, url: $url)'; } 
 }
