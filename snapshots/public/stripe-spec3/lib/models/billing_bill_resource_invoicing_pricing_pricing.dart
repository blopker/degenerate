// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_pricing_pricing_price_details.dart';/// The type of the pricing details.
final class BillingBillResourceInvoicingPricingPricingType {const BillingBillResourceInvoicingPricingPricingType._(this.value);

factory BillingBillResourceInvoicingPricingPricingType.fromJson(String json) { return switch (json) {
  'price_details' => priceDetails,
  _ => BillingBillResourceInvoicingPricingPricingType._(json),
}; }

static const BillingBillResourceInvoicingPricingPricingType priceDetails = BillingBillResourceInvoicingPricingPricingType._('price_details');

static const List<BillingBillResourceInvoicingPricingPricingType> values = [priceDetails];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingBillResourceInvoicingPricingPricingType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoicingPricingPricingType($value)'; } 
 }
/// 
final class BillingBillResourceInvoicingPricingPricing {const BillingBillResourceInvoicingPricingPricing({this.priceDetails, required this.type, this.unitAmountDecimal, });

factory BillingBillResourceInvoicingPricingPricing.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingPricingPricing(
  priceDetails: json['price_details'] != null ? BillingBillResourceInvoicingPricingPricingPriceDetails.fromJson(json['price_details'] as Map<String, dynamic>) : null,
  type: BillingBillResourceInvoicingPricingPricingType.fromJson(json['type'] as String),
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final BillingBillResourceInvoicingPricingPricingPriceDetails? priceDetails;

/// The type of the pricing details.
final BillingBillResourceInvoicingPricingPricingType type;

/// The unit amount (in the `currency` specified) of the item which contains a decimal value with at most 12 decimal places.
final String? unitAmountDecimal;

Map<String, dynamic> toJson() { return {
  if (priceDetails != null) 'price_details': priceDetails?.toJson(),
  'type': type.toJson(),
  'unit_amount_decimal': ?unitAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
BillingBillResourceInvoicingPricingPricing copyWith({BillingBillResourceInvoicingPricingPricingPriceDetails Function()? priceDetails, BillingBillResourceInvoicingPricingPricingType? type, String? Function()? unitAmountDecimal, }) { return BillingBillResourceInvoicingPricingPricing(
  priceDetails: priceDetails != null ? priceDetails() : this.priceDetails,
  type: type ?? this.type,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingPricingPricing &&
          priceDetails == other.priceDetails &&
          type == other.type &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(priceDetails, type, unitAmountDecimal); } 
@override String toString() { return 'BillingBillResourceInvoicingPricingPricing(priceDetails: $priceDetails, type: $type, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
