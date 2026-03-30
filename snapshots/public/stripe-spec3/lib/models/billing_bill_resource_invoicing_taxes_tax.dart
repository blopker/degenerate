// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_taxes_tax_rate_details.dart';/// Whether this tax is inclusive or exclusive.
final class BillingBillResourceInvoicingTaxesTaxTaxBehavior {const BillingBillResourceInvoicingTaxesTaxTaxBehavior._(this.value);

factory BillingBillResourceInvoicingTaxesTaxTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  _ => BillingBillResourceInvoicingTaxesTaxTaxBehavior._(json),
}; }

static const BillingBillResourceInvoicingTaxesTaxTaxBehavior exclusive = BillingBillResourceInvoicingTaxesTaxTaxBehavior._('exclusive');

static const BillingBillResourceInvoicingTaxesTaxTaxBehavior inclusive = BillingBillResourceInvoicingTaxesTaxTaxBehavior._('inclusive');

static const List<BillingBillResourceInvoicingTaxesTaxTaxBehavior> values = [exclusive, inclusive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingBillResourceInvoicingTaxesTaxTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoicingTaxesTaxTaxBehavior($value)'; } 
 }
/// The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
final class BillingBillResourceInvoicingTaxesTaxTaxabilityReason {const BillingBillResourceInvoicingTaxesTaxTaxabilityReason._(this.value);

factory BillingBillResourceInvoicingTaxesTaxTaxabilityReason.fromJson(String json) { return switch (json) {
  'customer_exempt' => customerExempt,
  'not_available' => notAvailable,
  'not_collecting' => notCollecting,
  'not_subject_to_tax' => notSubjectToTax,
  'not_supported' => notSupported,
  'portion_product_exempt' => portionProductExempt,
  'portion_reduced_rated' => portionReducedRated,
  'portion_standard_rated' => portionStandardRated,
  'product_exempt' => productExempt,
  'product_exempt_holiday' => productExemptHoliday,
  'proportionally_rated' => proportionallyRated,
  'reduced_rated' => reducedRated,
  'reverse_charge' => reverseCharge,
  'standard_rated' => standardRated,
  'taxable_basis_reduced' => taxableBasisReduced,
  'zero_rated' => zeroRated,
  _ => BillingBillResourceInvoicingTaxesTaxTaxabilityReason._(json),
}; }

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason customerExempt = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('customer_exempt');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason notAvailable = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('not_available');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason notCollecting = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('not_collecting');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason notSubjectToTax = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('not_subject_to_tax');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason notSupported = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('not_supported');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason portionProductExempt = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('portion_product_exempt');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason portionReducedRated = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('portion_reduced_rated');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason portionStandardRated = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('portion_standard_rated');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason productExempt = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('product_exempt');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason productExemptHoliday = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('product_exempt_holiday');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason proportionallyRated = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('proportionally_rated');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason reducedRated = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('reduced_rated');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason reverseCharge = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('reverse_charge');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason standardRated = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('standard_rated');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason taxableBasisReduced = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('taxable_basis_reduced');

static const BillingBillResourceInvoicingTaxesTaxTaxabilityReason zeroRated = BillingBillResourceInvoicingTaxesTaxTaxabilityReason._('zero_rated');

static const List<BillingBillResourceInvoicingTaxesTaxTaxabilityReason> values = [customerExempt, notAvailable, notCollecting, notSubjectToTax, notSupported, portionProductExempt, portionReducedRated, portionStandardRated, productExempt, productExemptHoliday, proportionallyRated, reducedRated, reverseCharge, standardRated, taxableBasisReduced, zeroRated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingBillResourceInvoicingTaxesTaxTaxabilityReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoicingTaxesTaxTaxabilityReason($value)'; } 
 }
/// The type of tax information.
final class BillingBillResourceInvoicingTaxesTaxType {const BillingBillResourceInvoicingTaxesTaxType._(this.value);

factory BillingBillResourceInvoicingTaxesTaxType.fromJson(String json) { return switch (json) {
  'tax_rate_details' => taxRateDetails,
  _ => BillingBillResourceInvoicingTaxesTaxType._(json),
}; }

static const BillingBillResourceInvoicingTaxesTaxType taxRateDetails = BillingBillResourceInvoicingTaxesTaxType._('tax_rate_details');

static const List<BillingBillResourceInvoicingTaxesTaxType> values = [taxRateDetails];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingBillResourceInvoicingTaxesTaxType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoicingTaxesTaxType($value)'; } 
 }
/// 
final class BillingBillResourceInvoicingTaxesTax {const BillingBillResourceInvoicingTaxesTax({required this.amount, required this.taxBehavior, this.taxRateDetails, required this.taxabilityReason, this.taxableAmount, required this.type, });

factory BillingBillResourceInvoicingTaxesTax.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingTaxesTax(
  amount: (json['amount'] as num).toInt(),
  taxBehavior: BillingBillResourceInvoicingTaxesTaxTaxBehavior.fromJson(json['tax_behavior'] as String),
  taxRateDetails: json['tax_rate_details'] != null ? BillingBillResourceInvoicingTaxesTaxRateDetails.fromJson(json['tax_rate_details'] as Map<String, dynamic>) : null,
  taxabilityReason: BillingBillResourceInvoicingTaxesTaxTaxabilityReason.fromJson(json['taxability_reason'] as String),
  taxableAmount: json['taxable_amount'] != null ? (json['taxable_amount'] as num).toInt() : null,
  type: BillingBillResourceInvoicingTaxesTaxType.fromJson(json['type'] as String),
); }

/// The amount of the tax, in cents (or local equivalent).
final int amount;

/// Whether this tax is inclusive or exclusive.
final BillingBillResourceInvoicingTaxesTaxTaxBehavior taxBehavior;

/// Additional details about the tax rate. Only present when `type` is `tax_rate_details`.
final BillingBillResourceInvoicingTaxesTaxRateDetails? taxRateDetails;

/// The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
final BillingBillResourceInvoicingTaxesTaxTaxabilityReason taxabilityReason;

/// The amount on which tax is calculated, in cents (or local equivalent).
final int? taxableAmount;

/// The type of tax information.
final BillingBillResourceInvoicingTaxesTaxType type;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'tax_behavior': taxBehavior.toJson(),
  if (taxRateDetails != null) 'tax_rate_details': taxRateDetails?.toJson(),
  'taxability_reason': taxabilityReason.toJson(),
  'taxable_amount': ?taxableAmount,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('tax_behavior') &&
      json.containsKey('taxability_reason') &&
      json.containsKey('type'); } 
BillingBillResourceInvoicingTaxesTax copyWith({int? amount, BillingBillResourceInvoicingTaxesTaxTaxBehavior? taxBehavior, BillingBillResourceInvoicingTaxesTaxRateDetails? Function()? taxRateDetails, BillingBillResourceInvoicingTaxesTaxTaxabilityReason? taxabilityReason, int? Function()? taxableAmount, BillingBillResourceInvoicingTaxesTaxType? type, }) { return BillingBillResourceInvoicingTaxesTax(
  amount: amount ?? this.amount,
  taxBehavior: taxBehavior ?? this.taxBehavior,
  taxRateDetails: taxRateDetails != null ? taxRateDetails() : this.taxRateDetails,
  taxabilityReason: taxabilityReason ?? this.taxabilityReason,
  taxableAmount: taxableAmount != null ? taxableAmount() : this.taxableAmount,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingTaxesTax &&
          amount == other.amount &&
          taxBehavior == other.taxBehavior &&
          taxRateDetails == other.taxRateDetails &&
          taxabilityReason == other.taxabilityReason &&
          taxableAmount == other.taxableAmount &&
          type == other.type; } 
@override int get hashCode { return Object.hash(amount, taxBehavior, taxRateDetails, taxabilityReason, taxableAmount, type); } 
@override String toString() { return 'BillingBillResourceInvoicingTaxesTax(amount: $amount, taxBehavior: $taxBehavior, taxRateDetails: $taxRateDetails, taxabilityReason: $taxabilityReason, taxableAmount: $taxableAmount, type: $type)'; } 
 }
