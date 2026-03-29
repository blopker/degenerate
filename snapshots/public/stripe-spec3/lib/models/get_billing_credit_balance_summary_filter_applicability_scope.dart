// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_billing_credit_balance_summary_filter_applicability_scope_prices.dart';final class GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType {const GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType._(this.value);

factory GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType.fromJson(String json) { return switch (json) {
  'metered' => metered,
  _ => GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType._(json),
}; }

static const GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType metered = GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType._('metered');

static const List<GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType> values = [metered];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType($value)'; } 
 }
final class GetBillingCreditBalanceSummaryFilterApplicabilityScope {const GetBillingCreditBalanceSummaryFilterApplicabilityScope({this.priceType, this.prices, });

factory GetBillingCreditBalanceSummaryFilterApplicabilityScope.fromJson(Map<String, dynamic> json) { return GetBillingCreditBalanceSummaryFilterApplicabilityScope(
  priceType: json['price_type'] != null ? GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType.fromJson(json['price_type'] as String) : null,
  prices: (json['prices'] as List<dynamic>?)?.map((e) => GetBillingCreditBalanceSummaryFilterApplicabilityScopePrices.fromJson(e as Map<String, dynamic>)).toList(),
); }

final GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType? priceType;

final List<GetBillingCreditBalanceSummaryFilterApplicabilityScopePrices>? prices;

Map<String, dynamic> toJson() { return {
  if (priceType != null) 'price_type': priceType?.toJson(),
  if (prices != null) 'prices': prices?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'price_type', 'prices'}.contains(key)); } 
GetBillingCreditBalanceSummaryFilterApplicabilityScope copyWith({GetBillingCreditBalanceSummaryFilterApplicabilityScopePriceType Function()? priceType, List<GetBillingCreditBalanceSummaryFilterApplicabilityScopePrices> Function()? prices, }) { return GetBillingCreditBalanceSummaryFilterApplicabilityScope(
  priceType: priceType != null ? priceType() : this.priceType,
  prices: prices != null ? prices() : this.prices,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetBillingCreditBalanceSummaryFilterApplicabilityScope &&
          priceType == other.priceType &&
          listEquals(prices, other.prices); } 
@override int get hashCode { return Object.hash(priceType, Object.hashAll(prices ?? const [])); } 
@override String toString() { return 'GetBillingCreditBalanceSummaryFilterApplicabilityScope(priceType: $priceType, prices: $prices)'; } 
 }
