// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoicing_taxes_tax.dart';import 'discount.dart';import 'discounts_resource_discount_amount.dart';import 'invoice_line_item_period.dart';import 'invoices_resource_pretax_credit_amount.dart';import 'line_item_discounts.dart';import 'line_item_parent.dart';import 'line_item_pricing.dart';import 'line_item_subscription.dart';import 'subscription.dart';/// String representing the object's type. Objects of the same type share the same value.
final class LineItemObject {const LineItemObject._(this.value);

factory LineItemObject.fromJson(String json) { return switch (json) {
  'line_item' => lineItem,
  _ => LineItemObject._(json),
}; }

static const LineItemObject lineItem = LineItemObject._('line_item');

static const List<LineItemObject> values = [lineItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LineItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LineItemObject($value)'; } 
 }
/// Invoice Line Items represent the individual lines within an [invoice](https://docs.stripe.com/api/invoices) and only exist within the context of an invoice.
/// 
/// Each line item is backed by either an [invoice item](https://docs.stripe.com/api/invoiceitems) or a [subscription item](https://docs.stripe.com/api/subscription_items).
final class LineItem {const LineItem({required this.amount, required this.currency, this.description, this.discountAmounts, required this.discountable, required this.discounts, required this.id, this.invoice, required this.livemode, required this.metadata, required this.object, this.parent, required this.period, this.pretaxCreditAmounts, this.pricing, this.quantity, this.subscription, required this.subtotal, this.taxes, });

factory LineItem.fromJson(Map<String, dynamic> json) { return LineItem(
  amount: (json['amount'] as num).toInt(),
  currency: json['currency'] as String,
  description: json['description'] as String?,
  discountAmounts: (json['discount_amounts'] as List<dynamic>?)?.map((e) => DiscountsResourceDiscountAmount.fromJson(e as Map<String, dynamic>)).toList(),
  discountable: json['discountable'] as bool,
  discounts: (json['discounts'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => Discount.fromJson(v as Map<String, dynamic>),)).toList(),
  id: json['id'] as String,
  invoice: json['invoice'] as String?,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  object: LineItemObject.fromJson(json['object'] as String),
  parent: json['parent'] != null ? LineItemParent.fromJson(json['parent'] as Map<String, dynamic>) : null,
  period: InvoiceLineItemPeriod.fromJson(json['period'] as Map<String, dynamic>),
  pretaxCreditAmounts: (json['pretax_credit_amounts'] as List<dynamic>?)?.map((e) => InvoicesResourcePretaxCreditAmount.fromJson(e as Map<String, dynamic>)).toList(),
  pricing: json['pricing'] != null ? LineItemPricing.fromJson(json['pricing'] as Map<String, dynamic>) : null,
  quantity: json['quantity'] != null ? (json['quantity'] as num).toInt() : null,
  subscription: json['subscription'] != null ? OneOf2.parse(json['subscription'], fromA: (v) => v as String, fromB: (v) => Subscription.fromJson(v as Map<String, dynamic>),) : null,
  subtotal: (json['subtotal'] as num).toInt(),
  taxes: (json['taxes'] as List<dynamic>?)?.map((e) => BillingBillResourceInvoicingTaxesTax.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The amount, in cents (or local equivalent).
final int amount;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final String? description;

/// The amount of discount calculated per discount for this line item.
final List<DiscountsResourceDiscountAmount>? discountAmounts;

/// If true, discounts will apply to this line item. Always false for prorations.
final bool discountable;

/// The discounts applied to the invoice line item. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
final List<LineItemDiscounts> discounts;

/// Unique identifier for the object.
final String id;

/// The ID of the invoice that contains this line item.
final String? invoice;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with `type=subscription`, `metadata` reflects the current metadata from the subscription associated with the line item, unless the invoice line was directly updated with different metadata after creation.
final Map<String,String> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final LineItemObject object;

/// The parent that generated this line item.
final LineItemParent? parent;

final InvoiceLineItemPeriod period;

/// Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this line item.
final List<InvoicesResourcePretaxCreditAmount>? pretaxCreditAmounts;

/// The pricing information of the line item.
final LineItemPricing? pricing;

/// The quantity of the subscription, if the line item is a subscription or a proration.
final int? quantity;

final LineItemSubscription? subscription;

/// The subtotal of the line item, in cents (or local equivalent), before any discounts or taxes.
final int subtotal;

/// The tax information of the line item.
final List<BillingBillResourceInvoicingTaxesTax>? taxes;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'currency': currency,
  'description': ?description,
  if (discountAmounts != null) 'discount_amounts': discountAmounts?.map((e) => e.toJson()).toList(),
  'discountable': discountable,
  'discounts': discounts.map((e) => e.toJson()).toList(),
  'id': id,
  'invoice': ?invoice,
  'livemode': livemode,
  'metadata': metadata,
  'object': object.toJson(),
  if (parent != null) 'parent': parent?.toJson(),
  'period': period.toJson(),
  if (pretaxCreditAmounts != null) 'pretax_credit_amounts': pretaxCreditAmounts?.map((e) => e.toJson()).toList(),
  if (pricing != null) 'pricing': pricing?.toJson(),
  'quantity': ?quantity,
  if (subscription != null) 'subscription': subscription?.toJson(),
  'subtotal': subtotal,
  if (taxes != null) 'taxes': taxes?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('discountable') && json['discountable'] is bool &&
      json.containsKey('discounts') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('period') &&
      json.containsKey('subtotal') && json['subtotal'] is num; } 
LineItem copyWith({int? amount, String? currency, String? Function()? description, List<DiscountsResourceDiscountAmount>? Function()? discountAmounts, bool? discountable, List<LineItemDiscounts>? discounts, String? id, String? Function()? invoice, bool? livemode, Map<String,String>? metadata, LineItemObject? object, LineItemParent? Function()? parent, InvoiceLineItemPeriod? period, List<InvoicesResourcePretaxCreditAmount>? Function()? pretaxCreditAmounts, LineItemPricing? Function()? pricing, int? Function()? quantity, LineItemSubscription? Function()? subscription, int? subtotal, List<BillingBillResourceInvoicingTaxesTax>? Function()? taxes, }) { return LineItem(
  amount: amount ?? this.amount,
  currency: currency ?? this.currency,
  description: description != null ? description() : this.description,
  discountAmounts: discountAmounts != null ? discountAmounts() : this.discountAmounts,
  discountable: discountable ?? this.discountable,
  discounts: discounts ?? this.discounts,
  id: id ?? this.id,
  invoice: invoice != null ? invoice() : this.invoice,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  parent: parent != null ? parent() : this.parent,
  period: period ?? this.period,
  pretaxCreditAmounts: pretaxCreditAmounts != null ? pretaxCreditAmounts() : this.pretaxCreditAmounts,
  pricing: pricing != null ? pricing() : this.pricing,
  quantity: quantity != null ? quantity() : this.quantity,
  subscription: subscription != null ? subscription() : this.subscription,
  subtotal: subtotal ?? this.subtotal,
  taxes: taxes != null ? taxes() : this.taxes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LineItem &&
          amount == other.amount &&
          currency == other.currency &&
          description == other.description &&
          listEquals(discountAmounts, other.discountAmounts) &&
          discountable == other.discountable &&
          listEquals(discounts, other.discounts) &&
          id == other.id &&
          invoice == other.invoice &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          parent == other.parent &&
          period == other.period &&
          listEquals(pretaxCreditAmounts, other.pretaxCreditAmounts) &&
          pricing == other.pricing &&
          quantity == other.quantity &&
          subscription == other.subscription &&
          subtotal == other.subtotal &&
          listEquals(taxes, other.taxes); } 
@override int get hashCode { return Object.hash(amount, currency, description, Object.hashAll(discountAmounts ?? const []), discountable, Object.hashAll(discounts), id, invoice, livemode, metadata, object, parent, period, Object.hashAll(pretaxCreditAmounts ?? const []), pricing, quantity, subscription, subtotal, Object.hashAll(taxes ?? const [])); } 
@override String toString() { return 'LineItem(amount: $amount, currency: $currency, description: $description, discountAmounts: $discountAmounts, discountable: $discountable, discounts: $discounts, id: $id, invoice: $invoice, livemode: $livemode, metadata: $metadata, object: $object, parent: $parent, period: $period, pretaxCreditAmounts: $pretaxCreditAmounts, pricing: $pricing, quantity: $quantity, subscription: $subscription, subtotal: $subtotal, taxes: $taxes)'; } 
 }
