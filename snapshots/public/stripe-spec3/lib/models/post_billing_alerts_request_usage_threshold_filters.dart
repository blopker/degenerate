// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingAlertsRequestUsageThresholdFiltersType {const PostBillingAlertsRequestUsageThresholdFiltersType._(this.value);

factory PostBillingAlertsRequestUsageThresholdFiltersType.fromJson(String json) { return switch (json) {
  'customer' => customer,
  _ => PostBillingAlertsRequestUsageThresholdFiltersType._(json),
}; }

static const PostBillingAlertsRequestUsageThresholdFiltersType customer = PostBillingAlertsRequestUsageThresholdFiltersType._('customer');

static const List<PostBillingAlertsRequestUsageThresholdFiltersType> values = [customer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingAlertsRequestUsageThresholdFiltersType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingAlertsRequestUsageThresholdFiltersType($value)'; } 
 }
@immutable final class PostBillingAlertsRequestUsageThresholdFilters {const PostBillingAlertsRequestUsageThresholdFilters({required this.type, this.customer, });

factory PostBillingAlertsRequestUsageThresholdFilters.fromJson(Map<String, dynamic> json) { return PostBillingAlertsRequestUsageThresholdFilters(
  customer: json['customer'] as String?,
  type: PostBillingAlertsRequestUsageThresholdFiltersType.fromJson(json['type'] as String),
); }

final String? customer;

final PostBillingAlertsRequestUsageThresholdFiltersType type;

Map<String, dynamic> toJson() { return {
  'customer': ?customer,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostBillingAlertsRequestUsageThresholdFilters copyWith({String Function()? customer, PostBillingAlertsRequestUsageThresholdFiltersType? type, }) { return PostBillingAlertsRequestUsageThresholdFilters(
  customer: customer != null ? customer() : this.customer,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingAlertsRequestUsageThresholdFilters &&
          customer == other.customer &&
          type == other.type; } 
@override int get hashCode { return Object.hash(customer, type); } 
@override String toString() { return 'PostBillingAlertsRequestUsageThresholdFilters(customer: $customer, type: $type)'; } 
 }
