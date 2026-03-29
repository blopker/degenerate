// GENERATED CODE - DO NOT MODIFY BY HAND

/// Alert frequency (immediate or daily)
final class PostEventQueryAlertCreateRequestFrequency {const PostEventQueryAlertCreateRequestFrequency._(this.value);

factory PostEventQueryAlertCreateRequestFrequency.fromJson(String json) { return switch (json) {
  'immediate' => immediate,
  'daily' => daily,
  _ => PostEventQueryAlertCreateRequestFrequency._(json),
}; }

static const PostEventQueryAlertCreateRequestFrequency immediate = PostEventQueryAlertCreateRequestFrequency._('immediate');

static const PostEventQueryAlertCreateRequestFrequency daily = PostEventQueryAlertCreateRequestFrequency._('daily');

static const List<PostEventQueryAlertCreateRequestFrequency> values = [immediate, daily];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostEventQueryAlertCreateRequestFrequency && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostEventQueryAlertCreateRequestFrequency($value)'; } 
 }
final class PostEventQueryAlertCreateRequest {const PostEventQueryAlertCreateRequest({this.enabled, this.frequency = PostEventQueryAlertCreateRequestFrequency.daily, this.notificationType = 'ans', required this.queryId, });

factory PostEventQueryAlertCreateRequest.fromJson(Map<String, dynamic> json) { return PostEventQueryAlertCreateRequest(
  enabled: json['enabled'] as bool?,
  frequency: json.containsKey('frequency') ? PostEventQueryAlertCreateRequestFrequency.fromJson(json['frequency'] as String) : PostEventQueryAlertCreateRequestFrequency.daily,
  notificationType: json.containsKey('notification_type') ? json['notification_type'] as String : 'ans',
  queryId: (json['query_id'] as num).toInt(),
); }

/// Whether the alert is enabled
final bool? enabled;

/// Alert frequency (immediate or daily)
final PostEventQueryAlertCreateRequestFrequency frequency;

/// Type of notification (e.g., ans)
final String notificationType;

/// ID of the event query to create an alert for
final int queryId;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  'frequency': frequency.toJson(),
  'notification_type': notificationType,
  'query_id': queryId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('query_id') && json['query_id'] is num; } 
PostEventQueryAlertCreateRequest copyWith({bool Function()? enabled, PostEventQueryAlertCreateRequestFrequency Function()? frequency, String Function()? notificationType, int? queryId, }) { return PostEventQueryAlertCreateRequest(
  enabled: enabled != null ? enabled() : this.enabled,
  frequency: frequency != null ? frequency() : this.frequency,
  notificationType: notificationType != null ? notificationType() : this.notificationType,
  queryId: queryId ?? this.queryId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventQueryAlertCreateRequest &&
          enabled == other.enabled &&
          frequency == other.frequency &&
          notificationType == other.notificationType &&
          queryId == other.queryId; } 
@override int get hashCode { return Object.hash(enabled, frequency, notificationType, queryId); } 
@override String toString() { return 'PostEventQueryAlertCreateRequest(enabled: $enabled, frequency: $frequency, notificationType: $notificationType, queryId: $queryId)'; } 
 }
