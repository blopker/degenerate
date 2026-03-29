// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class TreasuryFinancialAccountsResourceClosedStatusDetailsReasons {const TreasuryFinancialAccountsResourceClosedStatusDetailsReasons._(this.value);

factory TreasuryFinancialAccountsResourceClosedStatusDetailsReasons.fromJson(String json) { return switch (json) {
  'account_rejected' => accountRejected,
  'closed_by_platform' => closedByPlatform,
  'other' => $other,
  _ => TreasuryFinancialAccountsResourceClosedStatusDetailsReasons._(json),
}; }

static const TreasuryFinancialAccountsResourceClosedStatusDetailsReasons accountRejected = TreasuryFinancialAccountsResourceClosedStatusDetailsReasons._('account_rejected');

static const TreasuryFinancialAccountsResourceClosedStatusDetailsReasons closedByPlatform = TreasuryFinancialAccountsResourceClosedStatusDetailsReasons._('closed_by_platform');

static const TreasuryFinancialAccountsResourceClosedStatusDetailsReasons $other = TreasuryFinancialAccountsResourceClosedStatusDetailsReasons._('other');

static const List<TreasuryFinancialAccountsResourceClosedStatusDetailsReasons> values = [accountRejected, closedByPlatform, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountsResourceClosedStatusDetailsReasons && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountsResourceClosedStatusDetailsReasons($value)'; } 
 }
/// 
final class TreasuryFinancialAccountsResourceClosedStatusDetails {const TreasuryFinancialAccountsResourceClosedStatusDetails({required this.reasons});

factory TreasuryFinancialAccountsResourceClosedStatusDetails.fromJson(Map<String, dynamic> json) { return TreasuryFinancialAccountsResourceClosedStatusDetails(
  reasons: (json['reasons'] as List<dynamic>).map((e) => TreasuryFinancialAccountsResourceClosedStatusDetailsReasons.fromJson(e as String)).toList(),
); }

/// The array that contains reasons for a FinancialAccount closure.
final List<TreasuryFinancialAccountsResourceClosedStatusDetailsReasons> reasons;

Map<String, dynamic> toJson() { return {
  'reasons': reasons.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('reasons'); } 
TreasuryFinancialAccountsResourceClosedStatusDetails copyWith({List<TreasuryFinancialAccountsResourceClosedStatusDetailsReasons>? reasons}) { return TreasuryFinancialAccountsResourceClosedStatusDetails(
  reasons: reasons ?? this.reasons,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryFinancialAccountsResourceClosedStatusDetails &&
          listEquals(reasons, other.reasons); } 
@override int get hashCode { return Object.hashAll(reasons).hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountsResourceClosedStatusDetails(reasons: $reasons)'; } 
 }
