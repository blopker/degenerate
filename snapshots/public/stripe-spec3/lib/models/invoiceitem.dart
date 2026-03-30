// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoice_item_parents_invoice_item_parent.dart';import 'billing_bill_resource_invoicing_pricing_pricing.dart';import 'customer.dart';import 'deleted_customer.dart';import 'discount.dart';import 'invoice.dart';import 'invoice_line_item_period.dart';import 'invoiceitem_customer.dart';import 'invoiceitem_discounts.dart';import 'invoiceitem_invoice.dart';import 'invoiceitem_test_clock.dart';import 'proration_details.dart';import 'tax_rate.dart';import 'test_helpers_test_clock.dart';/// String representing the object's type. Objects of the same type share the same value.
final class InvoiceitemObject {const InvoiceitemObject._(this.value);

factory InvoiceitemObject.fromJson(String json) { return switch (json) {
  'invoiceitem' => invoiceitem,
  _ => InvoiceitemObject._(json),
}; }

static const InvoiceitemObject invoiceitem = InvoiceitemObject._('invoiceitem');

static const List<InvoiceitemObject> values = [invoiceitem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoiceitemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoiceitemObject($value)'; } 
 }
/// Invoice Items represent the component lines of an [invoice](https://docs.stripe.com/api/invoices). When you create an invoice item with an `invoice` field, it is attached to the specified invoice and included as [an invoice line item](https://docs.stripe.com/api/invoices/line_item) within [invoice.lines](https://docs.stripe.com/api/invoices/object#invoice_object-lines).
/// 
/// Invoice Items can be created before you are ready to actually send the invoice. This can be particularly useful when combined
/// with a [subscription](https://docs.stripe.com/api/subscriptions). Sometimes you want to add a charge or credit to a customer, but actually charge
/// or credit the customer's card only at the end of a regular billing cycle. This is useful for combining several charges
/// (to minimize per-transaction fees), or for having Stripe tabulate your usage-based billing totals.
/// 
/// Related guides: [Integrate with the Invoicing API](https://docs.stripe.com/invoicing/integration), [Subscription Invoices](https://docs.stripe.com/billing/invoices/subscription#adding-upcoming-invoice-items).
final class Invoiceitem {const Invoiceitem({required this.amount, required this.currency, required this.customer, this.customerAccount, required this.date, this.description, required this.discountable, this.discounts, required this.id, this.invoice, required this.livemode, this.metadata, this.netAmount, required this.object, this.parent, required this.period, this.pricing, required this.proration, this.prorationDetails, required this.quantity, this.taxRates, this.testClock, });

factory Invoiceitem.fromJson(Map<String, dynamic> json) { return Invoiceitem(
  amount: (json['amount'] as num).toInt(),
  currency: json['currency'] as String,
  customer: OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),),
  customerAccount: json['customer_account'] as String?,
  date: (json['date'] as num).toInt(),
  description: json['description'] as String?,
  discountable: json['discountable'] as bool,
  discounts: (json['discounts'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => Discount.fromJson(v as Map<String, dynamic>),)).toList(),
  id: json['id'] as String,
  invoice: json['invoice'] != null ? OneOf2.parse(json['invoice'], fromA: (v) => v as String, fromB: (v) => Invoice.fromJson(v as Map<String, dynamic>),) : null,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  netAmount: json['net_amount'] != null ? (json['net_amount'] as num).toInt() : null,
  object: InvoiceitemObject.fromJson(json['object'] as String),
  parent: json['parent'] != null ? BillingBillResourceInvoiceItemParentsInvoiceItemParent.fromJson(json['parent'] as Map<String, dynamic>) : null,
  period: InvoiceLineItemPeriod.fromJson(json['period'] as Map<String, dynamic>),
  pricing: json['pricing'] != null ? BillingBillResourceInvoicingPricingPricing.fromJson(json['pricing'] as Map<String, dynamic>) : null,
  proration: json['proration'] as bool,
  prorationDetails: json['proration_details'] != null ? ProrationDetails.fromJson(json['proration_details'] as Map<String, dynamic>) : null,
  quantity: (json['quantity'] as num).toInt(),
  taxRates: (json['tax_rates'] as List<dynamic>?)?.map((e) => TaxRate.fromJson(e as Map<String, dynamic>)).toList(),
  testClock: json['test_clock'] != null ? OneOf2.parse(json['test_clock'], fromA: (v) => v as String, fromB: (v) => TestHelpersTestClock.fromJson(v as Map<String, dynamic>),) : null,
); }

/// Amount (in the `currency` specified) of the invoice item. This should always be equal to `unit_amount * quantity`.
final int amount;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// The ID of the customer to bill for this invoice item.
final InvoiceitemCustomer customer;

/// The ID of the account to bill for this invoice item.
final String? customerAccount;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int date;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final String? description;

/// If true, discounts will apply to this invoice item. Always false for prorations.
final bool discountable;

/// The discounts which apply to the invoice item. Item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
final List<InvoiceitemDiscounts>? discounts;

/// Unique identifier for the object.
final String id;

/// The ID of the invoice this invoice item belongs to.
final InvoiceitemInvoice? invoice;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// The amount after discounts, but before credits and taxes. This field is `null` for `discountable=true` items.
final int? netAmount;

/// String representing the object's type. Objects of the same type share the same value.
final InvoiceitemObject object;

/// The parent that generated this invoice item.
final BillingBillResourceInvoiceItemParentsInvoiceItemParent? parent;

final InvoiceLineItemPeriod period;

/// The pricing information of the invoice item.
final BillingBillResourceInvoicingPricingPricing? pricing;

/// Whether the invoice item was created automatically as a proration adjustment when the customer switched plans.
final bool proration;

final ProrationDetails? prorationDetails;

/// Quantity of units for the invoice item. If the invoice item is a proration, the quantity of the subscription that the proration was computed for.
final int quantity;

/// The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
final List<TaxRate>? taxRates;

/// ID of the test clock this invoice item belongs to.
final InvoiceitemTestClock? testClock;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'currency': currency,
  'customer': customer.toJson(),
  'customer_account': ?customerAccount,
  'date': date,
  'description': ?description,
  'discountable': discountable,
  if (discounts != null) 'discounts': discounts?.map((e) => e.toJson()).toList(),
  'id': id,
  if (invoice != null) 'invoice': invoice?.toJson(),
  'livemode': livemode,
  'metadata': ?metadata,
  'net_amount': ?netAmount,
  'object': object.toJson(),
  if (parent != null) 'parent': parent?.toJson(),
  'period': period.toJson(),
  if (pricing != null) 'pricing': pricing?.toJson(),
  'proration': proration,
  if (prorationDetails != null) 'proration_details': prorationDetails?.toJson(),
  'quantity': quantity,
  if (taxRates != null) 'tax_rates': taxRates?.map((e) => e.toJson()).toList(),
  if (testClock != null) 'test_clock': testClock?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('customer') &&
      json.containsKey('date') && json['date'] is num &&
      json.containsKey('discountable') && json['discountable'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('period') &&
      json.containsKey('proration') && json['proration'] is bool &&
      json.containsKey('quantity') && json['quantity'] is num; } 
Invoiceitem copyWith({int? amount, String? currency, InvoiceitemCustomer? customer, String? Function()? customerAccount, int? date, String? Function()? description, bool? discountable, List<InvoiceitemDiscounts>? Function()? discounts, String? id, InvoiceitemInvoice? Function()? invoice, bool? livemode, Map<String, String>? Function()? metadata, int Function()? netAmount, InvoiceitemObject? object, BillingBillResourceInvoiceItemParentsInvoiceItemParent? Function()? parent, InvoiceLineItemPeriod? period, BillingBillResourceInvoicingPricingPricing? Function()? pricing, bool? proration, ProrationDetails Function()? prorationDetails, int? quantity, List<TaxRate>? Function()? taxRates, InvoiceitemTestClock? Function()? testClock, }) { return Invoiceitem(
  amount: amount ?? this.amount,
  currency: currency ?? this.currency,
  customer: customer ?? this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  date: date ?? this.date,
  description: description != null ? description() : this.description,
  discountable: discountable ?? this.discountable,
  discounts: discounts != null ? discounts() : this.discounts,
  id: id ?? this.id,
  invoice: invoice != null ? invoice() : this.invoice,
  livemode: livemode ?? this.livemode,
  metadata: metadata != null ? metadata() : this.metadata,
  netAmount: netAmount != null ? netAmount() : this.netAmount,
  object: object ?? this.object,
  parent: parent != null ? parent() : this.parent,
  period: period ?? this.period,
  pricing: pricing != null ? pricing() : this.pricing,
  proration: proration ?? this.proration,
  prorationDetails: prorationDetails != null ? prorationDetails() : this.prorationDetails,
  quantity: quantity ?? this.quantity,
  taxRates: taxRates != null ? taxRates() : this.taxRates,
  testClock: testClock != null ? testClock() : this.testClock,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Invoiceitem &&
          amount == other.amount &&
          currency == other.currency &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          date == other.date &&
          description == other.description &&
          discountable == other.discountable &&
          listEquals(discounts, other.discounts) &&
          id == other.id &&
          invoice == other.invoice &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          netAmount == other.netAmount &&
          object == other.object &&
          parent == other.parent &&
          period == other.period &&
          pricing == other.pricing &&
          proration == other.proration &&
          prorationDetails == other.prorationDetails &&
          quantity == other.quantity &&
          listEquals(taxRates, other.taxRates) &&
          testClock == other.testClock; } 
@override int get hashCode { return Object.hashAll([amount, currency, customer, customerAccount, date, description, discountable, Object.hashAll(discounts ?? const []), id, invoice, livemode, metadata, netAmount, object, parent, period, pricing, proration, prorationDetails, quantity, Object.hashAll(taxRates ?? const []), testClock]); } 
@override String toString() { return 'Invoiceitem(amount: $amount, currency: $currency, customer: $customer, customerAccount: $customerAccount, date: $date, description: $description, discountable: $discountable, discounts: $discounts, id: $id, invoice: $invoice, livemode: $livemode, metadata: $metadata, netAmount: $netAmount, object: $object, parent: $parent, period: $period, pricing: $pricing, proration: $proration, prorationDetails: $prorationDetails, quantity: $quantity, taxRates: $taxRates, testClock: $testClock)'; } 
 }
