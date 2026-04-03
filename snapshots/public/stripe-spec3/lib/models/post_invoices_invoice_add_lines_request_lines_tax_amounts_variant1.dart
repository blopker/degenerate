// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_add_lines_request_lines_tax_amounts_variant1_tax_rate_data.dart';@immutable final class PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason {const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._(this.value);

factory PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason.fromJson(String json) { return switch (json) {
  'customer_exempt' => customerExempt,
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
  _ => PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._(json),
}; }

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason customerExempt = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('customer_exempt');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason notCollecting = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('not_collecting');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason notSubjectToTax = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('not_subject_to_tax');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason notSupported = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('not_supported');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason portionProductExempt = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('portion_product_exempt');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason portionReducedRated = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('portion_reduced_rated');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason portionStandardRated = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('portion_standard_rated');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason productExempt = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('product_exempt');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason productExemptHoliday = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('product_exempt_holiday');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason proportionallyRated = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('proportionally_rated');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason reducedRated = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('reduced_rated');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason reverseCharge = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('reverse_charge');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason standardRated = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('standard_rated');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason taxableBasisReduced = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('taxable_basis_reduced');

static const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason zeroRated = PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason._('zero_rated');

static const List<PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason> values = [customerExempt, notCollecting, notSubjectToTax, notSupported, portionProductExempt, portionReducedRated, portionStandardRated, productExempt, productExemptHoliday, proportionallyRated, reducedRated, reverseCharge, standardRated, taxableBasisReduced, zeroRated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason($value)'; } 
 }
@immutable final class PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1 {const PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1({required this.amount, required this.taxRateData, required this.taxableAmount, this.taxabilityReason, });

factory PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1(
  amount: (json['amount'] as num).toInt(),
  taxRateData: PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxRateData.fromJson(json['tax_rate_data'] as Map<String, dynamic>),
  taxabilityReason: json['taxability_reason'] != null ? PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason.fromJson(json['taxability_reason'] as String) : null,
  taxableAmount: (json['taxable_amount'] as num).toInt(),
); }

final int amount;

final PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxRateData taxRateData;

final PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason? taxabilityReason;

final int taxableAmount;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'tax_rate_data': taxRateData.toJson(),
  if (taxabilityReason != null) 'taxability_reason': taxabilityReason?.toJson(),
  'taxable_amount': taxableAmount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('tax_rate_data') &&
      json.containsKey('taxable_amount') && json['taxable_amount'] is num; } 
PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1 copyWith({int? amount, PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxRateData? taxRateData, PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1TaxabilityReason Function()? taxabilityReason, int? taxableAmount, }) { return PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1(
  amount: amount ?? this.amount,
  taxRateData: taxRateData ?? this.taxRateData,
  taxabilityReason: taxabilityReason != null ? taxabilityReason() : this.taxabilityReason,
  taxableAmount: taxableAmount ?? this.taxableAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1 &&
          amount == other.amount &&
          taxRateData == other.taxRateData &&
          taxabilityReason == other.taxabilityReason &&
          taxableAmount == other.taxableAmount; } 
@override int get hashCode { return Object.hash(amount, taxRateData, taxabilityReason, taxableAmount); } 
@override String toString() { return 'PostInvoicesInvoiceAddLinesRequestLinesTaxAmountsVariant1(amount: $amount, taxRateData: $taxRateData, taxabilityReason: $taxabilityReason, taxableAmount: $taxableAmount)'; } 
 }
