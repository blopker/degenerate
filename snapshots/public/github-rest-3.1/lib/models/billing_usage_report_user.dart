// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_usage_report_user_usage_items.dart';final class BillingUsageReportUser {const BillingUsageReportUser({this.usageItems});

factory BillingUsageReportUser.fromJson(Map<String, dynamic> json) { return BillingUsageReportUser(
  usageItems: (json['usageItems'] as List<dynamic>?)?.map((e) => BillingUsageReportUserUsageItems.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<BillingUsageReportUserUsageItems>? usageItems;

Map<String, dynamic> toJson() { return {
  if (usageItems != null) 'usageItems': usageItems?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BillingUsageReportUser copyWith({List<BillingUsageReportUserUsageItems> Function()? usageItems}) { return BillingUsageReportUser(
  usageItems: usageItems != null ? usageItems() : this.usageItems,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingUsageReportUser &&
          listEquals(usageItems, other.usageItems); } 
@override int get hashCode { return Object.hashAll(usageItems ?? const []).hashCode; } 
@override String toString() { return 'BillingUsageReportUser(usageItems: $usageItems)'; } 
 }
