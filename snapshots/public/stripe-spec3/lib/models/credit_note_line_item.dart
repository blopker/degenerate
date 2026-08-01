// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoicing_taxes_tax.dart';import 'credit_notes_pretax_credit_amount.dart';import 'discounts_resource_discount_amount.dart';import 'tax_rate.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class CreditNoteLineItemObject {const CreditNoteLineItemObject._(this.value);

factory CreditNoteLineItemObject.fromJson(String json) { return switch (json) {
  'credit_note_line_item' => creditNoteLineItem,
  _ => CreditNoteLineItemObject._(json),
}; }

static const CreditNoteLineItemObject creditNoteLineItem = CreditNoteLineItemObject._('credit_note_line_item');

static const List<CreditNoteLineItemObject> values = [creditNoteLineItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreditNoteLineItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreditNoteLineItemObject($value)'; } 
 }
/// The type of the credit note line item, one of `invoice_line_item` or `custom_line_item`. When the type is `invoice_line_item` there is an additional `invoice_line_item` property on the resource the value of which is the id of the credited line item on the invoice.
@immutable final class CreditNoteLineItemType {const CreditNoteLineItemType._(this.value);

factory CreditNoteLineItemType.fromJson(String json) { return switch (json) {
  'custom_line_item' => customLineItem,
  'invoice_line_item' => invoiceLineItem,
  _ => CreditNoteLineItemType._(json),
}; }

static const CreditNoteLineItemType customLineItem = CreditNoteLineItemType._('custom_line_item');

static const CreditNoteLineItemType invoiceLineItem = CreditNoteLineItemType._('invoice_line_item');

static const List<CreditNoteLineItemType> values = [customLineItem, invoiceLineItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreditNoteLineItemType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreditNoteLineItemType($value)'; } 
 }
/// The credit note line item object
@immutable final class CreditNoteLineItem {const CreditNoteLineItem({required this.amount, required this.discountAmount, required this.discountAmounts, required this.id, required this.livemode, required this.object, required this.pretaxCreditAmounts, required this.taxRates, required this.type, this.description = const Omittable.absent(), this.invoiceLineItem, this.quantity = const Omittable.absent(), this.taxes = const Omittable.absent(), this.unitAmount = const Omittable.absent(), this.unitAmountDecimal = const Omittable.absent(), });

factory CreditNoteLineItem.fromJson(Map<String, dynamic> json) { return CreditNoteLineItem(
  amount: (json['amount'] as num).toInt(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  discountAmount: (json['discount_amount'] as num).toInt(),
  discountAmounts: (json['discount_amounts'] as List<dynamic>).map((e) => DiscountsResourceDiscountAmount.fromJson(e as Map<String, dynamic>)).toList(),
  id: json['id'] as String,
  invoiceLineItem: json['invoice_line_item'] as String?,
  livemode: json['livemode'] as bool,
  object: CreditNoteLineItemObject.fromJson(json['object'] as String),
  pretaxCreditAmounts: (json['pretax_credit_amounts'] as List<dynamic>).map((e) => CreditNotesPretaxCreditAmount.fromJson(e as Map<String, dynamic>)).toList(),
  quantity: json.containsKey('quantity') ? Omittable(json['quantity'] != null ? (json['quantity'] as num).toInt() : null) : const Omittable.absent(),
  taxRates: (json['tax_rates'] as List<dynamic>).map((e) => TaxRate.fromJson(e as Map<String, dynamic>)).toList(),
  taxes: json.containsKey('taxes') ? Omittable((json['taxes'] as List<dynamic>?)?.map((e) => BillingBillResourceInvoicingTaxesTax.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  type: CreditNoteLineItemType.fromJson(json['type'] as String),
  unitAmount: json.containsKey('unit_amount') ? Omittable(json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null) : const Omittable.absent(),
  unitAmountDecimal: json.containsKey('unit_amount_decimal') ? Omittable(json['unit_amount_decimal'] as String?) : const Omittable.absent(),
); }

/// The integer amount in cents (or local equivalent) representing the gross amount being credited for this line item, excluding (exclusive) tax and discounts.
final int amount;

/// Description of the item being credited.
final Omittable<String?> description;

/// The integer amount in cents (or local equivalent) representing the discount being credited for this line item.
final int discountAmount;

/// The amount of discount calculated per discount for this line item
final List<DiscountsResourceDiscountAmount> discountAmounts;

/// Unique identifier for the object.
final String id;

/// ID of the invoice line item being credited
final String? invoiceLineItem;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final CreditNoteLineItemObject object;

/// The pretax credit amounts (ex: discount, credit grants, etc) for this line item.
final List<CreditNotesPretaxCreditAmount> pretaxCreditAmounts;

/// The number of units of product being credited.
final Omittable<int?> quantity;

/// The tax rates which apply to the line item.
final List<TaxRate> taxRates;

/// The tax information of the line item.
final Omittable<List<BillingBillResourceInvoicingTaxesTax>?> taxes;

/// The type of the credit note line item, one of `invoice_line_item` or `custom_line_item`. When the type is `invoice_line_item` there is an additional `invoice_line_item` property on the resource the value of which is the id of the credited line item on the invoice.
final CreditNoteLineItemType type;

/// The cost of each unit of product being credited.
final Omittable<int?> unitAmount;

/// Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
final Omittable<String?> unitAmountDecimal;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  if (description.isPresent) 'description': description.value,
  'discount_amount': discountAmount,
  'discount_amounts': discountAmounts.map((e) => e.toJson()).toList(),
  'id': id,
  'invoice_line_item': ?invoiceLineItem,
  'livemode': livemode,
  'object': object.toJson(),
  'pretax_credit_amounts': pretaxCreditAmounts.map((e) => e.toJson()).toList(),
  if (quantity.isPresent) 'quantity': quantity.value,
  'tax_rates': taxRates.map((e) => e.toJson()).toList(),
  if (taxes.isPresent) 'taxes': taxes.value?.map((e) => e.toJson()).toList(),
  'type': type.toJson(),
  if (unitAmount.isPresent) 'unit_amount': unitAmount.value,
  if (unitAmountDecimal.isPresent) 'unit_amount_decimal': unitAmountDecimal.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('discount_amount') && json['discount_amount'] is num &&
      json.containsKey('discount_amounts') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('pretax_credit_amounts') &&
      json.containsKey('tax_rates') &&
      json.containsKey('type'); } 
CreditNoteLineItem copyWith({int? amount, Omittable<String?>? description, int? discountAmount, List<DiscountsResourceDiscountAmount>? discountAmounts, String? id, String? Function()? invoiceLineItem, bool? livemode, CreditNoteLineItemObject? object, List<CreditNotesPretaxCreditAmount>? pretaxCreditAmounts, Omittable<int?>? quantity, List<TaxRate>? taxRates, Omittable<List<BillingBillResourceInvoicingTaxesTax>?>? taxes, CreditNoteLineItemType? type, Omittable<int?>? unitAmount, Omittable<String?>? unitAmountDecimal, }) { return CreditNoteLineItem(
  amount: amount ?? this.amount,
  description: description ?? this.description,
  discountAmount: discountAmount ?? this.discountAmount,
  discountAmounts: discountAmounts ?? this.discountAmounts,
  id: id ?? this.id,
  invoiceLineItem: invoiceLineItem != null ? invoiceLineItem() : this.invoiceLineItem,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  pretaxCreditAmounts: pretaxCreditAmounts ?? this.pretaxCreditAmounts,
  quantity: quantity ?? this.quantity,
  taxRates: taxRates ?? this.taxRates,
  taxes: taxes ?? this.taxes,
  type: type ?? this.type,
  unitAmount: unitAmount ?? this.unitAmount,
  unitAmountDecimal: unitAmountDecimal ?? this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreditNoteLineItem &&
          amount == other.amount &&
          description == other.description &&
          discountAmount == other.discountAmount &&
          listEquals(discountAmounts, other.discountAmounts) &&
          id == other.id &&
          invoiceLineItem == other.invoiceLineItem &&
          livemode == other.livemode &&
          object == other.object &&
          listEquals(pretaxCreditAmounts, other.pretaxCreditAmounts) &&
          quantity == other.quantity &&
          listEquals(taxRates, other.taxRates) &&
          taxes.isPresent == other.taxes.isPresent &&
          listEquals(taxes.value, other.taxes.value) &&
          type == other.type &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(amount, description, discountAmount, Object.hashAll(discountAmounts), id, invoiceLineItem, livemode, object, Object.hashAll(pretaxCreditAmounts), quantity, Object.hashAll(taxRates), Object.hashAll(taxes.value ?? const []), type, unitAmount, unitAmountDecimal); } 
@override String toString() { return 'CreditNoteLineItem(amount: $amount, description: $description, discountAmount: $discountAmount, discountAmounts: $discountAmounts, id: $id, invoiceLineItem: $invoiceLineItem, livemode: $livemode, object: $object, pretaxCreditAmounts: $pretaxCreditAmounts, quantity: $quantity, taxRates: $taxRates, taxes: $taxes, type: $type, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
