// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoiceitems_request_discounts.dart';import 'post_invoiceitems_request_discounts_variant1.dart';import 'post_invoiceitems_request_metadata.dart';import 'post_invoiceitems_request_period.dart';import 'post_invoiceitems_request_price_data.dart';import 'post_invoiceitems_request_pricing.dart';import 'post_invoiceitems_request_tax_code.dart';/// Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
final class PostInvoiceitemsRequestTaxBehavior {const PostInvoiceitemsRequestTaxBehavior._(this.value);

factory PostInvoiceitemsRequestTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostInvoiceitemsRequestTaxBehavior._(json),
}; }

static const PostInvoiceitemsRequestTaxBehavior exclusive = PostInvoiceitemsRequestTaxBehavior._('exclusive');

static const PostInvoiceitemsRequestTaxBehavior inclusive = PostInvoiceitemsRequestTaxBehavior._('inclusive');

static const PostInvoiceitemsRequestTaxBehavior unspecified = PostInvoiceitemsRequestTaxBehavior._('unspecified');

static const List<PostInvoiceitemsRequestTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoiceitemsRequestTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoiceitemsRequestTaxBehavior($value)'; } 
 }
final class PostInvoiceitemsRequest {const PostInvoiceitemsRequest({this.amount, this.currency, this.customer, this.customerAccount, this.description, this.discountable, this.discounts, this.expand, this.invoice, this.metadata, this.period, this.priceData, this.pricing, this.quantity, this.subscription, this.taxBehavior, this.taxCode, this.taxRates, this.unitAmountDecimal, });

factory PostInvoiceitemsRequest.fromJson(Map<String, dynamic> json) { return PostInvoiceitemsRequest(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  currency: json['currency'] as String?,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  description: json['description'] as String?,
  discountable: json['discountable'] as bool?,
  discounts: json['discounts'] != null ? OneOf2.parse(json['discounts'], fromA: (v) => (v as List<dynamic>).map((e) => PostInvoiceitemsRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostInvoiceitemsRequestDiscountsVariant2.fromJson(v as String),) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  invoice: json['invoice'] as String?,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostInvoiceitemsRequestMetadataVariant2.fromJson(v as String),) : null,
  period: json['period'] != null ? PostInvoiceitemsRequestPeriod.fromJson(json['period'] as Map<String, dynamic>) : null,
  priceData: json['price_data'] != null ? PostInvoiceitemsRequestPriceData.fromJson(json['price_data'] as Map<String, dynamic>) : null,
  pricing: json['pricing'] != null ? PostInvoiceitemsRequestPricing.fromJson(json['pricing'] as Map<String, dynamic>) : null,
  quantity: json['quantity'] != null ? (json['quantity'] as num).toInt() : null,
  subscription: json['subscription'] as String?,
  taxBehavior: json['tax_behavior'] != null ? PostInvoiceitemsRequestTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  taxCode: json['tax_code'] != null ? OneOf2.parse(json['tax_code'], fromA: (v) => v as String, fromB: (v) => PostInvoiceitemsRequestTaxCodeVariant2.fromJson(v as String),) : null,
  taxRates: (json['tax_rates'] as List<dynamic>?)?.map((e) => e as String).toList(),
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

/// The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. Passing in a negative `amount` will reduce the `amount_due` on the invoice.
final int? amount;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String? currency;

/// The ID of the customer to bill for this invoice item.
final String? customer;

/// The ID of the account representing the customer to bill for this invoice item.
final String? customerAccount;

/// An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
final String? description;

/// Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items.
final bool? discountable;

/// The coupons and promotion codes to redeem into discounts for the invoice item or invoice line item.
final PostInvoiceitemsRequestDiscounts? discounts;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The ID of an existing invoice to add this invoice item to. For subscription invoices, when left blank, the invoice item will be added to the next upcoming scheduled invoice. For standalone invoices, the invoice item won't be automatically added unless you pass `pending_invoice_item_behavior: 'include'` when creating the invoice. This is useful when adding invoice items in response to an invoice.created webhook. You can only add invoice items to draft invoices and there is a maximum of 250 items per invoice.
final String? invoice;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostInvoiceitemsRequestMetadata? metadata;

/// The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://docs.stripe.com/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://docs.stripe.com/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
final PostInvoiceitemsRequestPeriod? period;

/// Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline.
final PostInvoiceitemsRequestPriceData? priceData;

/// The pricing information for the invoice item.
final PostInvoiceitemsRequestPricing? pricing;

/// Non-negative integer. The quantity of units for the invoice item.
final int? quantity;

/// The ID of a subscription to add this invoice item to. When left blank, the invoice item is added to the next upcoming scheduled invoice. When set, scheduled invoices for subscriptions other than the specified subscription will ignore the invoice item. Use this when you want to express that an invoice item has been accrued within the context of a particular subscription.
final String? subscription;

/// Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
final PostInvoiceitemsRequestTaxBehavior? taxBehavior;

/// A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
final PostInvoiceitemsRequestTaxCode? taxCode;

/// The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
final List<String>? taxRates;

/// The decimal unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This `unit_amount_decimal` will be multiplied by the quantity to get the full amount. Passing in a negative `unit_amount_decimal` will reduce the `amount_due` on the invoice. Accepts at most 12 decimal places.
final String? unitAmountDecimal;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  'currency': ?currency,
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'description': ?description,
  'discountable': ?discountable,
  if (discounts != null) 'discounts': discounts?.toJson(),
  'expand': ?expand,
  'invoice': ?invoice,
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (period != null) 'period': period?.toJson(),
  if (priceData != null) 'price_data': priceData?.toJson(),
  if (pricing != null) 'pricing': pricing?.toJson(),
  'quantity': ?quantity,
  'subscription': ?subscription,
  if (taxBehavior != null) 'tax_behavior': taxBehavior?.toJson(),
  if (taxCode != null) 'tax_code': taxCode?.toJson(),
  'tax_rates': ?taxRates,
  'unit_amount_decimal': ?unitAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostInvoiceitemsRequest copyWith({int Function()? amount, String Function()? currency, String Function()? customer, String Function()? customerAccount, String Function()? description, bool Function()? discountable, PostInvoiceitemsRequestDiscounts Function()? discounts, List<String> Function()? expand, String Function()? invoice, PostInvoiceitemsRequestMetadata Function()? metadata, PostInvoiceitemsRequestPeriod Function()? period, PostInvoiceitemsRequestPriceData Function()? priceData, PostInvoiceitemsRequestPricing Function()? pricing, int Function()? quantity, String Function()? subscription, PostInvoiceitemsRequestTaxBehavior Function()? taxBehavior, PostInvoiceitemsRequestTaxCode Function()? taxCode, List<String> Function()? taxRates, String Function()? unitAmountDecimal, }) { return PostInvoiceitemsRequest(
  amount: amount != null ? amount() : this.amount,
  currency: currency != null ? currency() : this.currency,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  description: description != null ? description() : this.description,
  discountable: discountable != null ? discountable() : this.discountable,
  discounts: discounts != null ? discounts() : this.discounts,
  expand: expand != null ? expand() : this.expand,
  invoice: invoice != null ? invoice() : this.invoice,
  metadata: metadata != null ? metadata() : this.metadata,
  period: period != null ? period() : this.period,
  priceData: priceData != null ? priceData() : this.priceData,
  pricing: pricing != null ? pricing() : this.pricing,
  quantity: quantity != null ? quantity() : this.quantity,
  subscription: subscription != null ? subscription() : this.subscription,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  taxCode: taxCode != null ? taxCode() : this.taxCode,
  taxRates: taxRates != null ? taxRates() : this.taxRates,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoiceitemsRequest &&
          amount == other.amount &&
          currency == other.currency &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          description == other.description &&
          discountable == other.discountable &&
          discounts == other.discounts &&
          listEquals(expand, other.expand) &&
          invoice == other.invoice &&
          metadata == other.metadata &&
          period == other.period &&
          priceData == other.priceData &&
          pricing == other.pricing &&
          quantity == other.quantity &&
          subscription == other.subscription &&
          taxBehavior == other.taxBehavior &&
          taxCode == other.taxCode &&
          listEquals(taxRates, other.taxRates) &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(amount, currency, customer, customerAccount, description, discountable, discounts, Object.hashAll(expand ?? const []), invoice, metadata, period, priceData, pricing, quantity, subscription, taxBehavior, taxCode, Object.hashAll(taxRates ?? const []), unitAmountDecimal); } 
@override String toString() { return 'PostInvoiceitemsRequest(amount: $amount, currency: $currency, customer: $customer, customerAccount: $customerAccount, description: $description, discountable: $discountable, discounts: $discounts, expand: $expand, invoice: $invoice, metadata: $metadata, period: $period, priceData: $priceData, pricing: $pricing, quantity: $quantity, subscription: $subscription, taxBehavior: $taxBehavior, taxCode: $taxCode, taxRates: $taxRates, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
