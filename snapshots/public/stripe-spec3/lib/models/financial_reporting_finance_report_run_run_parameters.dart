// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
final class FinancialReportingFinanceReportRunRunParameters {const FinancialReportingFinanceReportRunRunParameters({this.columns, this.connectedAccount, this.currency, this.intervalEnd, this.intervalStart, this.payout, this.reportingCategory, this.timezone, });

factory FinancialReportingFinanceReportRunRunParameters.fromJson(Map<String, dynamic> json) { return FinancialReportingFinanceReportRunRunParameters(
  columns: (json['columns'] as List<dynamic>?)?.map((e) => e as String).toList(),
  connectedAccount: json['connected_account'] as String?,
  currency: json['currency'] as String?,
  intervalEnd: json['interval_end'] != null ? (json['interval_end'] as num).toInt() : null,
  intervalStart: json['interval_start'] != null ? (json['interval_start'] as num).toInt() : null,
  payout: json['payout'] as String?,
  reportingCategory: json['reporting_category'] as String?,
  timezone: json['timezone'] as String?,
); }

/// The set of output columns requested for inclusion in the report run.
final List<String>? columns;

/// Connected account ID by which to filter the report run.
final String? connectedAccount;

/// Currency of objects to be included in the report run.
final String? currency;

/// Ending timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after the user specified `interval_start` and 1 second before this report's last `data_available_end` value.
final int? intervalEnd;

/// Starting timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after this report's `data_available_start` and 1 second before the user specified `interval_end` value.
final int? intervalStart;

/// Payout ID by which to filter the report run.
final String? payout;

/// Category of balance transactions to be included in the report run.
final String? reportingCategory;

/// Defaults to `Etc/UTC`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones). Has no effect on `interval_start` or `interval_end`.
final String? timezone;

Map<String, dynamic> toJson() { return {
  'columns': ?columns,
  'connected_account': ?connectedAccount,
  'currency': ?currency,
  'interval_end': ?intervalEnd,
  'interval_start': ?intervalStart,
  'payout': ?payout,
  'reporting_category': ?reportingCategory,
  'timezone': ?timezone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'columns', 'connected_account', 'currency', 'interval_end', 'interval_start', 'payout', 'reporting_category', 'timezone'}.contains(key)); } 
FinancialReportingFinanceReportRunRunParameters copyWith({List<String> Function()? columns, String Function()? connectedAccount, String Function()? currency, int Function()? intervalEnd, int Function()? intervalStart, String Function()? payout, String Function()? reportingCategory, String Function()? timezone, }) { return FinancialReportingFinanceReportRunRunParameters(
  columns: columns != null ? columns() : this.columns,
  connectedAccount: connectedAccount != null ? connectedAccount() : this.connectedAccount,
  currency: currency != null ? currency() : this.currency,
  intervalEnd: intervalEnd != null ? intervalEnd() : this.intervalEnd,
  intervalStart: intervalStart != null ? intervalStart() : this.intervalStart,
  payout: payout != null ? payout() : this.payout,
  reportingCategory: reportingCategory != null ? reportingCategory() : this.reportingCategory,
  timezone: timezone != null ? timezone() : this.timezone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FinancialReportingFinanceReportRunRunParameters &&
          listEquals(columns, other.columns) &&
          connectedAccount == other.connectedAccount &&
          currency == other.currency &&
          intervalEnd == other.intervalEnd &&
          intervalStart == other.intervalStart &&
          payout == other.payout &&
          reportingCategory == other.reportingCategory &&
          timezone == other.timezone; } 
@override int get hashCode { return Object.hash(Object.hashAll(columns ?? const []), connectedAccount, currency, intervalEnd, intervalStart, payout, reportingCategory, timezone); } 
@override String toString() { return 'FinancialReportingFinanceReportRunRunParameters(columns: $columns, connectedAccount: $connectedAccount, currency: $currency, intervalEnd: $intervalEnd, intervalStart: $intervalStart, payout: $payout, reportingCategory: $reportingCategory, timezone: $timezone)'; } 
 }
