// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_automatic_payment_methods.dart';import 'post_setup_intents_request_mandate_data.dart';import 'post_setup_intents_request_payment_method_data.dart';import 'post_setup_intents_request_payment_method_options.dart';import 'post_setup_intents_request_single_use.dart';import 'secret_key_param3.dart';@immutable final class PostSetupIntentsRequestExcludedPaymentMethodTypes {const PostSetupIntentsRequestExcludedPaymentMethodTypes._(this.value);

factory PostSetupIntentsRequestExcludedPaymentMethodTypes.fromJson(String json) { return switch (json) {
  'acss_debit' => acssDebit,
  'affirm' => affirm,
  'afterpay_clearpay' => afterpayClearpay,
  'alipay' => alipay,
  'alma' => alma,
  'amazon_pay' => amazonPay,
  'au_becs_debit' => auBecsDebit,
  'bacs_debit' => bacsDebit,
  'bancontact' => bancontact,
  'billie' => billie,
  'blik' => blik,
  'boleto' => boleto,
  'card' => card,
  'cashapp' => cashapp,
  'crypto' => crypto,
  'customer_balance' => customerBalance,
  'eps' => eps,
  'fpx' => fpx,
  'giropay' => giropay,
  'grabpay' => grabpay,
  'ideal' => ideal,
  'kakao_pay' => kakaoPay,
  'klarna' => klarna,
  'konbini' => konbini,
  'kr_card' => krCard,
  'mb_way' => mbWay,
  'mobilepay' => mobilepay,
  'multibanco' => multibanco,
  'naver_pay' => naverPay,
  'nz_bank_account' => nzBankAccount,
  'oxxo' => oxxo,
  'p24' => p24,
  'pay_by_bank' => payByBank,
  'payco' => payco,
  'paynow' => paynow,
  'paypal' => paypal,
  'payto' => payto,
  'pix' => pix,
  'promptpay' => promptpay,
  'revolut_pay' => revolutPay,
  'samsung_pay' => samsungPay,
  'satispay' => satispay,
  'sepa_debit' => sepaDebit,
  'sofort' => sofort,
  'swish' => swish,
  'twint' => twint,
  'us_bank_account' => usBankAccount,
  'wechat_pay' => wechatPay,
  'zip' => zip,
  _ => PostSetupIntentsRequestExcludedPaymentMethodTypes._(json),
}; }

static const PostSetupIntentsRequestExcludedPaymentMethodTypes acssDebit = PostSetupIntentsRequestExcludedPaymentMethodTypes._('acss_debit');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes affirm = PostSetupIntentsRequestExcludedPaymentMethodTypes._('affirm');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes afterpayClearpay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('afterpay_clearpay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes alipay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('alipay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes alma = PostSetupIntentsRequestExcludedPaymentMethodTypes._('alma');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes amazonPay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('amazon_pay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes auBecsDebit = PostSetupIntentsRequestExcludedPaymentMethodTypes._('au_becs_debit');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes bacsDebit = PostSetupIntentsRequestExcludedPaymentMethodTypes._('bacs_debit');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes bancontact = PostSetupIntentsRequestExcludedPaymentMethodTypes._('bancontact');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes billie = PostSetupIntentsRequestExcludedPaymentMethodTypes._('billie');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes blik = PostSetupIntentsRequestExcludedPaymentMethodTypes._('blik');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes boleto = PostSetupIntentsRequestExcludedPaymentMethodTypes._('boleto');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes card = PostSetupIntentsRequestExcludedPaymentMethodTypes._('card');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes cashapp = PostSetupIntentsRequestExcludedPaymentMethodTypes._('cashapp');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes crypto = PostSetupIntentsRequestExcludedPaymentMethodTypes._('crypto');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes customerBalance = PostSetupIntentsRequestExcludedPaymentMethodTypes._('customer_balance');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes eps = PostSetupIntentsRequestExcludedPaymentMethodTypes._('eps');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes fpx = PostSetupIntentsRequestExcludedPaymentMethodTypes._('fpx');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes giropay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('giropay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes grabpay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('grabpay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes ideal = PostSetupIntentsRequestExcludedPaymentMethodTypes._('ideal');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes kakaoPay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('kakao_pay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes klarna = PostSetupIntentsRequestExcludedPaymentMethodTypes._('klarna');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes konbini = PostSetupIntentsRequestExcludedPaymentMethodTypes._('konbini');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes krCard = PostSetupIntentsRequestExcludedPaymentMethodTypes._('kr_card');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes mbWay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('mb_way');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes mobilepay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('mobilepay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes multibanco = PostSetupIntentsRequestExcludedPaymentMethodTypes._('multibanco');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes naverPay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('naver_pay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes nzBankAccount = PostSetupIntentsRequestExcludedPaymentMethodTypes._('nz_bank_account');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes oxxo = PostSetupIntentsRequestExcludedPaymentMethodTypes._('oxxo');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes p24 = PostSetupIntentsRequestExcludedPaymentMethodTypes._('p24');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes payByBank = PostSetupIntentsRequestExcludedPaymentMethodTypes._('pay_by_bank');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes payco = PostSetupIntentsRequestExcludedPaymentMethodTypes._('payco');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes paynow = PostSetupIntentsRequestExcludedPaymentMethodTypes._('paynow');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes paypal = PostSetupIntentsRequestExcludedPaymentMethodTypes._('paypal');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes payto = PostSetupIntentsRequestExcludedPaymentMethodTypes._('payto');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes pix = PostSetupIntentsRequestExcludedPaymentMethodTypes._('pix');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes promptpay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('promptpay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes revolutPay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('revolut_pay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes samsungPay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('samsung_pay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes satispay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('satispay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes sepaDebit = PostSetupIntentsRequestExcludedPaymentMethodTypes._('sepa_debit');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes sofort = PostSetupIntentsRequestExcludedPaymentMethodTypes._('sofort');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes swish = PostSetupIntentsRequestExcludedPaymentMethodTypes._('swish');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes twint = PostSetupIntentsRequestExcludedPaymentMethodTypes._('twint');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes usBankAccount = PostSetupIntentsRequestExcludedPaymentMethodTypes._('us_bank_account');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes wechatPay = PostSetupIntentsRequestExcludedPaymentMethodTypes._('wechat_pay');

static const PostSetupIntentsRequestExcludedPaymentMethodTypes zip = PostSetupIntentsRequestExcludedPaymentMethodTypes._('zip');

static const List<PostSetupIntentsRequestExcludedPaymentMethodTypes> values = [acssDebit, affirm, afterpayClearpay, alipay, alma, amazonPay, auBecsDebit, bacsDebit, bancontact, billie, blik, boleto, card, cashapp, crypto, customerBalance, eps, fpx, giropay, grabpay, ideal, kakaoPay, klarna, konbini, krCard, mbWay, mobilepay, multibanco, naverPay, nzBankAccount, oxxo, p24, payByBank, payco, paynow, paypal, payto, pix, promptpay, revolutPay, samsungPay, satispay, sepaDebit, sofort, swish, twint, usBankAccount, wechatPay, zip];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestExcludedPaymentMethodTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestExcludedPaymentMethodTypes($value)'; } 
 }
@immutable final class PostSetupIntentsRequestFlowDirections {const PostSetupIntentsRequestFlowDirections._(this.value);

factory PostSetupIntentsRequestFlowDirections.fromJson(String json) { return switch (json) {
  'inbound' => inbound,
  'outbound' => outbound,
  _ => PostSetupIntentsRequestFlowDirections._(json),
}; }

static const PostSetupIntentsRequestFlowDirections inbound = PostSetupIntentsRequestFlowDirections._('inbound');

static const PostSetupIntentsRequestFlowDirections outbound = PostSetupIntentsRequestFlowDirections._('outbound');

static const List<PostSetupIntentsRequestFlowDirections> values = [inbound, outbound];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestFlowDirections && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestFlowDirections($value)'; } 
 }
/// Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
@immutable final class PostSetupIntentsRequestUsage {const PostSetupIntentsRequestUsage._(this.value);

factory PostSetupIntentsRequestUsage.fromJson(String json) { return switch (json) {
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PostSetupIntentsRequestUsage._(json),
}; }

static const PostSetupIntentsRequestUsage offSession = PostSetupIntentsRequestUsage._('off_session');

static const PostSetupIntentsRequestUsage onSession = PostSetupIntentsRequestUsage._('on_session');

static const List<PostSetupIntentsRequestUsage> values = [offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestUsage($value)'; } 
 }
@immutable final class PostSetupIntentsRequest {const PostSetupIntentsRequest({this.attachToSelf, this.automaticPaymentMethods, this.confirm, this.confirmationToken, this.customer, this.customerAccount, this.description, this.excludedPaymentMethodTypes, this.expand, this.flowDirections, this.mandateData, this.metadata, this.onBehalfOf, this.paymentMethod, this.paymentMethodConfiguration, this.paymentMethodData, this.paymentMethodOptions, this.paymentMethodTypes, this.returnUrl, this.singleUse, this.usage, this.useStripeSdk, });

factory PostSetupIntentsRequest.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequest(
  attachToSelf: json['attach_to_self'] as bool?,
  automaticPaymentMethods: json['automatic_payment_methods'] != null ? PostSetupIntentsRequestAutomaticPaymentMethods.fromJson(json['automatic_payment_methods'] as Map<String, dynamic>) : null,
  confirm: json['confirm'] as bool?,
  confirmationToken: json['confirmation_token'] as String?,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  description: json['description'] as String?,
  excludedPaymentMethodTypes: (json['excluded_payment_method_types'] as List<dynamic>?)?.map((e) => PostSetupIntentsRequestExcludedPaymentMethodTypes.fromJson(e as String)).toList(),
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  flowDirections: (json['flow_directions'] as List<dynamic>?)?.map((e) => PostSetupIntentsRequestFlowDirections.fromJson(e as String)).toList(),
  mandateData: json['mandate_data'] != null ? OneOf2.parse(json['mandate_data'], fromA: (v) => SecretKeyParam3.fromJson(v as Map<String, dynamic>), fromB: (v) => PostSetupIntentsRequestMandateDataVariant2.fromJson(v as String),) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  onBehalfOf: json['on_behalf_of'] as String?,
  paymentMethod: json['payment_method'] as String?,
  paymentMethodConfiguration: json['payment_method_configuration'] as String?,
  paymentMethodData: json['payment_method_data'] != null ? PostSetupIntentsRequestPaymentMethodData.fromJson(json['payment_method_data'] as Map<String, dynamic>) : null,
  paymentMethodOptions: json['payment_method_options'] != null ? PostSetupIntentsRequestPaymentMethodOptions.fromJson(json['payment_method_options'] as Map<String, dynamic>) : null,
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)?.map((e) => e as String).toList(),
  returnUrl: json['return_url'] as String?,
  singleUse: json['single_use'] != null ? PostSetupIntentsRequestSingleUse.fromJson(json['single_use'] as Map<String, dynamic>) : null,
  usage: json['usage'] != null ? PostSetupIntentsRequestUsage.fromJson(json['usage'] as String) : null,
  useStripeSdk: json['use_stripe_sdk'] as bool?,
); }

/// If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
/// 
/// It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
final bool? attachToSelf;

/// When you enable this parameter, this SetupIntent accepts payment methods that you enable in the Dashboard and that are compatible with its other parameters.
final PostSetupIntentsRequestAutomaticPaymentMethods? automaticPaymentMethods;

/// Set to `true` to attempt to confirm this SetupIntent immediately. This parameter defaults to `false`. If a card is the attached payment method, you can provide a `return_url` in case further authentication is necessary.
final bool? confirm;

/// ID of the ConfirmationToken used to confirm this SetupIntent.
/// 
/// If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
final String? confirmationToken;

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
final List<PostSetupIntentsRequestExcludedPaymentMethodTypes>? excludedPaymentMethodTypes;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Indicates the directions of money movement for which this payment method is intended to be used.
/// 
/// Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
final List<PostSetupIntentsRequestFlowDirections>? flowDirections;

/// This hash contains details about the mandate to create. This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/setup_intents/create#create_setup_intent-confirm).
final PostSetupIntentsRequestMandateData? mandateData;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// The Stripe account ID created for this SetupIntent.
final String? onBehalfOf;

/// ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
final String? paymentMethod;

/// The ID of the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) to use with this SetupIntent.
final String? paymentMethodConfiguration;

/// When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-payment_method)
/// value in the SetupIntent.
final PostSetupIntentsRequestPaymentMethodData? paymentMethodData;

/// Payment method-specific configuration for this SetupIntent.
final PostSetupIntentsRequestPaymentMethodOptions? paymentMethodOptions;

/// The list of payment method types (for example, card) that this SetupIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
final List<String>? paymentMethodTypes;

/// The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. To redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/setup_intents/create#create_setup_intent-confirm).
final String? returnUrl;

/// If you populate this hash, this SetupIntent generates a `single_use` mandate after successful completion.
/// 
/// Single-use mandates are only valid for the following payment methods: `acss_debit`, `alipay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `boleto`, `ideal`, `link`, `sepa_debit`, and `us_bank_account`.
final PostSetupIntentsRequestSingleUse? singleUse;

/// Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
final PostSetupIntentsRequestUsage? usage;

/// Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
final bool? useStripeSdk;

Map<String, dynamic> toJson() { return {
  'attach_to_self': ?attachToSelf,
  if (automaticPaymentMethods != null) 'automatic_payment_methods': automaticPaymentMethods?.toJson(),
  'confirm': ?confirm,
  'confirmation_token': ?confirmationToken,
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'description': ?description,
  if (excludedPaymentMethodTypes != null) 'excluded_payment_method_types': excludedPaymentMethodTypes?.map((e) => e.toJson()).toList(),
  'expand': ?expand,
  if (flowDirections != null) 'flow_directions': flowDirections?.map((e) => e.toJson()).toList(),
  if (mandateData != null) 'mandate_data': mandateData?.toJson(),
  'metadata': ?metadata,
  'on_behalf_of': ?onBehalfOf,
  'payment_method': ?paymentMethod,
  'payment_method_configuration': ?paymentMethodConfiguration,
  if (paymentMethodData != null) 'payment_method_data': paymentMethodData?.toJson(),
  if (paymentMethodOptions != null) 'payment_method_options': paymentMethodOptions?.toJson(),
  'payment_method_types': ?paymentMethodTypes,
  'return_url': ?returnUrl,
  if (singleUse != null) 'single_use': singleUse?.toJson(),
  if (usage != null) 'usage': usage?.toJson(),
  'use_stripe_sdk': ?useStripeSdk,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'attach_to_self', 'automatic_payment_methods', 'confirm', 'confirmation_token', 'customer', 'customer_account', 'description', 'excluded_payment_method_types', 'expand', 'flow_directions', 'mandate_data', 'metadata', 'on_behalf_of', 'payment_method', 'payment_method_configuration', 'payment_method_data', 'payment_method_options', 'payment_method_types', 'return_url', 'single_use', 'usage', 'use_stripe_sdk'}.contains(key)); } 
PostSetupIntentsRequest copyWith({bool Function()? attachToSelf, PostSetupIntentsRequestAutomaticPaymentMethods Function()? automaticPaymentMethods, bool Function()? confirm, String Function()? confirmationToken, String Function()? customer, String Function()? customerAccount, String Function()? description, List<PostSetupIntentsRequestExcludedPaymentMethodTypes> Function()? excludedPaymentMethodTypes, List<String> Function()? expand, List<PostSetupIntentsRequestFlowDirections> Function()? flowDirections, PostSetupIntentsRequestMandateData Function()? mandateData, Map<String, String> Function()? metadata, String Function()? onBehalfOf, String Function()? paymentMethod, String Function()? paymentMethodConfiguration, PostSetupIntentsRequestPaymentMethodData Function()? paymentMethodData, PostSetupIntentsRequestPaymentMethodOptions Function()? paymentMethodOptions, List<String> Function()? paymentMethodTypes, String Function()? returnUrl, PostSetupIntentsRequestSingleUse Function()? singleUse, PostSetupIntentsRequestUsage Function()? usage, bool Function()? useStripeSdk, }) { return PostSetupIntentsRequest(
  attachToSelf: attachToSelf != null ? attachToSelf() : this.attachToSelf,
  automaticPaymentMethods: automaticPaymentMethods != null ? automaticPaymentMethods() : this.automaticPaymentMethods,
  confirm: confirm != null ? confirm() : this.confirm,
  confirmationToken: confirmationToken != null ? confirmationToken() : this.confirmationToken,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  description: description != null ? description() : this.description,
  excludedPaymentMethodTypes: excludedPaymentMethodTypes != null ? excludedPaymentMethodTypes() : this.excludedPaymentMethodTypes,
  expand: expand != null ? expand() : this.expand,
  flowDirections: flowDirections != null ? flowDirections() : this.flowDirections,
  mandateData: mandateData != null ? mandateData() : this.mandateData,
  metadata: metadata != null ? metadata() : this.metadata,
  onBehalfOf: onBehalfOf != null ? onBehalfOf() : this.onBehalfOf,
  paymentMethod: paymentMethod != null ? paymentMethod() : this.paymentMethod,
  paymentMethodConfiguration: paymentMethodConfiguration != null ? paymentMethodConfiguration() : this.paymentMethodConfiguration,
  paymentMethodData: paymentMethodData != null ? paymentMethodData() : this.paymentMethodData,
  paymentMethodOptions: paymentMethodOptions != null ? paymentMethodOptions() : this.paymentMethodOptions,
  paymentMethodTypes: paymentMethodTypes != null ? paymentMethodTypes() : this.paymentMethodTypes,
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
  singleUse: singleUse != null ? singleUse() : this.singleUse,
  usage: usage != null ? usage() : this.usage,
  useStripeSdk: useStripeSdk != null ? useStripeSdk() : this.useStripeSdk,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequest &&
          attachToSelf == other.attachToSelf &&
          automaticPaymentMethods == other.automaticPaymentMethods &&
          confirm == other.confirm &&
          confirmationToken == other.confirmationToken &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          description == other.description &&
          listEquals(excludedPaymentMethodTypes, other.excludedPaymentMethodTypes) &&
          listEquals(expand, other.expand) &&
          listEquals(flowDirections, other.flowDirections) &&
          mandateData == other.mandateData &&
          metadata == other.metadata &&
          onBehalfOf == other.onBehalfOf &&
          paymentMethod == other.paymentMethod &&
          paymentMethodConfiguration == other.paymentMethodConfiguration &&
          paymentMethodData == other.paymentMethodData &&
          paymentMethodOptions == other.paymentMethodOptions &&
          listEquals(paymentMethodTypes, other.paymentMethodTypes) &&
          returnUrl == other.returnUrl &&
          singleUse == other.singleUse &&
          usage == other.usage &&
          useStripeSdk == other.useStripeSdk; } 
@override int get hashCode { return Object.hashAll([attachToSelf, automaticPaymentMethods, confirm, confirmationToken, customer, customerAccount, description, Object.hashAll(excludedPaymentMethodTypes ?? const []), Object.hashAll(expand ?? const []), Object.hashAll(flowDirections ?? const []), mandateData, metadata, onBehalfOf, paymentMethod, paymentMethodConfiguration, paymentMethodData, paymentMethodOptions, Object.hashAll(paymentMethodTypes ?? const []), returnUrl, singleUse, usage, useStripeSdk]); } 
@override String toString() { return 'PostSetupIntentsRequest(attachToSelf: $attachToSelf, automaticPaymentMethods: $automaticPaymentMethods, confirm: $confirm, confirmationToken: $confirmationToken, customer: $customer, customerAccount: $customerAccount, description: $description, excludedPaymentMethodTypes: $excludedPaymentMethodTypes, expand: $expand, flowDirections: $flowDirections, mandateData: $mandateData, metadata: $metadata, onBehalfOf: $onBehalfOf, paymentMethod: $paymentMethod, paymentMethodConfiguration: $paymentMethodConfiguration, paymentMethodData: $paymentMethodData, paymentMethodOptions: $paymentMethodOptions, paymentMethodTypes: $paymentMethodTypes, returnUrl: $returnUrl, singleUse: $singleUse, usage: $usage, useStripeSdk: $useStripeSdk)'; } 
 }
