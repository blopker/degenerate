// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_premium_request_usage_report_user_time_period.dart';import 'billing_premium_request_usage_report_user_usage_items.dart';final class BillingPremiumRequestUsageReportUser {const BillingPremiumRequestUsageReportUser({required this.timePeriod, required this.user, this.product, this.model, required this.usageItems, });

factory BillingPremiumRequestUsageReportUser.fromJson(Map<String, dynamic> json) { return BillingPremiumRequestUsageReportUser(
  timePeriod: BillingPremiumRequestUsageReportUserTimePeriod.fromJson(json['timePeriod'] as Map<String, dynamic>),
  user: json['user'] as String,
  product: json['product'] as String?,
  model: json['model'] as String?,
  usageItems: (json['usageItems'] as List<dynamic>).map((e) => BillingPremiumRequestUsageReportUserUsageItems.fromJson(e as Map<String, dynamic>)).toList(),
); }

final BillingPremiumRequestUsageReportUserTimePeriod timePeriod;

/// The unique identifier of the user.
final String user;

/// The product for the usage report.
final String? product;

/// The model for the usage report.
final String? model;

final List<BillingPremiumRequestUsageReportUserUsageItems> usageItems;

Map<String, dynamic> toJson() { return {
  'timePeriod': timePeriod.toJson(),
  'user': user,
  'product': ?product,
  'model': ?model,
  'usageItems': usageItems.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timePeriod') &&
      json.containsKey('user') && json['user'] is String &&
      json.containsKey('usageItems'); } 
BillingPremiumRequestUsageReportUser copyWith({BillingPremiumRequestUsageReportUserTimePeriod? timePeriod, String? user, String Function()? product, String Function()? model, List<BillingPremiumRequestUsageReportUserUsageItems>? usageItems, }) { return BillingPremiumRequestUsageReportUser(
  timePeriod: timePeriod ?? this.timePeriod,
  user: user ?? this.user,
  product: product != null ? product() : this.product,
  model: model != null ? model() : this.model,
  usageItems: usageItems ?? this.usageItems,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingPremiumRequestUsageReportUser &&
          timePeriod == other.timePeriod &&
          user == other.user &&
          product == other.product &&
          model == other.model &&
          listEquals(usageItems, other.usageItems); } 
@override int get hashCode { return Object.hash(timePeriod, user, product, model, Object.hashAll(usageItems)); } 
@override String toString() { return 'BillingPremiumRequestUsageReportUser(timePeriod: $timePeriod, user: $user, product: $product, model: $model, usageItems: $usageItems)'; } 
 }
