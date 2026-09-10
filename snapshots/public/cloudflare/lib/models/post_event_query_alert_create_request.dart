// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Alert frequency (immediate or daily)
@immutable final class PostEventQueryAlertCreateRequestFrequency {const PostEventQueryAlertCreateRequestFrequency._(this.value);

factory PostEventQueryAlertCreateRequestFrequency.fromJson(String json) {return switch (json) {
  'immediate' => immediate,
  'daily' => daily,
  _ => PostEventQueryAlertCreateRequestFrequency._(json),
};}

static const PostEventQueryAlertCreateRequestFrequency immediate = PostEventQueryAlertCreateRequestFrequency._('immediate');

static const PostEventQueryAlertCreateRequestFrequency daily = PostEventQueryAlertCreateRequestFrequency._('daily');

static const List<PostEventQueryAlertCreateRequestFrequency> values = [immediate, daily];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostEventQueryAlertCreateRequestFrequency && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostEventQueryAlertCreateRequestFrequency($value)';}
}
@immutable final class PostEventQueryAlertCreateRequest {const PostEventQueryAlertCreateRequest({required this.queryId, this.enabled, this.frequency, this.notificationType, });

factory PostEventQueryAlertCreateRequest.fromJson(Map<String, dynamic> json) {return PostEventQueryAlertCreateRequest(
  enabled: json['enabled'] as bool?,
  frequency: json['frequency'] != null ? PostEventQueryAlertCreateRequestFrequency.fromJson(json['frequency'] as String) : null,
  notificationType: json['notification_type'] as String?,
  queryId: (json['query_id'] as num).toInt(),
);}

/// Whether the alert is enabled
final bool? enabled;

/// Alert frequency (immediate or daily)
final PostEventQueryAlertCreateRequestFrequency? frequency;

/// Type of notification (e.g., ans)
final String? notificationType;

/// ID of the event query to create an alert for
final int queryId;

/// The value with the schema default applied when absent.
PostEventQueryAlertCreateRequestFrequency get frequencyOrDefault {return frequency ?? PostEventQueryAlertCreateRequestFrequency.fromJson('daily');}
/// The value with the schema default applied when absent.
String get notificationTypeOrDefault {return notificationType ?? 'ans';}
Map<String, dynamic> toJson() {return {
  'enabled': ?enabled,
  if (frequency != null) 'frequency': frequency?.toJson(),
  'notification_type': ?notificationType,
  'query_id': queryId,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('query_id') && json['query_id'] is num;}
PostEventQueryAlertCreateRequest copyWith({bool? Function()? enabled, PostEventQueryAlertCreateRequestFrequency? Function()? frequency, String? Function()? notificationType, int? queryId, }) {return PostEventQueryAlertCreateRequest(
  enabled: enabled != null ? enabled() : this.enabled,
  frequency: frequency != null ? frequency() : this.frequency,
  notificationType: notificationType != null ? notificationType() : this.notificationType,
  queryId: queryId ?? this.queryId,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is PostEventQueryAlertCreateRequest &&
          enabled == other.enabled &&
          frequency == other.frequency &&
          notificationType == other.notificationType &&
          queryId == other.queryId;}
@override int get hashCode {return Object.hash(enabled, frequency, notificationType, queryId);}
@override String toString() {return 'PostEventQueryAlertCreateRequest(enabled: $enabled, frequency: $frequency, notificationType: $notificationType, queryId: $queryId)';}
}
