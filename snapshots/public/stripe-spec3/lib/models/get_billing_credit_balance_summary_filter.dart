// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_billing_credit_balance_summary_filter_applicability_scope.dart';@immutable final class GetBillingCreditBalanceSummaryFilterType {const GetBillingCreditBalanceSummaryFilterType._(this.value);

factory GetBillingCreditBalanceSummaryFilterType.fromJson(String json) { return switch (json) {
  'applicability_scope' => applicabilityScope,
  'credit_grant' => creditGrant,
  _ => GetBillingCreditBalanceSummaryFilterType._(json),
}; }

static const GetBillingCreditBalanceSummaryFilterType applicabilityScope = GetBillingCreditBalanceSummaryFilterType._('applicability_scope');

static const GetBillingCreditBalanceSummaryFilterType creditGrant = GetBillingCreditBalanceSummaryFilterType._('credit_grant');

static const List<GetBillingCreditBalanceSummaryFilterType> values = [applicabilityScope, creditGrant];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetBillingCreditBalanceSummaryFilterType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetBillingCreditBalanceSummaryFilterType($value)'; } 
 }
@immutable final class GetBillingCreditBalanceSummaryFilter {const GetBillingCreditBalanceSummaryFilter({required this.type, this.applicabilityScope, this.creditGrant, });

factory GetBillingCreditBalanceSummaryFilter.fromJson(Map<String, dynamic> json) { return GetBillingCreditBalanceSummaryFilter(
  applicabilityScope: json['applicability_scope'] != null ? GetBillingCreditBalanceSummaryFilterApplicabilityScope.fromJson(json['applicability_scope'] as Map<String, dynamic>) : null,
  creditGrant: json['credit_grant'] as String?,
  type: GetBillingCreditBalanceSummaryFilterType.fromJson(json['type'] as String),
); }

final GetBillingCreditBalanceSummaryFilterApplicabilityScope? applicabilityScope;

final String? creditGrant;

final GetBillingCreditBalanceSummaryFilterType type;

Map<String, dynamic> toJson() { return {
  if (applicabilityScope != null) 'applicability_scope': applicabilityScope?.toJson(),
  'credit_grant': ?creditGrant,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
GetBillingCreditBalanceSummaryFilter copyWith({GetBillingCreditBalanceSummaryFilterApplicabilityScope Function()? applicabilityScope, String Function()? creditGrant, GetBillingCreditBalanceSummaryFilterType? type, }) { return GetBillingCreditBalanceSummaryFilter(
  applicabilityScope: applicabilityScope != null ? applicabilityScope() : this.applicabilityScope,
  creditGrant: creditGrant != null ? creditGrant() : this.creditGrant,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetBillingCreditBalanceSummaryFilter &&
          applicabilityScope == other.applicabilityScope &&
          creditGrant == other.creditGrant &&
          type == other.type; } 
@override int get hashCode { return Object.hash(applicabilityScope, creditGrant, type); } 
@override String toString() { return 'GetBillingCreditBalanceSummaryFilter(applicabilityScope: $applicabilityScope, creditGrant: $creditGrant, type: $type)'; } 
 }
