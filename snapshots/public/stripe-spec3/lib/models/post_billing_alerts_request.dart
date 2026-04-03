// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_alerts_request_usage_threshold.dart';/// The type of alert to create.
@immutable final class PostBillingAlertsRequestAlertType {const PostBillingAlertsRequestAlertType._(this.value);

factory PostBillingAlertsRequestAlertType.fromJson(String json) { return switch (json) {
  'usage_threshold' => usageThreshold,
  _ => PostBillingAlertsRequestAlertType._(json),
}; }

static const PostBillingAlertsRequestAlertType usageThreshold = PostBillingAlertsRequestAlertType._('usage_threshold');

static const List<PostBillingAlertsRequestAlertType> values = [usageThreshold];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingAlertsRequestAlertType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingAlertsRequestAlertType($value)'; } 
 }
@immutable final class PostBillingAlertsRequest {const PostBillingAlertsRequest({required this.alertType, required this.title, this.expand, this.usageThreshold, });

factory PostBillingAlertsRequest.fromJson(Map<String, dynamic> json) { return PostBillingAlertsRequest(
  alertType: PostBillingAlertsRequestAlertType.fromJson(json['alert_type'] as String),
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  title: json['title'] as String,
  usageThreshold: json['usage_threshold'] != null ? PostBillingAlertsRequestUsageThreshold.fromJson(json['usage_threshold'] as Map<String, dynamic>) : null,
); }

/// The type of alert to create.
final PostBillingAlertsRequestAlertType alertType;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The title of the alert.
final String title;

/// The configuration of the usage threshold.
final PostBillingAlertsRequestUsageThreshold? usageThreshold;

Map<String, dynamic> toJson() { return {
  'alert_type': alertType.toJson(),
  'expand': ?expand,
  'title': title,
  if (usageThreshold != null) 'usage_threshold': usageThreshold?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('alert_type') &&
      json.containsKey('title') && json['title'] is String; } 
PostBillingAlertsRequest copyWith({PostBillingAlertsRequestAlertType? alertType, List<String> Function()? expand, String? title, PostBillingAlertsRequestUsageThreshold Function()? usageThreshold, }) { return PostBillingAlertsRequest(
  alertType: alertType ?? this.alertType,
  expand: expand != null ? expand() : this.expand,
  title: title ?? this.title,
  usageThreshold: usageThreshold != null ? usageThreshold() : this.usageThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingAlertsRequest &&
          alertType == other.alertType &&
          listEquals(expand, other.expand) &&
          title == other.title &&
          usageThreshold == other.usageThreshold; } 
@override int get hashCode { return Object.hash(alertType, Object.hashAll(expand ?? const []), title, usageThreshold); } 
@override String toString() { return 'PostBillingAlertsRequest(alertType: $alertType, expand: $expand, title: $title, usageThreshold: $usageThreshold)'; } 
 }
