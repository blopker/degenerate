// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_bank_account.dart';import 'customer_payment_source_card2.dart';import 'customer_shipping3.dart';import 'optional_fields_customer_address2.dart';import 'post_customers_customer_request_address.dart';import 'post_customers_customer_request_bank_account.dart';import 'post_customers_customer_request_business_name.dart';import 'post_customers_customer_request_card.dart';import 'post_customers_customer_request_cash_balance.dart';import 'post_customers_customer_request_individual_name.dart';import 'post_customers_customer_request_invoice_settings.dart';import 'post_customers_customer_request_metadata.dart';import 'post_customers_customer_request_shipping.dart';import 'post_customers_customer_request_tax.dart';/// The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
final class PostCustomersCustomerRequestTaxExempt {const PostCustomersCustomerRequestTaxExempt._(this.value);

factory PostCustomersCustomerRequestTaxExempt.fromJson(String json) { return switch (json) {
  '' => $empty,
  'exempt' => exempt,
  'none' => none,
  'reverse' => reverse,
  _ => PostCustomersCustomerRequestTaxExempt._(json),
}; }

static const PostCustomersCustomerRequestTaxExempt $empty = PostCustomersCustomerRequestTaxExempt._('');

static const PostCustomersCustomerRequestTaxExempt exempt = PostCustomersCustomerRequestTaxExempt._('exempt');

static const PostCustomersCustomerRequestTaxExempt none = PostCustomersCustomerRequestTaxExempt._('none');

static const PostCustomersCustomerRequestTaxExempt reverse = PostCustomersCustomerRequestTaxExempt._('reverse');

static const List<PostCustomersCustomerRequestTaxExempt> values = [$empty, exempt, none, reverse];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerRequestTaxExempt && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestTaxExempt($value)'; } 
 }
final class PostCustomersCustomerRequest {const PostCustomersCustomerRequest({this.address, this.balance, this.bankAccount, this.businessName, this.card, this.cashBalance, this.defaultAlipayAccount, this.defaultBankAccount, this.defaultCard, this.defaultSource, this.description, this.email, this.expand, this.individualName, this.invoicePrefix, this.invoiceSettings, this.metadata, this.name, this.nextInvoiceSequence, this.phone, this.preferredLocales, this.shipping, this.source, this.tax, this.taxExempt, });

factory PostCustomersCustomerRequest.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerRequest(
  address: json['address'] != null ? OneOf2.parse(json['address'], fromA: (v) => OptionalFieldsCustomerAddress2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerRequestAddressVariant2.fromJson(v as String),) : null,
  balance: json['balance'] != null ? (json['balance'] as num).toInt() : null,
  bankAccount: json['bank_account'] != null ? OneOf2.parse(json['bank_account'], fromA: (v) => CustomerPaymentSourceBankAccount.fromJson(v as Map<String, dynamic>), fromB: (v) => v as String,) : null,
  businessName: json['business_name'] != null ? OneOf2.parse(json['business_name'], fromA: (v) => v as String, fromB: (v) => PostCustomersCustomerRequestBusinessNameVariant2.fromJson(v as String),) : null,
  card: json['card'] != null ? OneOf2.parse(json['card'], fromA: (v) => CustomerPaymentSourceCard2.fromJson(v as Map<String, dynamic>), fromB: (v) => v as String,) : null,
  cashBalance: json['cash_balance'] != null ? PostCustomersCustomerRequestCashBalance.fromJson(json['cash_balance'] as Map<String, dynamic>) : null,
  defaultAlipayAccount: json['default_alipay_account'] as String?,
  defaultBankAccount: json['default_bank_account'] as String?,
  defaultCard: json['default_card'] as String?,
  defaultSource: json['default_source'] as String?,
  description: json['description'] as String?,
  email: json['email'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  individualName: json['individual_name'] != null ? OneOf2.parse(json['individual_name'], fromA: (v) => v as String, fromB: (v) => PostCustomersCustomerRequestIndividualNameVariant2.fromJson(v as String),) : null,
  invoicePrefix: json['invoice_prefix'] as String?,
  invoiceSettings: json['invoice_settings'] != null ? PostCustomersCustomerRequestInvoiceSettings.fromJson(json['invoice_settings'] as Map<String, dynamic>) : null,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostCustomersCustomerRequestMetadataVariant2.fromJson(v as String),) : null,
  name: json['name'] as String?,
  nextInvoiceSequence: json['next_invoice_sequence'] != null ? (json['next_invoice_sequence'] as num).toInt() : null,
  phone: json['phone'] as String?,
  preferredLocales: (json['preferred_locales'] as List<dynamic>?)?.map((e) => e as String).toList(),
  shipping: json['shipping'] != null ? OneOf2.parse(json['shipping'], fromA: (v) => CustomerShipping3.fromJson(v as Map<String, dynamic>), fromB: (v) => PostCustomersCustomerRequestShippingVariant2.fromJson(v as String),) : null,
  source: json['source'] as String?,
  tax: json['tax'] != null ? PostCustomersCustomerRequestTax.fromJson(json['tax'] as Map<String, dynamic>) : null,
  taxExempt: json['tax_exempt'] != null ? PostCustomersCustomerRequestTaxExempt.fromJson(json['tax_exempt'] as String) : null,
); }

/// The customer's address. Learn about [country-specific requirements for calculating tax](https://docs.stripe.com/invoicing/taxes?dashboard-or-api=dashboard#set-up-customer).
final PostCustomersCustomerRequestAddress? address;

/// An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
final int? balance;

/// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
final PostCustomersCustomerRequestBankAccount? bankAccount;

/// The customer's business name. This may be up to *150 characters*.
final PostCustomersCustomerRequestBusinessName? businessName;

/// A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
final PostCustomersCustomerRequestCard? card;

/// Balance information and default balance settings for this customer.
final PostCustomersCustomerRequestCashBalance? cashBalance;

/// ID of Alipay account to make the customer's new default for invoice payments.
final String? defaultAlipayAccount;

/// ID of bank account to make the customer's new default for invoice payments.
final String? defaultBankAccount;

/// ID of card to make the customer's new default for invoice payments.
final String? defaultCard;

/// If you are using payment methods created via the PaymentMethods API, see the [invoice_settings.default_payment_method](https://docs.stripe.com/api/customers/update#update_customer-invoice_settings-default_payment_method) parameter.
/// 
/// Provide the ID of a payment source already attached to this customer to make it this customer's default payment source.
/// 
/// If you want to add a new payment source and make it the default, see the [source](https://docs.stripe.com/api/customers/update#update_customer-source) property.
final String? defaultSource;

/// An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
final String? description;

/// Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
final String? email;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The customer's full name. This may be up to *150 characters*.
final PostCustomersCustomerRequestIndividualName? individualName;

/// The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
final String? invoicePrefix;

/// Default invoice settings for this customer.
final PostCustomersCustomerRequestInvoiceSettings? invoiceSettings;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostCustomersCustomerRequestMetadata? metadata;

/// The customer's full name or business name.
final String? name;

/// The sequence to be used on the customer's next invoice. Defaults to 1.
final int? nextInvoiceSequence;

/// The customer's phone number.
final String? phone;

/// Customer's preferred languages, ordered by preference.
final List<String>? preferredLocales;

/// The customer's shipping information. Appears on invoices emailed to this customer.
final PostCustomersCustomerRequestShipping? shipping;

final String? source;

/// Tax details about the customer.
final PostCustomersCustomerRequestTax? tax;

/// The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
final PostCustomersCustomerRequestTaxExempt? taxExempt;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  'balance': ?balance,
  if (bankAccount != null) 'bank_account': bankAccount?.toJson(),
  if (businessName != null) 'business_name': businessName?.toJson(),
  if (card != null) 'card': card?.toJson(),
  if (cashBalance != null) 'cash_balance': cashBalance?.toJson(),
  'default_alipay_account': ?defaultAlipayAccount,
  'default_bank_account': ?defaultBankAccount,
  'default_card': ?defaultCard,
  'default_source': ?defaultSource,
  'description': ?description,
  'email': ?email,
  'expand': ?expand,
  if (individualName != null) 'individual_name': individualName?.toJson(),
  'invoice_prefix': ?invoicePrefix,
  if (invoiceSettings != null) 'invoice_settings': invoiceSettings?.toJson(),
  if (metadata != null) 'metadata': metadata?.toJson(),
  'name': ?name,
  'next_invoice_sequence': ?nextInvoiceSequence,
  'phone': ?phone,
  'preferred_locales': ?preferredLocales,
  if (shipping != null) 'shipping': shipping?.toJson(),
  'source': ?source,
  if (tax != null) 'tax': tax?.toJson(),
  if (taxExempt != null) 'tax_exempt': taxExempt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'balance', 'bank_account', 'business_name', 'card', 'cash_balance', 'default_alipay_account', 'default_bank_account', 'default_card', 'default_source', 'description', 'email', 'expand', 'individual_name', 'invoice_prefix', 'invoice_settings', 'metadata', 'name', 'next_invoice_sequence', 'phone', 'preferred_locales', 'shipping', 'source', 'tax', 'tax_exempt'}.contains(key)); } 
PostCustomersCustomerRequest copyWith({PostCustomersCustomerRequestAddress Function()? address, int Function()? balance, PostCustomersCustomerRequestBankAccount Function()? bankAccount, PostCustomersCustomerRequestBusinessName Function()? businessName, PostCustomersCustomerRequestCard Function()? card, PostCustomersCustomerRequestCashBalance Function()? cashBalance, String Function()? defaultAlipayAccount, String Function()? defaultBankAccount, String Function()? defaultCard, String Function()? defaultSource, String Function()? description, String Function()? email, List<String> Function()? expand, PostCustomersCustomerRequestIndividualName Function()? individualName, String Function()? invoicePrefix, PostCustomersCustomerRequestInvoiceSettings Function()? invoiceSettings, PostCustomersCustomerRequestMetadata Function()? metadata, String Function()? name, int Function()? nextInvoiceSequence, String Function()? phone, List<String> Function()? preferredLocales, PostCustomersCustomerRequestShipping Function()? shipping, String Function()? source, PostCustomersCustomerRequestTax Function()? tax, PostCustomersCustomerRequestTaxExempt Function()? taxExempt, }) { return PostCustomersCustomerRequest(
  address: address != null ? address() : this.address,
  balance: balance != null ? balance() : this.balance,
  bankAccount: bankAccount != null ? bankAccount() : this.bankAccount,
  businessName: businessName != null ? businessName() : this.businessName,
  card: card != null ? card() : this.card,
  cashBalance: cashBalance != null ? cashBalance() : this.cashBalance,
  defaultAlipayAccount: defaultAlipayAccount != null ? defaultAlipayAccount() : this.defaultAlipayAccount,
  defaultBankAccount: defaultBankAccount != null ? defaultBankAccount() : this.defaultBankAccount,
  defaultCard: defaultCard != null ? defaultCard() : this.defaultCard,
  defaultSource: defaultSource != null ? defaultSource() : this.defaultSource,
  description: description != null ? description() : this.description,
  email: email != null ? email() : this.email,
  expand: expand != null ? expand() : this.expand,
  individualName: individualName != null ? individualName() : this.individualName,
  invoicePrefix: invoicePrefix != null ? invoicePrefix() : this.invoicePrefix,
  invoiceSettings: invoiceSettings != null ? invoiceSettings() : this.invoiceSettings,
  metadata: metadata != null ? metadata() : this.metadata,
  name: name != null ? name() : this.name,
  nextInvoiceSequence: nextInvoiceSequence != null ? nextInvoiceSequence() : this.nextInvoiceSequence,
  phone: phone != null ? phone() : this.phone,
  preferredLocales: preferredLocales != null ? preferredLocales() : this.preferredLocales,
  shipping: shipping != null ? shipping() : this.shipping,
  source: source != null ? source() : this.source,
  tax: tax != null ? tax() : this.tax,
  taxExempt: taxExempt != null ? taxExempt() : this.taxExempt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerRequest &&
          address == other.address &&
          balance == other.balance &&
          bankAccount == other.bankAccount &&
          businessName == other.businessName &&
          card == other.card &&
          cashBalance == other.cashBalance &&
          defaultAlipayAccount == other.defaultAlipayAccount &&
          defaultBankAccount == other.defaultBankAccount &&
          defaultCard == other.defaultCard &&
          defaultSource == other.defaultSource &&
          description == other.description &&
          email == other.email &&
          listEquals(expand, other.expand) &&
          individualName == other.individualName &&
          invoicePrefix == other.invoicePrefix &&
          invoiceSettings == other.invoiceSettings &&
          metadata == other.metadata &&
          name == other.name &&
          nextInvoiceSequence == other.nextInvoiceSequence &&
          phone == other.phone &&
          listEquals(preferredLocales, other.preferredLocales) &&
          shipping == other.shipping &&
          source == other.source &&
          tax == other.tax &&
          taxExempt == other.taxExempt; } 
@override int get hashCode { return Object.hashAll([address, balance, bankAccount, businessName, card, cashBalance, defaultAlipayAccount, defaultBankAccount, defaultCard, defaultSource, description, email, Object.hashAll(expand ?? const []), individualName, invoicePrefix, invoiceSettings, metadata, name, nextInvoiceSequence, phone, Object.hashAll(preferredLocales ?? const []), shipping, source, tax, taxExempt]); } 
@override String toString() { return 'PostCustomersCustomerRequest(address: $address, balance: $balance, bankAccount: $bankAccount, businessName: $businessName, card: $card, cashBalance: $cashBalance, defaultAlipayAccount: $defaultAlipayAccount, defaultBankAccount: $defaultBankAccount, defaultCard: $defaultCard, defaultSource: $defaultSource, description: $description, email: $email, expand: $expand, individualName: $individualName, invoicePrefix: $invoicePrefix, invoiceSettings: $invoiceSettings, metadata: $metadata, name: $name, nextInvoiceSequence: $nextInvoiceSequence, phone: $phone, preferredLocales: $preferredLocales, shipping: $shipping, source: $source, tax: $tax, taxExempt: $taxExempt)'; } 
 }
