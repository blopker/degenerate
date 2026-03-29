// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_usage_report_usage_items.dart';final class BillingUsageReport {const BillingUsageReport({this.usageItems});

factory BillingUsageReport.fromJson(Map<String, dynamic> json) { return BillingUsageReport(
  usageItems: (json['usageItems'] as List<dynamic>?)?.map((e) => BillingUsageReportUsageItems.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<BillingUsageReportUsageItems>? usageItems;

Map<String, dynamic> toJson() { return {
  if (usageItems != null) 'usageItems': usageItems?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BillingUsageReport copyWith({List<BillingUsageReportUsageItems> Function()? usageItems}) { return BillingUsageReport(
  usageItems: usageItems != null ? usageItems() : this.usageItems,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingUsageReport &&
          listEquals(usageItems, other.usageItems); } 
@override int get hashCode { return Object.hashAll(usageItems ?? const []).hashCode; } 
@override String toString() { return 'BillingUsageReport(usageItems: $usageItems)'; } 
 }
