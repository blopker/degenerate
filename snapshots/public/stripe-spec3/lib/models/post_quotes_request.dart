// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_request_application_fee_amount.dart';import 'post_quotes_request_application_fee_percent.dart';import 'post_quotes_request_automatic_tax.dart';import 'post_quotes_request_default_tax_rates.dart';import 'post_quotes_request_description.dart';import 'post_quotes_request_discounts.dart';import 'post_quotes_request_discounts_variant1.dart';import 'post_quotes_request_footer.dart';import 'post_quotes_request_from_quote.dart';import 'post_quotes_request_header.dart';import 'post_quotes_request_invoice_settings.dart';import 'post_quotes_request_line_items.dart';import 'post_quotes_request_on_behalf_of.dart';import 'post_quotes_request_subscription_data.dart';import 'post_quotes_request_transfer_data.dart';import 'transfer_data_specs3.dart';/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
@immutable final class PostQuotesRequestCollectionMethod {const PostQuotesRequestCollectionMethod._(this.value);

factory PostQuotesRequestCollectionMethod.fromJson(String json) { return switch (json) {
  'charge_automatically' => chargeAutomatically,
  'send_invoice' => sendInvoice,
  _ => PostQuotesRequestCollectionMethod._(json),
}; }

static const PostQuotesRequestCollectionMethod chargeAutomatically = PostQuotesRequestCollectionMethod._('charge_automatically');

static const PostQuotesRequestCollectionMethod sendInvoice = PostQuotesRequestCollectionMethod._('send_invoice');

static const List<PostQuotesRequestCollectionMethod> values = [chargeAutomatically, sendInvoice];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestCollectionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestCollectionMethod($value)'; } 
 }
@immutable final class PostQuotesRequest {const PostQuotesRequest({this.applicationFeeAmount, this.applicationFeePercent, this.automaticTax, this.collectionMethod, this.customer, this.customerAccount, this.defaultTaxRates, this.description, this.discounts, this.expand, this.expiresAt, this.footer, this.fromQuote, this.header, this.invoiceSettings, this.lineItems, this.metadata, this.onBehalfOf, this.subscriptionData, this.testClock, this.transferData, });

factory PostQuotesRequest.fromJson(Map<String, dynamic> json) { return PostQuotesRequest(
  applicationFeeAmount: json['application_fee_amount'] != null ? OneOf2.parse(json['application_fee_amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostQuotesRequestApplicationFeeAmountVariant2.fromJson(v as String),) : null,
  applicationFeePercent: json['application_fee_percent'] != null ? OneOf2.parse(json['application_fee_percent'], fromA: (v) => (v as num).toDouble(), fromB: (v) => PostQuotesRequestApplicationFeePercentVariant2.fromJson(v as String),) : null,
  automaticTax: json['automatic_tax'] != null ? PostQuotesRequestAutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>) : null,
  collectionMethod: json['collection_method'] != null ? PostQuotesRequestCollectionMethod.fromJson(json['collection_method'] as String) : null,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  defaultTaxRates: json['default_tax_rates'] != null ? OneOf2.parse(json['default_tax_rates'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostQuotesRequestDefaultTaxRatesVariant2.fromJson(v as String),) : null,
  description: json['description'] != null ? OneOf2.parse(json['description'], fromA: (v) => v as String, fromB: (v) => PostQuotesRequestDescriptionVariant2.fromJson(v as String),) : null,
  discounts: json['discounts'] != null ? OneOf2.parse(json['discounts'], fromA: (v) => (v as List<dynamic>).map((e) => PostQuotesRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostQuotesRequestDiscountsVariant2.fromJson(v as String),) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  footer: json['footer'] != null ? OneOf2.parse(json['footer'], fromA: (v) => v as String, fromB: (v) => PostQuotesRequestFooterVariant2.fromJson(v as String),) : null,
  fromQuote: json['from_quote'] != null ? PostQuotesRequestFromQuote.fromJson(json['from_quote'] as Map<String, dynamic>) : null,
  header: json['header'] != null ? OneOf2.parse(json['header'], fromA: (v) => v as String, fromB: (v) => PostQuotesRequestHeaderVariant2.fromJson(v as String),) : null,
  invoiceSettings: json['invoice_settings'] != null ? PostQuotesRequestInvoiceSettings.fromJson(json['invoice_settings'] as Map<String, dynamic>) : null,
  lineItems: (json['line_items'] as List<dynamic>?)?.map((e) => PostQuotesRequestLineItems.fromJson(e as Map<String, dynamic>)).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  onBehalfOf: json['on_behalf_of'] != null ? OneOf2.parse(json['on_behalf_of'], fromA: (v) => v as String, fromB: (v) => PostQuotesRequestOnBehalfOfVariant2.fromJson(v as String),) : null,
  subscriptionData: json['subscription_data'] != null ? PostQuotesRequestSubscriptionData.fromJson(json['subscription_data'] as Map<String, dynamic>) : null,
  testClock: json['test_clock'] as String?,
  transferData: json['transfer_data'] != null ? OneOf2.parse(json['transfer_data'], fromA: (v) => TransferDataSpecs3.fromJson(v as Map<String, dynamic>), fromB: (v) => PostQuotesRequestTransferDataVariant2.fromJson(v as String),) : null,
); }

/// The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
final PostQuotesRequestApplicationFeeAmount? applicationFeeAmount;

/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
final PostQuotesRequestApplicationFeePercent? applicationFeePercent;

/// Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
final PostQuotesRequestAutomaticTax? automaticTax;

/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
final PostQuotesRequestCollectionMethod? collectionMethod;

/// The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
final String? customer;

/// The account for which this quote belongs to. A customer or account is required before finalizing the quote. Once specified, it cannot be changed.
final String? customerAccount;

/// The tax rates that will apply to any line item that does not have `tax_rates` set.
final PostQuotesRequestDefaultTaxRates? defaultTaxRates;

/// A description that will be displayed on the quote PDF. If no value is passed, the default description configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
final PostQuotesRequestDescription? description;

/// The discounts applied to the quote.
final PostQuotesRequestDiscounts? discounts;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch. If no value is passed, the default expiration date configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
final int? expiresAt;

/// A footer that will be displayed on the quote PDF. If no value is passed, the default footer configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
final PostQuotesRequestFooter? footer;

/// Clone an existing quote. The new quote will be created in `status=draft`. When using this parameter, you cannot specify any other parameters except for `expires_at`.
final PostQuotesRequestFromQuote? fromQuote;

/// A header that will be displayed on the quote PDF. If no value is passed, the default header configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
final PostQuotesRequestHeader? header;

/// All invoices will be billed using the specified settings.
final PostQuotesRequestInvoiceSettings? invoiceSettings;

/// A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
final List<PostQuotesRequestLineItems>? lineItems;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// The account on behalf of which to charge.
final PostQuotesRequestOnBehalfOf? onBehalfOf;

/// When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
final PostQuotesRequestSubscriptionData? subscriptionData;

/// ID of the test clock to attach to the quote.
final String? testClock;

/// The data with which to automatically create a Transfer for each of the invoices.
final PostQuotesRequestTransferData? transferData;

Map<String, dynamic> toJson() { return {
  if (applicationFeeAmount != null) 'application_fee_amount': applicationFeeAmount?.toJson(),
  if (applicationFeePercent != null) 'application_fee_percent': applicationFeePercent?.toJson(),
  if (automaticTax != null) 'automatic_tax': automaticTax?.toJson(),
  if (collectionMethod != null) 'collection_method': collectionMethod?.toJson(),
  'customer': ?customer,
  'customer_account': ?customerAccount,
  if (defaultTaxRates != null) 'default_tax_rates': defaultTaxRates?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (discounts != null) 'discounts': discounts?.toJson(),
  'expand': ?expand,
  'expires_at': ?expiresAt,
  if (footer != null) 'footer': footer?.toJson(),
  if (fromQuote != null) 'from_quote': fromQuote?.toJson(),
  if (header != null) 'header': header?.toJson(),
  if (invoiceSettings != null) 'invoice_settings': invoiceSettings?.toJson(),
  if (lineItems != null) 'line_items': lineItems?.map((e) => e.toJson()).toList(),
  'metadata': ?metadata,
  if (onBehalfOf != null) 'on_behalf_of': onBehalfOf?.toJson(),
  if (subscriptionData != null) 'subscription_data': subscriptionData?.toJson(),
  'test_clock': ?testClock,
  if (transferData != null) 'transfer_data': transferData?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'application_fee_amount', 'application_fee_percent', 'automatic_tax', 'collection_method', 'customer', 'customer_account', 'default_tax_rates', 'description', 'discounts', 'expand', 'expires_at', 'footer', 'from_quote', 'header', 'invoice_settings', 'line_items', 'metadata', 'on_behalf_of', 'subscription_data', 'test_clock', 'transfer_data'}.contains(key)); } 
PostQuotesRequest copyWith({PostQuotesRequestApplicationFeeAmount Function()? applicationFeeAmount, PostQuotesRequestApplicationFeePercent Function()? applicationFeePercent, PostQuotesRequestAutomaticTax Function()? automaticTax, PostQuotesRequestCollectionMethod Function()? collectionMethod, String Function()? customer, String Function()? customerAccount, PostQuotesRequestDefaultTaxRates Function()? defaultTaxRates, PostQuotesRequestDescription Function()? description, PostQuotesRequestDiscounts Function()? discounts, List<String> Function()? expand, int Function()? expiresAt, PostQuotesRequestFooter Function()? footer, PostQuotesRequestFromQuote Function()? fromQuote, PostQuotesRequestHeader Function()? header, PostQuotesRequestInvoiceSettings Function()? invoiceSettings, List<PostQuotesRequestLineItems> Function()? lineItems, Map<String, String> Function()? metadata, PostQuotesRequestOnBehalfOf Function()? onBehalfOf, PostQuotesRequestSubscriptionData Function()? subscriptionData, String Function()? testClock, PostQuotesRequestTransferData Function()? transferData, }) { return PostQuotesRequest(
  applicationFeeAmount: applicationFeeAmount != null ? applicationFeeAmount() : this.applicationFeeAmount,
  applicationFeePercent: applicationFeePercent != null ? applicationFeePercent() : this.applicationFeePercent,
  automaticTax: automaticTax != null ? automaticTax() : this.automaticTax,
  collectionMethod: collectionMethod != null ? collectionMethod() : this.collectionMethod,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  defaultTaxRates: defaultTaxRates != null ? defaultTaxRates() : this.defaultTaxRates,
  description: description != null ? description() : this.description,
  discounts: discounts != null ? discounts() : this.discounts,
  expand: expand != null ? expand() : this.expand,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  footer: footer != null ? footer() : this.footer,
  fromQuote: fromQuote != null ? fromQuote() : this.fromQuote,
  header: header != null ? header() : this.header,
  invoiceSettings: invoiceSettings != null ? invoiceSettings() : this.invoiceSettings,
  lineItems: lineItems != null ? lineItems() : this.lineItems,
  metadata: metadata != null ? metadata() : this.metadata,
  onBehalfOf: onBehalfOf != null ? onBehalfOf() : this.onBehalfOf,
  subscriptionData: subscriptionData != null ? subscriptionData() : this.subscriptionData,
  testClock: testClock != null ? testClock() : this.testClock,
  transferData: transferData != null ? transferData() : this.transferData,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostQuotesRequest &&
          applicationFeeAmount == other.applicationFeeAmount &&
          applicationFeePercent == other.applicationFeePercent &&
          automaticTax == other.automaticTax &&
          collectionMethod == other.collectionMethod &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          defaultTaxRates == other.defaultTaxRates &&
          description == other.description &&
          discounts == other.discounts &&
          listEquals(expand, other.expand) &&
          expiresAt == other.expiresAt &&
          footer == other.footer &&
          fromQuote == other.fromQuote &&
          header == other.header &&
          invoiceSettings == other.invoiceSettings &&
          listEquals(lineItems, other.lineItems) &&
          metadata == other.metadata &&
          onBehalfOf == other.onBehalfOf &&
          subscriptionData == other.subscriptionData &&
          testClock == other.testClock &&
          transferData == other.transferData; } 
@override int get hashCode { return Object.hashAll([applicationFeeAmount, applicationFeePercent, automaticTax, collectionMethod, customer, customerAccount, defaultTaxRates, description, discounts, Object.hashAll(expand ?? const []), expiresAt, footer, fromQuote, header, invoiceSettings, Object.hashAll(lineItems ?? const []), metadata, onBehalfOf, subscriptionData, testClock, transferData]); } 
@override String toString() { return 'PostQuotesRequest(applicationFeeAmount: $applicationFeeAmount, applicationFeePercent: $applicationFeePercent, automaticTax: $automaticTax, collectionMethod: $collectionMethod, customer: $customer, customerAccount: $customerAccount, defaultTaxRates: $defaultTaxRates, description: $description, discounts: $discounts, expand: $expand, expiresAt: $expiresAt, footer: $footer, fromQuote: $fromQuote, header: $header, invoiceSettings: $invoiceSettings, lineItems: $lineItems, metadata: $metadata, onBehalfOf: $onBehalfOf, subscriptionData: $subscriptionData, testClock: $testClock, transferData: $transferData)'; } 
 }
