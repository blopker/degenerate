// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tax_calculation_line_items.dart';import 'tax_product_resource_customer_details.dart';import 'tax_product_resource_ship_from_details.dart';import 'tax_product_resource_tax_breakdown.dart';import 'tax_product_resource_tax_calculation_shipping_cost.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class TaxCalculationObject {const TaxCalculationObject._(this.value);

factory TaxCalculationObject.fromJson(String json) { return switch (json) {
  'tax.calculation' => taxCalculation,
  _ => TaxCalculationObject._(json),
}; }

static const TaxCalculationObject taxCalculation = TaxCalculationObject._('tax.calculation');

static const List<TaxCalculationObject> values = [taxCalculation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxCalculationObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxCalculationObject($value)'; } 
 }
/// A Tax Calculation allows you to calculate the tax to collect from your customer.
/// 
/// Related guide: [Calculate tax in your custom payment flow](https://docs.stripe.com/tax/custom)
@immutable final class TaxCalculation {const TaxCalculation({required this.amountTotal, required this.currency, required this.customerDetails, required this.livemode, required this.object, required this.taxAmountExclusive, required this.taxAmountInclusive, required this.taxBreakdown, required this.taxDate, this.customer = const Omittable.absent(), this.expiresAt = const Omittable.absent(), this.id = const Omittable.absent(), this.lineItems = const Omittable.absent(), this.shipFromDetails = const Omittable.absent(), this.shippingCost = const Omittable.absent(), });

factory TaxCalculation.fromJson(Map<String, dynamic> json) { return TaxCalculation(
  amountTotal: (json['amount_total'] as num).toInt(),
  currency: json['currency'] as String,
  customer: json.containsKey('customer') ? Omittable(json['customer'] as String?) : const Omittable.absent(),
  customerDetails: TaxProductResourceCustomerDetails.fromJson(json['customer_details'] as Map<String, dynamic>),
  expiresAt: json.containsKey('expires_at') ? Omittable(json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null) : const Omittable.absent(),
  id: json.containsKey('id') ? Omittable(json['id'] as String?) : const Omittable.absent(),
  lineItems: json.containsKey('line_items') ? Omittable(json['line_items'] != null ? TaxCalculationLineItems.fromJson(json['line_items'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  livemode: json['livemode'] as bool,
  object: TaxCalculationObject.fromJson(json['object'] as String),
  shipFromDetails: json.containsKey('ship_from_details') ? Omittable(json['ship_from_details'] != null ? TaxProductResourceShipFromDetails.fromJson(json['ship_from_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  shippingCost: json.containsKey('shipping_cost') ? Omittable(json['shipping_cost'] != null ? TaxProductResourceTaxCalculationShippingCost.fromJson(json['shipping_cost'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  taxAmountExclusive: (json['tax_amount_exclusive'] as num).toInt(),
  taxAmountInclusive: (json['tax_amount_inclusive'] as num).toInt(),
  taxBreakdown: (json['tax_breakdown'] as List<dynamic>).map((e) => TaxProductResourceTaxBreakdown.fromJson(e as Map<String, dynamic>)).toList(),
  taxDate: (json['tax_date'] as num).toInt(),
); }

/// Total amount after taxes in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final int amountTotal;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// The ID of an existing [Customer](https://docs.stripe.com/api/customers/object) used for the resource.
final Omittable<String?> customer;

final TaxProductResourceCustomerDetails customerDetails;

/// Timestamp of date at which the tax calculation will expire.
final Omittable<int?> expiresAt;

/// Unique identifier for the calculation.
final Omittable<String?> id;

/// The list of items the customer is purchasing.
final Omittable<TaxCalculationLineItems?> lineItems;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final TaxCalculationObject object;

/// The details of the ship from location, such as the address.
final Omittable<TaxProductResourceShipFromDetails?> shipFromDetails;

/// The shipping cost details for the calculation.
final Omittable<TaxProductResourceTaxCalculationShippingCost?> shippingCost;

/// The amount of tax to be collected on top of the line item prices.
final int taxAmountExclusive;

/// The amount of tax already included in the line item prices.
final int taxAmountInclusive;

/// Breakdown of individual tax amounts that add up to the total.
final List<TaxProductResourceTaxBreakdown> taxBreakdown;

/// Timestamp of date at which the tax rules and rates in effect applies for the calculation.
final int taxDate;

Map<String, dynamic> toJson() { return {
  'amount_total': amountTotal,
  'currency': currency,
  if (customer.isPresent) 'customer': customer.value,
  'customer_details': customerDetails.toJson(),
  if (expiresAt.isPresent) 'expires_at': expiresAt.value,
  if (id.isPresent) 'id': id.value,
  if (lineItems.isPresent) 'line_items': lineItems.value?.toJson(),
  'livemode': livemode,
  'object': object.toJson(),
  if (shipFromDetails.isPresent) 'ship_from_details': shipFromDetails.value?.toJson(),
  if (shippingCost.isPresent) 'shipping_cost': shippingCost.value?.toJson(),
  'tax_amount_exclusive': taxAmountExclusive,
  'tax_amount_inclusive': taxAmountInclusive,
  'tax_breakdown': taxBreakdown.map((e) => e.toJson()).toList(),
  'tax_date': taxDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_total') && json['amount_total'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('customer_details') &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('tax_amount_exclusive') && json['tax_amount_exclusive'] is num &&
      json.containsKey('tax_amount_inclusive') && json['tax_amount_inclusive'] is num &&
      json.containsKey('tax_breakdown') &&
      json.containsKey('tax_date') && json['tax_date'] is num; } 
TaxCalculation copyWith({int? amountTotal, String? currency, Omittable<String?>? customer, TaxProductResourceCustomerDetails? customerDetails, Omittable<int?>? expiresAt, Omittable<String?>? id, Omittable<TaxCalculationLineItems?>? lineItems, bool? livemode, TaxCalculationObject? object, Omittable<TaxProductResourceShipFromDetails?>? shipFromDetails, Omittable<TaxProductResourceTaxCalculationShippingCost?>? shippingCost, int? taxAmountExclusive, int? taxAmountInclusive, List<TaxProductResourceTaxBreakdown>? taxBreakdown, int? taxDate, }) { return TaxCalculation(
  amountTotal: amountTotal ?? this.amountTotal,
  currency: currency ?? this.currency,
  customer: customer ?? this.customer,
  customerDetails: customerDetails ?? this.customerDetails,
  expiresAt: expiresAt ?? this.expiresAt,
  id: id ?? this.id,
  lineItems: lineItems ?? this.lineItems,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  shipFromDetails: shipFromDetails ?? this.shipFromDetails,
  shippingCost: shippingCost ?? this.shippingCost,
  taxAmountExclusive: taxAmountExclusive ?? this.taxAmountExclusive,
  taxAmountInclusive: taxAmountInclusive ?? this.taxAmountInclusive,
  taxBreakdown: taxBreakdown ?? this.taxBreakdown,
  taxDate: taxDate ?? this.taxDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxCalculation &&
          amountTotal == other.amountTotal &&
          currency == other.currency &&
          customer == other.customer &&
          customerDetails == other.customerDetails &&
          expiresAt == other.expiresAt &&
          id == other.id &&
          lineItems == other.lineItems &&
          livemode == other.livemode &&
          object == other.object &&
          shipFromDetails == other.shipFromDetails &&
          shippingCost == other.shippingCost &&
          taxAmountExclusive == other.taxAmountExclusive &&
          taxAmountInclusive == other.taxAmountInclusive &&
          listEquals(taxBreakdown, other.taxBreakdown) &&
          taxDate == other.taxDate; } 
@override int get hashCode { return Object.hash(amountTotal, currency, customer, customerDetails, expiresAt, id, lineItems, livemode, object, shipFromDetails, shippingCost, taxAmountExclusive, taxAmountInclusive, Object.hashAll(taxBreakdown), taxDate); } 
@override String toString() { return 'TaxCalculation(amountTotal: $amountTotal, currency: $currency, customer: $customer, customerDetails: $customerDetails, expiresAt: $expiresAt, id: $id, lineItems: $lineItems, livemode: $livemode, object: $object, shipFromDetails: $shipFromDetails, shippingCost: $shippingCost, taxAmountExclusive: $taxAmountExclusive, taxAmountInclusive: $taxAmountInclusive, taxBreakdown: $taxBreakdown, taxDate: $taxDate)'; } 
 }
