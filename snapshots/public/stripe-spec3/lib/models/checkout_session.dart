// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'checkout_session_customer.dart';import 'checkout_session_invoice.dart';import 'checkout_session_line_items.dart';import 'checkout_session_payment_intent.dart';import 'checkout_session_payment_link.dart';import 'checkout_session_payment_method_options.dart';import 'checkout_session_setup_intent.dart';import 'checkout_session_subscription.dart';import 'checkout_session_wallet_options.dart';import 'customer.dart';import 'deleted_customer.dart';import 'invoice.dart';import 'payment_flows_payment_intent_presentment_details.dart';import 'payment_intent.dart';import 'payment_link.dart';import 'payment_method_config_biz_payment_method_configuration_details.dart';import 'payment_pages_checkout_session_adaptive_pricing.dart';import 'payment_pages_checkout_session_after_expiration.dart';import 'payment_pages_checkout_session_automatic_tax.dart';import 'payment_pages_checkout_session_branding_settings.dart';import 'payment_pages_checkout_session_collected_information.dart';import 'payment_pages_checkout_session_consent.dart';import 'payment_pages_checkout_session_consent_collection.dart';import 'payment_pages_checkout_session_currency_conversion.dart';import 'payment_pages_checkout_session_custom_fields.dart';import 'payment_pages_checkout_session_custom_text.dart';import 'payment_pages_checkout_session_customer_details.dart';import 'payment_pages_checkout_session_discount.dart';import 'payment_pages_checkout_session_invoice_creation.dart';import 'payment_pages_checkout_session_name_collection.dart';import 'payment_pages_checkout_session_optional_item.dart';import 'payment_pages_checkout_session_permissions.dart';import 'payment_pages_checkout_session_phone_number_collection.dart';import 'payment_pages_checkout_session_saved_payment_method_options.dart';import 'payment_pages_checkout_session_shipping_address_collection.dart';import 'payment_pages_checkout_session_shipping_cost.dart';import 'payment_pages_checkout_session_shipping_option.dart';import 'payment_pages_checkout_session_tax_id_collection.dart';import 'payment_pages_checkout_session_total_details.dart';import 'setup_intent.dart';import 'subscription.dart';/// Describes whether Checkout should collect the customer's billing address. Defaults to `auto`.
@immutable final class CheckoutSessionBillingAddressCollection {const CheckoutSessionBillingAddressCollection._(this.value);

factory CheckoutSessionBillingAddressCollection.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'required' => $required,
  _ => CheckoutSessionBillingAddressCollection._(json),
}; }

static const CheckoutSessionBillingAddressCollection auto = CheckoutSessionBillingAddressCollection._('auto');

static const CheckoutSessionBillingAddressCollection $required = CheckoutSessionBillingAddressCollection._('required');

static const List<CheckoutSessionBillingAddressCollection> values = [auto, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionBillingAddressCollection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionBillingAddressCollection($value)'; } 
 }
/// Configure whether a Checkout Session creates a Customer when the Checkout Session completes.
@immutable final class CheckoutSessionCustomerCreation {const CheckoutSessionCustomerCreation._(this.value);

factory CheckoutSessionCustomerCreation.fromJson(String json) { return switch (json) {
  'always' => always,
  'if_required' => ifRequired,
  _ => CheckoutSessionCustomerCreation._(json),
}; }

static const CheckoutSessionCustomerCreation always = CheckoutSessionCustomerCreation._('always');

static const CheckoutSessionCustomerCreation ifRequired = CheckoutSessionCustomerCreation._('if_required');

static const List<CheckoutSessionCustomerCreation> values = [always, ifRequired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionCustomerCreation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionCustomerCreation($value)'; } 
 }
/// The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
@immutable final class CheckoutSessionLocale {const CheckoutSessionLocale._(this.value);

factory CheckoutSessionLocale.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'bg' => bg,
  'cs' => cs,
  'da' => da,
  'de' => de,
  'el' => el,
  'en' => en,
  'en-GB' => enGb,
  'es' => es,
  'es-419' => es419,
  'et' => et,
  'fi' => fi,
  'fil' => fil,
  'fr' => fr,
  'fr-CA' => frCa,
  'hr' => hr,
  'hu' => hu,
  'id' => id,
  'it' => it,
  'ja' => ja,
  'ko' => ko,
  'lt' => lt,
  'lv' => lv,
  'ms' => ms,
  'mt' => mt,
  'nb' => nb,
  'nl' => nl,
  'pl' => pl,
  'pt' => pt,
  'pt-BR' => ptBr,
  'ro' => ro,
  'ru' => ru,
  'sk' => sk,
  'sl' => sl,
  'sv' => sv,
  'th' => th,
  'tr' => tr,
  'vi' => vi,
  'zh' => zh,
  'zh-HK' => zhHk,
  'zh-TW' => zhTw,
  _ => CheckoutSessionLocale._(json),
}; }

static const CheckoutSessionLocale auto = CheckoutSessionLocale._('auto');

static const CheckoutSessionLocale bg = CheckoutSessionLocale._('bg');

static const CheckoutSessionLocale cs = CheckoutSessionLocale._('cs');

static const CheckoutSessionLocale da = CheckoutSessionLocale._('da');

static const CheckoutSessionLocale de = CheckoutSessionLocale._('de');

static const CheckoutSessionLocale el = CheckoutSessionLocale._('el');

static const CheckoutSessionLocale en = CheckoutSessionLocale._('en');

static const CheckoutSessionLocale enGb = CheckoutSessionLocale._('en-GB');

static const CheckoutSessionLocale es = CheckoutSessionLocale._('es');

static const CheckoutSessionLocale es419 = CheckoutSessionLocale._('es-419');

static const CheckoutSessionLocale et = CheckoutSessionLocale._('et');

static const CheckoutSessionLocale fi = CheckoutSessionLocale._('fi');

static const CheckoutSessionLocale fil = CheckoutSessionLocale._('fil');

static const CheckoutSessionLocale fr = CheckoutSessionLocale._('fr');

static const CheckoutSessionLocale frCa = CheckoutSessionLocale._('fr-CA');

static const CheckoutSessionLocale hr = CheckoutSessionLocale._('hr');

static const CheckoutSessionLocale hu = CheckoutSessionLocale._('hu');

static const CheckoutSessionLocale id = CheckoutSessionLocale._('id');

static const CheckoutSessionLocale it = CheckoutSessionLocale._('it');

static const CheckoutSessionLocale ja = CheckoutSessionLocale._('ja');

static const CheckoutSessionLocale ko = CheckoutSessionLocale._('ko');

static const CheckoutSessionLocale lt = CheckoutSessionLocale._('lt');

static const CheckoutSessionLocale lv = CheckoutSessionLocale._('lv');

static const CheckoutSessionLocale ms = CheckoutSessionLocale._('ms');

static const CheckoutSessionLocale mt = CheckoutSessionLocale._('mt');

static const CheckoutSessionLocale nb = CheckoutSessionLocale._('nb');

static const CheckoutSessionLocale nl = CheckoutSessionLocale._('nl');

static const CheckoutSessionLocale pl = CheckoutSessionLocale._('pl');

static const CheckoutSessionLocale pt = CheckoutSessionLocale._('pt');

static const CheckoutSessionLocale ptBr = CheckoutSessionLocale._('pt-BR');

static const CheckoutSessionLocale ro = CheckoutSessionLocale._('ro');

static const CheckoutSessionLocale ru = CheckoutSessionLocale._('ru');

static const CheckoutSessionLocale sk = CheckoutSessionLocale._('sk');

static const CheckoutSessionLocale sl = CheckoutSessionLocale._('sl');

static const CheckoutSessionLocale sv = CheckoutSessionLocale._('sv');

static const CheckoutSessionLocale th = CheckoutSessionLocale._('th');

static const CheckoutSessionLocale tr = CheckoutSessionLocale._('tr');

static const CheckoutSessionLocale vi = CheckoutSessionLocale._('vi');

static const CheckoutSessionLocale zh = CheckoutSessionLocale._('zh');

static const CheckoutSessionLocale zhHk = CheckoutSessionLocale._('zh-HK');

static const CheckoutSessionLocale zhTw = CheckoutSessionLocale._('zh-TW');

static const List<CheckoutSessionLocale> values = [auto, bg, cs, da, de, el, en, enGb, es, es419, et, fi, fil, fr, frCa, hr, hu, id, it, ja, ko, lt, lv, ms, mt, nb, nl, pl, pt, ptBr, ro, ru, sk, sl, sv, th, tr, vi, zh, zhHk, zhTw];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionLocale && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionLocale($value)'; } 
 }
/// The mode of the Checkout Session.
@immutable final class CheckoutSessionMode {const CheckoutSessionMode._(this.value);

factory CheckoutSessionMode.fromJson(String json) { return switch (json) {
  'payment' => payment,
  'setup' => setup,
  'subscription' => subscription,
  _ => CheckoutSessionMode._(json),
}; }

static const CheckoutSessionMode payment = CheckoutSessionMode._('payment');

static const CheckoutSessionMode setup = CheckoutSessionMode._('setup');

static const CheckoutSessionMode subscription = CheckoutSessionMode._('subscription');

static const List<CheckoutSessionMode> values = [payment, setup, subscription];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionMode($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class CheckoutSessionObject {const CheckoutSessionObject._(this.value);

factory CheckoutSessionObject.fromJson(String json) { return switch (json) {
  'checkout.session' => checkoutSession,
  _ => CheckoutSessionObject._(json),
}; }

static const CheckoutSessionObject checkoutSession = CheckoutSessionObject._('checkout.session');

static const List<CheckoutSessionObject> values = [checkoutSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionObject($value)'; } 
 }
/// Where the user is coming from. This informs the optimizations that are applied to the session.
@immutable final class CheckoutSessionOriginContext {const CheckoutSessionOriginContext._(this.value);

factory CheckoutSessionOriginContext.fromJson(String json) { return switch (json) {
  'mobile_app' => mobileApp,
  'web' => web,
  _ => CheckoutSessionOriginContext._(json),
}; }

static const CheckoutSessionOriginContext mobileApp = CheckoutSessionOriginContext._('mobile_app');

static const CheckoutSessionOriginContext web = CheckoutSessionOriginContext._('web');

static const List<CheckoutSessionOriginContext> values = [mobileApp, web];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionOriginContext && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionOriginContext($value)'; } 
 }
/// Configure whether a Checkout Session should collect a payment method. Defaults to `always`.
@immutable final class CheckoutSessionPaymentMethodCollection {const CheckoutSessionPaymentMethodCollection._(this.value);

factory CheckoutSessionPaymentMethodCollection.fromJson(String json) { return switch (json) {
  'always' => always,
  'if_required' => ifRequired,
  _ => CheckoutSessionPaymentMethodCollection._(json),
}; }

static const CheckoutSessionPaymentMethodCollection always = CheckoutSessionPaymentMethodCollection._('always');

static const CheckoutSessionPaymentMethodCollection ifRequired = CheckoutSessionPaymentMethodCollection._('if_required');

static const List<CheckoutSessionPaymentMethodCollection> values = [always, ifRequired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionPaymentMethodCollection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionPaymentMethodCollection($value)'; } 
 }
/// The payment status of the Checkout Session, one of `paid`, `unpaid`, or `no_payment_required`.
/// You can use this value to decide when to fulfill your customer's order.
@immutable final class CheckoutSessionPaymentStatus {const CheckoutSessionPaymentStatus._(this.value);

factory CheckoutSessionPaymentStatus.fromJson(String json) { return switch (json) {
  'no_payment_required' => noPaymentRequired,
  'paid' => paid,
  'unpaid' => unpaid,
  _ => CheckoutSessionPaymentStatus._(json),
}; }

static const CheckoutSessionPaymentStatus noPaymentRequired = CheckoutSessionPaymentStatus._('no_payment_required');

static const CheckoutSessionPaymentStatus paid = CheckoutSessionPaymentStatus._('paid');

static const CheckoutSessionPaymentStatus unpaid = CheckoutSessionPaymentStatus._('unpaid');

static const List<CheckoutSessionPaymentStatus> values = [noPaymentRequired, paid, unpaid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionPaymentStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionPaymentStatus($value)'; } 
 }
/// This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://docs.stripe.com/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`.
@immutable final class CheckoutSessionRedirectOnCompletion {const CheckoutSessionRedirectOnCompletion._(this.value);

factory CheckoutSessionRedirectOnCompletion.fromJson(String json) { return switch (json) {
  'always' => always,
  'if_required' => ifRequired,
  'never' => never,
  _ => CheckoutSessionRedirectOnCompletion._(json),
}; }

static const CheckoutSessionRedirectOnCompletion always = CheckoutSessionRedirectOnCompletion._('always');

static const CheckoutSessionRedirectOnCompletion ifRequired = CheckoutSessionRedirectOnCompletion._('if_required');

static const CheckoutSessionRedirectOnCompletion never = CheckoutSessionRedirectOnCompletion._('never');

static const List<CheckoutSessionRedirectOnCompletion> values = [always, ifRequired, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionRedirectOnCompletion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionRedirectOnCompletion($value)'; } 
 }
/// The status of the Checkout Session, one of `open`, `complete`, or `expired`.
@immutable final class CheckoutSessionStatus {const CheckoutSessionStatus._(this.value);

factory CheckoutSessionStatus.fromJson(String json) { return switch (json) {
  'complete' => complete,
  'expired' => expired,
  'open' => open,
  _ => CheckoutSessionStatus._(json),
}; }

static const CheckoutSessionStatus complete = CheckoutSessionStatus._('complete');

static const CheckoutSessionStatus expired = CheckoutSessionStatus._('expired');

static const CheckoutSessionStatus open = CheckoutSessionStatus._('open');

static const List<CheckoutSessionStatus> values = [complete, expired, open];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionStatus($value)'; } 
 }
/// Describes the type of transaction being performed by Checkout in order to customize
/// relevant text on the page, such as the submit button. `submit_type` can only be
/// specified on Checkout Sessions in `payment` mode. If blank or `auto`, `pay` is used.
@immutable final class CheckoutSessionSubmitType {const CheckoutSessionSubmitType._(this.value);

factory CheckoutSessionSubmitType.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'book' => book,
  'donate' => donate,
  'pay' => pay,
  'subscribe' => subscribe,
  _ => CheckoutSessionSubmitType._(json),
}; }

static const CheckoutSessionSubmitType auto = CheckoutSessionSubmitType._('auto');

static const CheckoutSessionSubmitType book = CheckoutSessionSubmitType._('book');

static const CheckoutSessionSubmitType donate = CheckoutSessionSubmitType._('donate');

static const CheckoutSessionSubmitType pay = CheckoutSessionSubmitType._('pay');

static const CheckoutSessionSubmitType subscribe = CheckoutSessionSubmitType._('subscribe');

static const List<CheckoutSessionSubmitType> values = [auto, book, donate, pay, subscribe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionSubmitType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionSubmitType($value)'; } 
 }
/// The UI mode of the Session. Defaults to `hosted`.
@immutable final class CheckoutSessionUiMode {const CheckoutSessionUiMode._(this.value);

factory CheckoutSessionUiMode.fromJson(String json) { return switch (json) {
  'custom' => custom,
  'embedded' => embedded,
  'hosted' => hosted,
  _ => CheckoutSessionUiMode._(json),
}; }

static const CheckoutSessionUiMode custom = CheckoutSessionUiMode._('custom');

static const CheckoutSessionUiMode embedded = CheckoutSessionUiMode._('embedded');

static const CheckoutSessionUiMode hosted = CheckoutSessionUiMode._('hosted');

static const List<CheckoutSessionUiMode> values = [custom, embedded, hosted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutSessionUiMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutSessionUiMode($value)'; } 
 }
/// A Checkout Session represents your customer's session as they pay for
/// one-time purchases or subscriptions through [Checkout](https://docs.stripe.com/payments/checkout)
/// or [Payment Links](https://docs.stripe.com/payments/payment-links). We recommend creating a
/// new Session each time your customer attempts to pay.
/// 
/// Once payment is successful, the Checkout Session will contain a reference
/// to the [Customer](https://docs.stripe.com/api/customers), and either the successful
/// [PaymentIntent](https://docs.stripe.com/api/payment_intents) or an active
/// [Subscription](https://docs.stripe.com/api/subscriptions).
/// 
/// You can create a Checkout Session on your server and redirect to its URL
/// to begin Checkout.
/// 
/// Related guide: [Checkout quickstart](https://docs.stripe.com/checkout/quickstart)
@immutable final class CheckoutSession {const CheckoutSession({required this.shippingOptions, required this.automaticTax, required this.created, required this.customFields, required this.customText, required this.expiresAt, required this.id, required this.livemode, required this.mode, required this.object, required this.paymentMethodTypes, required this.paymentStatus, this.customerCreation = const Omittable.absent(), this.consentCollection = const Omittable.absent(), this.allowPromotionCodes = const Omittable.absent(), this.currency = const Omittable.absent(), this.currencyConversion = const Omittable.absent(), this.amountSubtotal = const Omittable.absent(), this.amountTotal = const Omittable.absent(), this.customer = const Omittable.absent(), this.customerAccount = const Omittable.absent(), this.adaptivePricing = const Omittable.absent(), this.customerDetails = const Omittable.absent(), this.customerEmail = const Omittable.absent(), this.discounts = const Omittable.absent(), this.excludedPaymentMethodTypes, this.afterExpiration = const Omittable.absent(), this.billingAddressCollection = const Omittable.absent(), this.invoice = const Omittable.absent(), this.invoiceCreation = const Omittable.absent(), this.lineItems, this.brandingSettings, this.locale = const Omittable.absent(), this.metadata = const Omittable.absent(), this.cancelUrl = const Omittable.absent(), this.nameCollection, this.clientReferenceId = const Omittable.absent(), this.optionalItems = const Omittable.absent(), this.originContext = const Omittable.absent(), this.paymentIntent = const Omittable.absent(), this.paymentLink = const Omittable.absent(), this.paymentMethodCollection = const Omittable.absent(), this.paymentMethodConfigurationDetails = const Omittable.absent(), this.walletOptions = const Omittable.absent(), this.clientSecret = const Omittable.absent(), this.collectedInformation = const Omittable.absent(), this.permissions = const Omittable.absent(), this.phoneNumberCollection, this.presentmentDetails, this.recoveredFrom = const Omittable.absent(), this.redirectOnCompletion, this.returnUrl, this.savedPaymentMethodOptions = const Omittable.absent(), this.setupIntent = const Omittable.absent(), this.shippingAddressCollection = const Omittable.absent(), this.shippingCost = const Omittable.absent(), this.consent = const Omittable.absent(), this.status = const Omittable.absent(), this.submitType = const Omittable.absent(), this.subscription = const Omittable.absent(), this.successUrl = const Omittable.absent(), this.taxIdCollection, this.totalDetails = const Omittable.absent(), this.uiMode = const Omittable.absent(), this.url = const Omittable.absent(), this.paymentMethodOptions = const Omittable.absent(), });

factory CheckoutSession.fromJson(Map<String, dynamic> json) { return CheckoutSession(
  adaptivePricing: json.containsKey('adaptive_pricing') ? Omittable(json['adaptive_pricing'] != null ? PaymentPagesCheckoutSessionAdaptivePricing.fromJson(json['adaptive_pricing'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  afterExpiration: json.containsKey('after_expiration') ? Omittable(json['after_expiration'] != null ? PaymentPagesCheckoutSessionAfterExpiration.fromJson(json['after_expiration'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  allowPromotionCodes: json.containsKey('allow_promotion_codes') ? Omittable(json['allow_promotion_codes'] as bool?) : const Omittable.absent(),
  amountSubtotal: json.containsKey('amount_subtotal') ? Omittable(json['amount_subtotal'] != null ? (json['amount_subtotal'] as num).toInt() : null) : const Omittable.absent(),
  amountTotal: json.containsKey('amount_total') ? Omittable(json['amount_total'] != null ? (json['amount_total'] as num).toInt() : null) : const Omittable.absent(),
  automaticTax: PaymentPagesCheckoutSessionAutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>),
  billingAddressCollection: json.containsKey('billing_address_collection') ? Omittable(json['billing_address_collection'] != null ? CheckoutSessionBillingAddressCollection.fromJson(json['billing_address_collection'] as String) : null) : const Omittable.absent(),
  brandingSettings: json['branding_settings'] != null ? PaymentPagesCheckoutSessionBrandingSettings.fromJson(json['branding_settings'] as Map<String, dynamic>) : null,
  cancelUrl: json.containsKey('cancel_url') ? Omittable(json['cancel_url'] as String?) : const Omittable.absent(),
  clientReferenceId: json.containsKey('client_reference_id') ? Omittable(json['client_reference_id'] as String?) : const Omittable.absent(),
  clientSecret: json.containsKey('client_secret') ? Omittable(json['client_secret'] as String?) : const Omittable.absent(),
  collectedInformation: json.containsKey('collected_information') ? Omittable(json['collected_information'] != null ? PaymentPagesCheckoutSessionCollectedInformation.fromJson(json['collected_information'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  consent: json.containsKey('consent') ? Omittable(json['consent'] != null ? PaymentPagesCheckoutSessionConsent.fromJson(json['consent'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  consentCollection: json.containsKey('consent_collection') ? Omittable(json['consent_collection'] != null ? PaymentPagesCheckoutSessionConsentCollection.fromJson(json['consent_collection'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  created: (json['created'] as num).toInt(),
  currency: json.containsKey('currency') ? Omittable(json['currency'] as String?) : const Omittable.absent(),
  currencyConversion: json.containsKey('currency_conversion') ? Omittable(json['currency_conversion'] != null ? PaymentPagesCheckoutSessionCurrencyConversion.fromJson(json['currency_conversion'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  customFields: (json['custom_fields'] as List<dynamic>).map((e) => PaymentPagesCheckoutSessionCustomFields.fromJson(e as Map<String, dynamic>)).toList(),
  customText: PaymentPagesCheckoutSessionCustomText.fromJson(json['custom_text'] as Map<String, dynamic>),
  customer: json.containsKey('customer') ? Omittable(json['customer'] != null ? OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  customerAccount: json.containsKey('customer_account') ? Omittable(json['customer_account'] as String?) : const Omittable.absent(),
  customerCreation: json.containsKey('customer_creation') ? Omittable(json['customer_creation'] != null ? CheckoutSessionCustomerCreation.fromJson(json['customer_creation'] as String) : null) : const Omittable.absent(),
  customerDetails: json.containsKey('customer_details') ? Omittable(json['customer_details'] != null ? PaymentPagesCheckoutSessionCustomerDetails.fromJson(json['customer_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  customerEmail: json.containsKey('customer_email') ? Omittable(json['customer_email'] as String?) : const Omittable.absent(),
  discounts: json.containsKey('discounts') ? Omittable((json['discounts'] as List<dynamic>?)?.map((e) => PaymentPagesCheckoutSessionDiscount.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  excludedPaymentMethodTypes: (json['excluded_payment_method_types'] as List<dynamic>?)?.map((e) => e as String).toList(),
  expiresAt: (json['expires_at'] as num).toInt(),
  id: json['id'] as String,
  invoice: json.containsKey('invoice') ? Omittable(json['invoice'] != null ? OneOf2.parse(json['invoice'], fromA: (v) => v as String, fromB: (v) => Invoice.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  invoiceCreation: json.containsKey('invoice_creation') ? Omittable(json['invoice_creation'] != null ? PaymentPagesCheckoutSessionInvoiceCreation.fromJson(json['invoice_creation'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  lineItems: json['line_items'] != null ? CheckoutSessionLineItems.fromJson(json['line_items'] as Map<String, dynamic>) : null,
  livemode: json['livemode'] as bool,
  locale: json.containsKey('locale') ? Omittable(json['locale'] != null ? CheckoutSessionLocale.fromJson(json['locale'] as String) : null) : const Omittable.absent(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  mode: CheckoutSessionMode.fromJson(json['mode'] as String),
  nameCollection: json['name_collection'] != null ? PaymentPagesCheckoutSessionNameCollection.fromJson(json['name_collection'] as Map<String, dynamic>) : null,
  object: CheckoutSessionObject.fromJson(json['object'] as String),
  optionalItems: json.containsKey('optional_items') ? Omittable((json['optional_items'] as List<dynamic>?)?.map((e) => PaymentPagesCheckoutSessionOptionalItem.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  originContext: json.containsKey('origin_context') ? Omittable(json['origin_context'] != null ? CheckoutSessionOriginContext.fromJson(json['origin_context'] as String) : null) : const Omittable.absent(),
  paymentIntent: json.containsKey('payment_intent') ? Omittable(json['payment_intent'] != null ? OneOf2.parse(json['payment_intent'], fromA: (v) => v as String, fromB: (v) => PaymentIntent.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  paymentLink: json.containsKey('payment_link') ? Omittable(json['payment_link'] != null ? OneOf2.parse(json['payment_link'], fromA: (v) => v as String, fromB: (v) => PaymentLink.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  paymentMethodCollection: json.containsKey('payment_method_collection') ? Omittable(json['payment_method_collection'] != null ? CheckoutSessionPaymentMethodCollection.fromJson(json['payment_method_collection'] as String) : null) : const Omittable.absent(),
  paymentMethodConfigurationDetails: json.containsKey('payment_method_configuration_details') ? Omittable(json['payment_method_configuration_details'] != null ? PaymentMethodConfigBizPaymentMethodConfigurationDetails.fromJson(json['payment_method_configuration_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paymentMethodOptions: json.containsKey('payment_method_options') ? Omittable(json['payment_method_options'] != null ? CheckoutSessionPaymentMethodOptions.fromJson(json['payment_method_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>).map((e) => e as String).toList(),
  paymentStatus: CheckoutSessionPaymentStatus.fromJson(json['payment_status'] as String),
  permissions: json.containsKey('permissions') ? Omittable(json['permissions'] != null ? PaymentPagesCheckoutSessionPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  phoneNumberCollection: json['phone_number_collection'] != null ? PaymentPagesCheckoutSessionPhoneNumberCollection.fromJson(json['phone_number_collection'] as Map<String, dynamic>) : null,
  presentmentDetails: json['presentment_details'] != null ? PaymentFlowsPaymentIntentPresentmentDetails.fromJson(json['presentment_details'] as Map<String, dynamic>) : null,
  recoveredFrom: json.containsKey('recovered_from') ? Omittable(json['recovered_from'] as String?) : const Omittable.absent(),
  redirectOnCompletion: json['redirect_on_completion'] != null ? CheckoutSessionRedirectOnCompletion.fromJson(json['redirect_on_completion'] as String) : null,
  returnUrl: json['return_url'] as String?,
  savedPaymentMethodOptions: json.containsKey('saved_payment_method_options') ? Omittable(json['saved_payment_method_options'] != null ? PaymentPagesCheckoutSessionSavedPaymentMethodOptions.fromJson(json['saved_payment_method_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  setupIntent: json.containsKey('setup_intent') ? Omittable(json['setup_intent'] != null ? OneOf2.parse(json['setup_intent'], fromA: (v) => v as String, fromB: (v) => SetupIntent.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  shippingAddressCollection: json.containsKey('shipping_address_collection') ? Omittable(json['shipping_address_collection'] != null ? PaymentPagesCheckoutSessionShippingAddressCollection.fromJson(json['shipping_address_collection'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  shippingCost: json.containsKey('shipping_cost') ? Omittable(json['shipping_cost'] != null ? PaymentPagesCheckoutSessionShippingCost.fromJson(json['shipping_cost'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  shippingOptions: (json['shipping_options'] as List<dynamic>).map((e) => PaymentPagesCheckoutSessionShippingOption.fromJson(e as Map<String, dynamic>)).toList(),
  status: json.containsKey('status') ? Omittable(json['status'] != null ? CheckoutSessionStatus.fromJson(json['status'] as String) : null) : const Omittable.absent(),
  submitType: json.containsKey('submit_type') ? Omittable(json['submit_type'] != null ? CheckoutSessionSubmitType.fromJson(json['submit_type'] as String) : null) : const Omittable.absent(),
  subscription: json.containsKey('subscription') ? Omittable(json['subscription'] != null ? OneOf2.parse(json['subscription'], fromA: (v) => v as String, fromB: (v) => Subscription.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  successUrl: json.containsKey('success_url') ? Omittable(json['success_url'] as String?) : const Omittable.absent(),
  taxIdCollection: json['tax_id_collection'] != null ? PaymentPagesCheckoutSessionTaxIdCollection.fromJson(json['tax_id_collection'] as Map<String, dynamic>) : null,
  totalDetails: json.containsKey('total_details') ? Omittable(json['total_details'] != null ? PaymentPagesCheckoutSessionTotalDetails.fromJson(json['total_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  uiMode: json.containsKey('ui_mode') ? Omittable(json['ui_mode'] != null ? CheckoutSessionUiMode.fromJson(json['ui_mode'] as String) : null) : const Omittable.absent(),
  url: json.containsKey('url') ? Omittable(json['url'] as String?) : const Omittable.absent(),
  walletOptions: json.containsKey('wallet_options') ? Omittable(json['wallet_options'] != null ? CheckoutSessionWalletOptions.fromJson(json['wallet_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Settings for price localization with [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing).
final Omittable<PaymentPagesCheckoutSessionAdaptivePricing?> adaptivePricing;

/// When set, provides configuration for actions to take if this Checkout Session expires.
final Omittable<PaymentPagesCheckoutSessionAfterExpiration?> afterExpiration;

/// Enables user redeemable promotion codes.
final Omittable<bool?> allowPromotionCodes;

/// Total of all items before discounts or taxes are applied.
final Omittable<int?> amountSubtotal;

/// Total of all items after discounts and taxes are applied.
final Omittable<int?> amountTotal;

final PaymentPagesCheckoutSessionAutomaticTax automaticTax;

/// Describes whether Checkout should collect the customer's billing address. Defaults to `auto`.
final Omittable<CheckoutSessionBillingAddressCollection?> billingAddressCollection;

final PaymentPagesCheckoutSessionBrandingSettings? brandingSettings;

/// If set, Checkout displays a back button and customers will be directed to this URL if they decide to cancel payment and return to your website.
final Omittable<String?> cancelUrl;

/// A unique string to reference the Checkout Session. This can be a
/// customer ID, a cart ID, or similar, and can be used to reconcile the
/// Session with your internal systems.
final Omittable<String?> clientReferenceId;

/// The client secret of your Checkout Session. Applies to Checkout Sessions with `ui_mode: embedded` or `ui_mode: custom`. For `ui_mode: embedded`, the client secret is to be used when initializing Stripe.js embedded checkout.
///  For `ui_mode: custom`, use the client secret with [initCheckout](https://docs.stripe.com/js/custom_checkout/init) on your front end.
final Omittable<String?> clientSecret;

/// Information about the customer collected within the Checkout Session.
final Omittable<PaymentPagesCheckoutSessionCollectedInformation?> collectedInformation;

/// Results of `consent_collection` for this session.
final Omittable<PaymentPagesCheckoutSessionConsent?> consent;

/// When set, provides configuration for the Checkout Session to gather active consent from customers.
final Omittable<PaymentPagesCheckoutSessionConsentCollection?> consentCollection;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final Omittable<String?> currency;

/// Currency conversion details for [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing) sessions created before 2025-03-31.
final Omittable<PaymentPagesCheckoutSessionCurrencyConversion?> currencyConversion;

/// Collect additional information from your customer using custom fields. Up to 3 fields are supported. You can't set this parameter if `ui_mode` is `custom`.
final List<PaymentPagesCheckoutSessionCustomFields> customFields;

final PaymentPagesCheckoutSessionCustomText customText;

/// The ID of the customer for this Session.
/// For Checkout Sessions in `subscription` mode or Checkout Sessions with `customer_creation` set as `always` in `payment` mode, Checkout
/// will create a new customer object based on information provided
/// during the payment flow unless an existing customer was provided when
/// the Session was created.
final Omittable<CheckoutSessionCustomer?> customer;

/// The ID of the account for this Session.
final Omittable<String?> customerAccount;

/// Configure whether a Checkout Session creates a Customer when the Checkout Session completes.
final Omittable<CheckoutSessionCustomerCreation?> customerCreation;

/// The customer details including the customer's tax exempt status and the customer's tax IDs. Customer's address details are not present on Sessions in `setup` mode.
final Omittable<PaymentPagesCheckoutSessionCustomerDetails?> customerDetails;

/// If provided, this value will be used when the Customer object is created.
/// If not provided, customers will be asked to enter their email address.
/// Use this parameter to prefill customer data if you already have an email
/// on file. To access information about the customer once the payment flow is
/// complete, use the `customer` attribute.
final Omittable<String?> customerEmail;

/// List of coupons and promotion codes attached to the Checkout Session.
final Omittable<List<PaymentPagesCheckoutSessionDiscount>?> discounts;

/// A list of the types of payment methods (e.g., `card`) that should be excluded from this Checkout Session. This should only be used when payment methods for this Checkout Session are managed through the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
final List<String>? excludedPaymentMethodTypes;

/// The timestamp at which the Checkout Session will expire.
final int expiresAt;

/// Unique identifier for the object.
final String id;

/// ID of the invoice created by the Checkout Session, if it exists.
final Omittable<CheckoutSessionInvoice?> invoice;

/// Details on the state of invoice creation for the Checkout Session.
final Omittable<PaymentPagesCheckoutSessionInvoiceCreation?> invoiceCreation;

/// The line items purchased by the customer.
final CheckoutSessionLineItems? lineItems;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
final Omittable<CheckoutSessionLocale?> locale;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Omittable<Map<String,String>?> metadata;

/// The mode of the Checkout Session.
final CheckoutSessionMode mode;

final PaymentPagesCheckoutSessionNameCollection? nameCollection;

/// String representing the object's type. Objects of the same type share the same value.
final CheckoutSessionObject object;

/// The optional items presented to the customer at checkout.
final Omittable<List<PaymentPagesCheckoutSessionOptionalItem>?> optionalItems;

/// Where the user is coming from. This informs the optimizations that are applied to the session.
final Omittable<CheckoutSessionOriginContext?> originContext;

/// The ID of the PaymentIntent for Checkout Sessions in `payment` mode. You can't confirm or cancel the PaymentIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://docs.stripe.com/api/checkout/sessions/expire) instead.
final Omittable<CheckoutSessionPaymentIntent?> paymentIntent;

/// The ID of the Payment Link that created this Session.
final Omittable<CheckoutSessionPaymentLink?> paymentLink;

/// Configure whether a Checkout Session should collect a payment method. Defaults to `always`.
final Omittable<CheckoutSessionPaymentMethodCollection?> paymentMethodCollection;

/// Information about the payment method configuration used for this Checkout session if using dynamic payment methods.
final Omittable<PaymentMethodConfigBizPaymentMethodConfigurationDetails?> paymentMethodConfigurationDetails;

/// Payment-method-specific configuration for the PaymentIntent or SetupIntent of this CheckoutSession.
final Omittable<CheckoutSessionPaymentMethodOptions?> paymentMethodOptions;

/// A list of the types of payment methods (e.g. card) this Checkout
/// Session is allowed to accept.
final List<String> paymentMethodTypes;

/// The payment status of the Checkout Session, one of `paid`, `unpaid`, or `no_payment_required`.
/// You can use this value to decide when to fulfill your customer's order.
final CheckoutSessionPaymentStatus paymentStatus;

/// This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object.
/// 
/// For specific permissions, please refer to their dedicated subsections, such as `permissions.update_shipping_details`.
final Omittable<PaymentPagesCheckoutSessionPermissions?> permissions;

final PaymentPagesCheckoutSessionPhoneNumberCollection? phoneNumberCollection;

final PaymentFlowsPaymentIntentPresentmentDetails? presentmentDetails;

/// The ID of the original expired Checkout Session that triggered the recovery flow.
final Omittable<String?> recoveredFrom;

/// This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://docs.stripe.com/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`.
final CheckoutSessionRedirectOnCompletion? redirectOnCompletion;

/// Applies to Checkout Sessions with `ui_mode: embedded` or `ui_mode: custom`. The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.
final String? returnUrl;

/// Controls saved payment method settings for the session. Only available in `payment` and `subscription` mode.
final Omittable<PaymentPagesCheckoutSessionSavedPaymentMethodOptions?> savedPaymentMethodOptions;

/// The ID of the SetupIntent for Checkout Sessions in `setup` mode. You can't confirm or cancel the SetupIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://docs.stripe.com/api/checkout/sessions/expire) instead.
final Omittable<CheckoutSessionSetupIntent?> setupIntent;

/// When set, provides configuration for Checkout to collect a shipping address from a customer.
final Omittable<PaymentPagesCheckoutSessionShippingAddressCollection?> shippingAddressCollection;

/// The details of the customer cost of shipping, including the customer chosen ShippingRate.
final Omittable<PaymentPagesCheckoutSessionShippingCost?> shippingCost;

/// The shipping rate options applied to this Session.
final List<PaymentPagesCheckoutSessionShippingOption> shippingOptions;

/// The status of the Checkout Session, one of `open`, `complete`, or `expired`.
final Omittable<CheckoutSessionStatus?> status;

/// Describes the type of transaction being performed by Checkout in order to customize
/// relevant text on the page, such as the submit button. `submit_type` can only be
/// specified on Checkout Sessions in `payment` mode. If blank or `auto`, `pay` is used.
final Omittable<CheckoutSessionSubmitType?> submitType;

/// The ID of the [Subscription](https://docs.stripe.com/api/subscriptions) for Checkout Sessions in `subscription` mode.
final Omittable<CheckoutSessionSubscription?> subscription;

/// The URL the customer will be directed to after the payment or
/// subscription creation is successful.
final Omittable<String?> successUrl;

final PaymentPagesCheckoutSessionTaxIdCollection? taxIdCollection;

/// Tax and discount details for the computed total amount.
final Omittable<PaymentPagesCheckoutSessionTotalDetails?> totalDetails;

/// The UI mode of the Session. Defaults to `hosted`.
final Omittable<CheckoutSessionUiMode?> uiMode;

/// The URL to the Checkout Session. Applies to Checkout Sessions with `ui_mode: hosted`. Redirect customers to this URL to take them to Checkout. If you’re using [Custom Domains](https://docs.stripe.com/payments/checkout/custom-domains), the URL will use your subdomain. Otherwise, it’ll use `checkout.stripe.com.`
/// This value is only present when the session is active.
final Omittable<String?> url;

/// Wallet-specific configuration for this Checkout Session.
final Omittable<CheckoutSessionWalletOptions?> walletOptions;

Map<String, dynamic> toJson() { return {
  if (adaptivePricing.isPresent) 'adaptive_pricing': adaptivePricing.value?.toJson(),
  if (afterExpiration.isPresent) 'after_expiration': afterExpiration.value?.toJson(),
  if (allowPromotionCodes.isPresent) 'allow_promotion_codes': allowPromotionCodes.value,
  if (amountSubtotal.isPresent) 'amount_subtotal': amountSubtotal.value,
  if (amountTotal.isPresent) 'amount_total': amountTotal.value,
  'automatic_tax': automaticTax.toJson(),
  if (billingAddressCollection.isPresent) 'billing_address_collection': billingAddressCollection.value?.toJson(),
  if (brandingSettings != null) 'branding_settings': brandingSettings?.toJson(),
  if (cancelUrl.isPresent) 'cancel_url': cancelUrl.value,
  if (clientReferenceId.isPresent) 'client_reference_id': clientReferenceId.value,
  if (clientSecret.isPresent) 'client_secret': clientSecret.value,
  if (collectedInformation.isPresent) 'collected_information': collectedInformation.value?.toJson(),
  if (consent.isPresent) 'consent': consent.value?.toJson(),
  if (consentCollection.isPresent) 'consent_collection': consentCollection.value?.toJson(),
  'created': created,
  if (currency.isPresent) 'currency': currency.value,
  if (currencyConversion.isPresent) 'currency_conversion': currencyConversion.value?.toJson(),
  'custom_fields': customFields.map((e) => e.toJson()).toList(),
  'custom_text': customText.toJson(),
  if (customer.isPresent) 'customer': customer.value?.toJson(),
  if (customerAccount.isPresent) 'customer_account': customerAccount.value,
  if (customerCreation.isPresent) 'customer_creation': customerCreation.value?.toJson(),
  if (customerDetails.isPresent) 'customer_details': customerDetails.value?.toJson(),
  if (customerEmail.isPresent) 'customer_email': customerEmail.value,
  if (discounts.isPresent) 'discounts': discounts.value?.map((e) => e.toJson()).toList(),
  'excluded_payment_method_types': ?excludedPaymentMethodTypes,
  'expires_at': expiresAt,
  'id': id,
  if (invoice.isPresent) 'invoice': invoice.value?.toJson(),
  if (invoiceCreation.isPresent) 'invoice_creation': invoiceCreation.value?.toJson(),
  if (lineItems != null) 'line_items': lineItems?.toJson(),
  'livemode': livemode,
  if (locale.isPresent) 'locale': locale.value?.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value,
  'mode': mode.toJson(),
  if (nameCollection != null) 'name_collection': nameCollection?.toJson(),
  'object': object.toJson(),
  if (optionalItems.isPresent) 'optional_items': optionalItems.value?.map((e) => e.toJson()).toList(),
  if (originContext.isPresent) 'origin_context': originContext.value?.toJson(),
  if (paymentIntent.isPresent) 'payment_intent': paymentIntent.value?.toJson(),
  if (paymentLink.isPresent) 'payment_link': paymentLink.value?.toJson(),
  if (paymentMethodCollection.isPresent) 'payment_method_collection': paymentMethodCollection.value?.toJson(),
  if (paymentMethodConfigurationDetails.isPresent) 'payment_method_configuration_details': paymentMethodConfigurationDetails.value?.toJson(),
  if (paymentMethodOptions.isPresent) 'payment_method_options': paymentMethodOptions.value?.toJson(),
  'payment_method_types': paymentMethodTypes,
  'payment_status': paymentStatus.toJson(),
  if (permissions.isPresent) 'permissions': permissions.value?.toJson(),
  if (phoneNumberCollection != null) 'phone_number_collection': phoneNumberCollection?.toJson(),
  if (presentmentDetails != null) 'presentment_details': presentmentDetails?.toJson(),
  if (recoveredFrom.isPresent) 'recovered_from': recoveredFrom.value,
  if (redirectOnCompletion != null) 'redirect_on_completion': redirectOnCompletion?.toJson(),
  'return_url': ?returnUrl,
  if (savedPaymentMethodOptions.isPresent) 'saved_payment_method_options': savedPaymentMethodOptions.value?.toJson(),
  if (setupIntent.isPresent) 'setup_intent': setupIntent.value?.toJson(),
  if (shippingAddressCollection.isPresent) 'shipping_address_collection': shippingAddressCollection.value?.toJson(),
  if (shippingCost.isPresent) 'shipping_cost': shippingCost.value?.toJson(),
  'shipping_options': shippingOptions.map((e) => e.toJson()).toList(),
  if (status.isPresent) 'status': status.value?.toJson(),
  if (submitType.isPresent) 'submit_type': submitType.value?.toJson(),
  if (subscription.isPresent) 'subscription': subscription.value?.toJson(),
  if (successUrl.isPresent) 'success_url': successUrl.value,
  if (taxIdCollection != null) 'tax_id_collection': taxIdCollection?.toJson(),
  if (totalDetails.isPresent) 'total_details': totalDetails.value?.toJson(),
  if (uiMode.isPresent) 'ui_mode': uiMode.value?.toJson(),
  if (url.isPresent) 'url': url.value,
  if (walletOptions.isPresent) 'wallet_options': walletOptions.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('automatic_tax') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('custom_fields') &&
      json.containsKey('custom_text') &&
      json.containsKey('expires_at') && json['expires_at'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('mode') &&
      json.containsKey('object') &&
      json.containsKey('payment_method_types') &&
      json.containsKey('payment_status') &&
      json.containsKey('shipping_options'); } 
CheckoutSession copyWith({Omittable<PaymentPagesCheckoutSessionAdaptivePricing?>? adaptivePricing, Omittable<PaymentPagesCheckoutSessionAfterExpiration?>? afterExpiration, Omittable<bool?>? allowPromotionCodes, Omittable<int?>? amountSubtotal, Omittable<int?>? amountTotal, PaymentPagesCheckoutSessionAutomaticTax? automaticTax, Omittable<CheckoutSessionBillingAddressCollection?>? billingAddressCollection, PaymentPagesCheckoutSessionBrandingSettings? Function()? brandingSettings, Omittable<String?>? cancelUrl, Omittable<String?>? clientReferenceId, Omittable<String?>? clientSecret, Omittable<PaymentPagesCheckoutSessionCollectedInformation?>? collectedInformation, Omittable<PaymentPagesCheckoutSessionConsent?>? consent, Omittable<PaymentPagesCheckoutSessionConsentCollection?>? consentCollection, int? created, Omittable<String?>? currency, Omittable<PaymentPagesCheckoutSessionCurrencyConversion?>? currencyConversion, List<PaymentPagesCheckoutSessionCustomFields>? customFields, PaymentPagesCheckoutSessionCustomText? customText, Omittable<CheckoutSessionCustomer?>? customer, Omittable<String?>? customerAccount, Omittable<CheckoutSessionCustomerCreation?>? customerCreation, Omittable<PaymentPagesCheckoutSessionCustomerDetails?>? customerDetails, Omittable<String?>? customerEmail, Omittable<List<PaymentPagesCheckoutSessionDiscount>?>? discounts, List<String>? Function()? excludedPaymentMethodTypes, int? expiresAt, String? id, Omittable<CheckoutSessionInvoice?>? invoice, Omittable<PaymentPagesCheckoutSessionInvoiceCreation?>? invoiceCreation, CheckoutSessionLineItems? Function()? lineItems, bool? livemode, Omittable<CheckoutSessionLocale?>? locale, Omittable<Map<String,String>?>? metadata, CheckoutSessionMode? mode, PaymentPagesCheckoutSessionNameCollection? Function()? nameCollection, CheckoutSessionObject? object, Omittable<List<PaymentPagesCheckoutSessionOptionalItem>?>? optionalItems, Omittable<CheckoutSessionOriginContext?>? originContext, Omittable<CheckoutSessionPaymentIntent?>? paymentIntent, Omittable<CheckoutSessionPaymentLink?>? paymentLink, Omittable<CheckoutSessionPaymentMethodCollection?>? paymentMethodCollection, Omittable<PaymentMethodConfigBizPaymentMethodConfigurationDetails?>? paymentMethodConfigurationDetails, Omittable<CheckoutSessionPaymentMethodOptions?>? paymentMethodOptions, List<String>? paymentMethodTypes, CheckoutSessionPaymentStatus? paymentStatus, Omittable<PaymentPagesCheckoutSessionPermissions?>? permissions, PaymentPagesCheckoutSessionPhoneNumberCollection? Function()? phoneNumberCollection, PaymentFlowsPaymentIntentPresentmentDetails? Function()? presentmentDetails, Omittable<String?>? recoveredFrom, CheckoutSessionRedirectOnCompletion? Function()? redirectOnCompletion, String? Function()? returnUrl, Omittable<PaymentPagesCheckoutSessionSavedPaymentMethodOptions?>? savedPaymentMethodOptions, Omittable<CheckoutSessionSetupIntent?>? setupIntent, Omittable<PaymentPagesCheckoutSessionShippingAddressCollection?>? shippingAddressCollection, Omittable<PaymentPagesCheckoutSessionShippingCost?>? shippingCost, List<PaymentPagesCheckoutSessionShippingOption>? shippingOptions, Omittable<CheckoutSessionStatus?>? status, Omittable<CheckoutSessionSubmitType?>? submitType, Omittable<CheckoutSessionSubscription?>? subscription, Omittable<String?>? successUrl, PaymentPagesCheckoutSessionTaxIdCollection? Function()? taxIdCollection, Omittable<PaymentPagesCheckoutSessionTotalDetails?>? totalDetails, Omittable<CheckoutSessionUiMode?>? uiMode, Omittable<String?>? url, Omittable<CheckoutSessionWalletOptions?>? walletOptions, }) { return CheckoutSession(
  adaptivePricing: adaptivePricing ?? this.adaptivePricing,
  afterExpiration: afterExpiration ?? this.afterExpiration,
  allowPromotionCodes: allowPromotionCodes ?? this.allowPromotionCodes,
  amountSubtotal: amountSubtotal ?? this.amountSubtotal,
  amountTotal: amountTotal ?? this.amountTotal,
  automaticTax: automaticTax ?? this.automaticTax,
  billingAddressCollection: billingAddressCollection ?? this.billingAddressCollection,
  brandingSettings: brandingSettings != null ? brandingSettings() : this.brandingSettings,
  cancelUrl: cancelUrl ?? this.cancelUrl,
  clientReferenceId: clientReferenceId ?? this.clientReferenceId,
  clientSecret: clientSecret ?? this.clientSecret,
  collectedInformation: collectedInformation ?? this.collectedInformation,
  consent: consent ?? this.consent,
  consentCollection: consentCollection ?? this.consentCollection,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  currencyConversion: currencyConversion ?? this.currencyConversion,
  customFields: customFields ?? this.customFields,
  customText: customText ?? this.customText,
  customer: customer ?? this.customer,
  customerAccount: customerAccount ?? this.customerAccount,
  customerCreation: customerCreation ?? this.customerCreation,
  customerDetails: customerDetails ?? this.customerDetails,
  customerEmail: customerEmail ?? this.customerEmail,
  discounts: discounts ?? this.discounts,
  excludedPaymentMethodTypes: excludedPaymentMethodTypes != null ? excludedPaymentMethodTypes() : this.excludedPaymentMethodTypes,
  expiresAt: expiresAt ?? this.expiresAt,
  id: id ?? this.id,
  invoice: invoice ?? this.invoice,
  invoiceCreation: invoiceCreation ?? this.invoiceCreation,
  lineItems: lineItems != null ? lineItems() : this.lineItems,
  livemode: livemode ?? this.livemode,
  locale: locale ?? this.locale,
  metadata: metadata ?? this.metadata,
  mode: mode ?? this.mode,
  nameCollection: nameCollection != null ? nameCollection() : this.nameCollection,
  object: object ?? this.object,
  optionalItems: optionalItems ?? this.optionalItems,
  originContext: originContext ?? this.originContext,
  paymentIntent: paymentIntent ?? this.paymentIntent,
  paymentLink: paymentLink ?? this.paymentLink,
  paymentMethodCollection: paymentMethodCollection ?? this.paymentMethodCollection,
  paymentMethodConfigurationDetails: paymentMethodConfigurationDetails ?? this.paymentMethodConfigurationDetails,
  paymentMethodOptions: paymentMethodOptions ?? this.paymentMethodOptions,
  paymentMethodTypes: paymentMethodTypes ?? this.paymentMethodTypes,
  paymentStatus: paymentStatus ?? this.paymentStatus,
  permissions: permissions ?? this.permissions,
  phoneNumberCollection: phoneNumberCollection != null ? phoneNumberCollection() : this.phoneNumberCollection,
  presentmentDetails: presentmentDetails != null ? presentmentDetails() : this.presentmentDetails,
  recoveredFrom: recoveredFrom ?? this.recoveredFrom,
  redirectOnCompletion: redirectOnCompletion != null ? redirectOnCompletion() : this.redirectOnCompletion,
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
  savedPaymentMethodOptions: savedPaymentMethodOptions ?? this.savedPaymentMethodOptions,
  setupIntent: setupIntent ?? this.setupIntent,
  shippingAddressCollection: shippingAddressCollection ?? this.shippingAddressCollection,
  shippingCost: shippingCost ?? this.shippingCost,
  shippingOptions: shippingOptions ?? this.shippingOptions,
  status: status ?? this.status,
  submitType: submitType ?? this.submitType,
  subscription: subscription ?? this.subscription,
  successUrl: successUrl ?? this.successUrl,
  taxIdCollection: taxIdCollection != null ? taxIdCollection() : this.taxIdCollection,
  totalDetails: totalDetails ?? this.totalDetails,
  uiMode: uiMode ?? this.uiMode,
  url: url ?? this.url,
  walletOptions: walletOptions ?? this.walletOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutSession &&
          adaptivePricing == other.adaptivePricing &&
          afterExpiration == other.afterExpiration &&
          allowPromotionCodes == other.allowPromotionCodes &&
          amountSubtotal == other.amountSubtotal &&
          amountTotal == other.amountTotal &&
          automaticTax == other.automaticTax &&
          billingAddressCollection == other.billingAddressCollection &&
          brandingSettings == other.brandingSettings &&
          cancelUrl == other.cancelUrl &&
          clientReferenceId == other.clientReferenceId &&
          clientSecret == other.clientSecret &&
          collectedInformation == other.collectedInformation &&
          consent == other.consent &&
          consentCollection == other.consentCollection &&
          created == other.created &&
          currency == other.currency &&
          currencyConversion == other.currencyConversion &&
          listEquals(customFields, other.customFields) &&
          customText == other.customText &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          customerCreation == other.customerCreation &&
          customerDetails == other.customerDetails &&
          customerEmail == other.customerEmail &&
          discounts.isPresent == other.discounts.isPresent &&
          listEquals(discounts.value, other.discounts.value) &&
          listEquals(excludedPaymentMethodTypes, other.excludedPaymentMethodTypes) &&
          expiresAt == other.expiresAt &&
          id == other.id &&
          invoice == other.invoice &&
          invoiceCreation == other.invoiceCreation &&
          lineItems == other.lineItems &&
          livemode == other.livemode &&
          locale == other.locale &&
          metadata == other.metadata &&
          mode == other.mode &&
          nameCollection == other.nameCollection &&
          object == other.object &&
          optionalItems.isPresent == other.optionalItems.isPresent &&
          listEquals(optionalItems.value, other.optionalItems.value) &&
          originContext == other.originContext &&
          paymentIntent == other.paymentIntent &&
          paymentLink == other.paymentLink &&
          paymentMethodCollection == other.paymentMethodCollection &&
          paymentMethodConfigurationDetails == other.paymentMethodConfigurationDetails &&
          paymentMethodOptions == other.paymentMethodOptions &&
          listEquals(paymentMethodTypes, other.paymentMethodTypes) &&
          paymentStatus == other.paymentStatus &&
          permissions == other.permissions &&
          phoneNumberCollection == other.phoneNumberCollection &&
          presentmentDetails == other.presentmentDetails &&
          recoveredFrom == other.recoveredFrom &&
          redirectOnCompletion == other.redirectOnCompletion &&
          returnUrl == other.returnUrl &&
          savedPaymentMethodOptions == other.savedPaymentMethodOptions &&
          setupIntent == other.setupIntent &&
          shippingAddressCollection == other.shippingAddressCollection &&
          shippingCost == other.shippingCost &&
          listEquals(shippingOptions, other.shippingOptions) &&
          status == other.status &&
          submitType == other.submitType &&
          subscription == other.subscription &&
          successUrl == other.successUrl &&
          taxIdCollection == other.taxIdCollection &&
          totalDetails == other.totalDetails &&
          uiMode == other.uiMode &&
          url == other.url &&
          walletOptions == other.walletOptions; } 
@override int get hashCode { return Object.hashAll([adaptivePricing, afterExpiration, allowPromotionCodes, amountSubtotal, amountTotal, automaticTax, billingAddressCollection, brandingSettings, cancelUrl, clientReferenceId, clientSecret, collectedInformation, consent, consentCollection, created, currency, currencyConversion, Object.hashAll(customFields), customText, customer, customerAccount, customerCreation, customerDetails, customerEmail, Object.hashAll(discounts.value ?? const []), Object.hashAll(excludedPaymentMethodTypes ?? const []), expiresAt, id, invoice, invoiceCreation, lineItems, livemode, locale, metadata, mode, nameCollection, object, Object.hashAll(optionalItems.value ?? const []), originContext, paymentIntent, paymentLink, paymentMethodCollection, paymentMethodConfigurationDetails, paymentMethodOptions, Object.hashAll(paymentMethodTypes), paymentStatus, permissions, phoneNumberCollection, presentmentDetails, recoveredFrom, redirectOnCompletion, returnUrl, savedPaymentMethodOptions, setupIntent, shippingAddressCollection, shippingCost, Object.hashAll(shippingOptions), status, submitType, subscription, successUrl, taxIdCollection, totalDetails, uiMode, url, walletOptions]); } 
@override String toString() { return 'CheckoutSession(adaptivePricing: $adaptivePricing, afterExpiration: $afterExpiration, allowPromotionCodes: $allowPromotionCodes, amountSubtotal: $amountSubtotal, amountTotal: $amountTotal, automaticTax: $automaticTax, billingAddressCollection: $billingAddressCollection, brandingSettings: $brandingSettings, cancelUrl: $cancelUrl, clientReferenceId: $clientReferenceId, clientSecret: $clientSecret, collectedInformation: $collectedInformation, consent: $consent, consentCollection: $consentCollection, created: $created, currency: $currency, currencyConversion: $currencyConversion, customFields: $customFields, customText: $customText, customer: $customer, customerAccount: $customerAccount, customerCreation: $customerCreation, customerDetails: $customerDetails, customerEmail: $customerEmail, discounts: $discounts, excludedPaymentMethodTypes: $excludedPaymentMethodTypes, expiresAt: $expiresAt, id: $id, invoice: $invoice, invoiceCreation: $invoiceCreation, lineItems: $lineItems, livemode: $livemode, locale: $locale, metadata: $metadata, mode: $mode, nameCollection: $nameCollection, object: $object, optionalItems: $optionalItems, originContext: $originContext, paymentIntent: $paymentIntent, paymentLink: $paymentLink, paymentMethodCollection: $paymentMethodCollection, paymentMethodConfigurationDetails: $paymentMethodConfigurationDetails, paymentMethodOptions: $paymentMethodOptions, paymentMethodTypes: $paymentMethodTypes, paymentStatus: $paymentStatus, permissions: $permissions, phoneNumberCollection: $phoneNumberCollection, presentmentDetails: $presentmentDetails, recoveredFrom: $recoveredFrom, redirectOnCompletion: $redirectOnCompletion, returnUrl: $returnUrl, savedPaymentMethodOptions: $savedPaymentMethodOptions, setupIntent: $setupIntent, shippingAddressCollection: $shippingAddressCollection, shippingCost: $shippingCost, shippingOptions: $shippingOptions, status: $status, submitType: $submitType, subscription: $subscription, successUrl: $successUrl, taxIdCollection: $taxIdCollection, totalDetails: $totalDetails, uiMode: $uiMode, url: $url, walletOptions: $walletOptions)'; } 
 }
