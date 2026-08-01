// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tax_product_resource_line_item_tax_breakdown.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class TaxCalculationLineItemObject {const TaxCalculationLineItemObject._(this.value);

factory TaxCalculationLineItemObject.fromJson(String json) { return switch (json) {
  'tax.calculation_line_item' => taxCalculationLineItem,
  _ => TaxCalculationLineItemObject._(json),
}; }

static const TaxCalculationLineItemObject taxCalculationLineItem = TaxCalculationLineItemObject._('tax.calculation_line_item');

static const List<TaxCalculationLineItemObject> values = [taxCalculationLineItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxCalculationLineItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxCalculationLineItemObject($value)'; } 
 }
/// Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
@immutable final class TaxCalculationLineItemTaxBehavior {const TaxCalculationLineItemTaxBehavior._(this.value);

factory TaxCalculationLineItemTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  _ => TaxCalculationLineItemTaxBehavior._(json),
}; }

static const TaxCalculationLineItemTaxBehavior exclusive = TaxCalculationLineItemTaxBehavior._('exclusive');

static const TaxCalculationLineItemTaxBehavior inclusive = TaxCalculationLineItemTaxBehavior._('inclusive');

static const List<TaxCalculationLineItemTaxBehavior> values = [exclusive, inclusive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxCalculationLineItemTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxCalculationLineItemTaxBehavior($value)'; } 
 }
/// 
@immutable final class TaxCalculationLineItem {const TaxCalculationLineItem({required this.amount, required this.amountTax, required this.id, required this.livemode, required this.object, required this.quantity, required this.reference, required this.taxBehavior, required this.taxCode, this.metadata = const Omittable.absent(), this.product = const Omittable.absent(), this.taxBreakdown = const Omittable.absent(), });

factory TaxCalculationLineItem.fromJson(Map<String, dynamic> json) { return TaxCalculationLineItem(
  amount: (json['amount'] as num).toInt(),
  amountTax: (json['amount_tax'] as num).toInt(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  object: TaxCalculationLineItemObject.fromJson(json['object'] as String),
  product: json.containsKey('product') ? Omittable(json['product'] as String?) : const Omittable.absent(),
  quantity: (json['quantity'] as num).toInt(),
  reference: json['reference'] as String,
  taxBehavior: TaxCalculationLineItemTaxBehavior.fromJson(json['tax_behavior'] as String),
  taxBreakdown: json.containsKey('tax_breakdown') ? Omittable((json['tax_breakdown'] as List<dynamic>?)?.map((e) => TaxProductResourceLineItemTaxBreakdown.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  taxCode: json['tax_code'] as String,
); }

/// The line item amount in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
final int amount;

/// The amount of tax calculated for this line item, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final int amountTax;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Omittable<Map<String,String>?> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final TaxCalculationLineItemObject object;

/// The ID of an existing [Product](https://docs.stripe.com/api/products/object).
final Omittable<String?> product;

/// The number of units of the item being purchased. For reversals, this is the quantity reversed.
final int quantity;

/// A custom identifier for this line item.
final String reference;

/// Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
final TaxCalculationLineItemTaxBehavior taxBehavior;

/// Detailed account of taxes relevant to this line item.
final Omittable<List<TaxProductResourceLineItemTaxBreakdown>?> taxBreakdown;

/// The [tax code](https://docs.stripe.com/tax/tax-categories) ID used for this resource.
final String taxCode;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'amount_tax': amountTax,
  'id': id,
  'livemode': livemode,
  if (metadata.isPresent) 'metadata': metadata.value,
  'object': object.toJson(),
  if (product.isPresent) 'product': product.value,
  'quantity': quantity,
  'reference': reference,
  'tax_behavior': taxBehavior.toJson(),
  if (taxBreakdown.isPresent) 'tax_breakdown': taxBreakdown.value?.map((e) => e.toJson()).toList(),
  'tax_code': taxCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('amount_tax') && json['amount_tax'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('quantity') && json['quantity'] is num &&
      json.containsKey('reference') && json['reference'] is String &&
      json.containsKey('tax_behavior') &&
      json.containsKey('tax_code') && json['tax_code'] is String; } 
TaxCalculationLineItem copyWith({int? amount, int? amountTax, String? id, bool? livemode, Omittable<Map<String,String>?>? metadata, TaxCalculationLineItemObject? object, Omittable<String?>? product, int? quantity, String? reference, TaxCalculationLineItemTaxBehavior? taxBehavior, Omittable<List<TaxProductResourceLineItemTaxBreakdown>?>? taxBreakdown, String? taxCode, }) { return TaxCalculationLineItem(
  amount: amount ?? this.amount,
  amountTax: amountTax ?? this.amountTax,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  product: product ?? this.product,
  quantity: quantity ?? this.quantity,
  reference: reference ?? this.reference,
  taxBehavior: taxBehavior ?? this.taxBehavior,
  taxBreakdown: taxBreakdown ?? this.taxBreakdown,
  taxCode: taxCode ?? this.taxCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxCalculationLineItem &&
          amount == other.amount &&
          amountTax == other.amountTax &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          product == other.product &&
          quantity == other.quantity &&
          reference == other.reference &&
          taxBehavior == other.taxBehavior &&
          taxBreakdown.isPresent == other.taxBreakdown.isPresent &&
          listEquals(taxBreakdown.value, other.taxBreakdown.value) &&
          taxCode == other.taxCode; } 
@override int get hashCode { return Object.hash(amount, amountTax, id, livemode, metadata, object, product, quantity, reference, taxBehavior, Object.hashAll(taxBreakdown.value ?? const []), taxCode); } 
@override String toString() { return 'TaxCalculationLineItem(amount: $amount, amountTax: $amountTax, id: $id, livemode: $livemode, metadata: $metadata, object: $object, product: $product, quantity: $quantity, reference: $reference, taxBehavior: $taxBehavior, taxBreakdown: $taxBreakdown, taxCode: $taxCode)'; } 
 }
