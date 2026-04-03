// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Alert frequency (immediate or daily)
@immutable final class PostEventQueryAlertCreateResponseFrequency {const PostEventQueryAlertCreateResponseFrequency._(this.value);

factory PostEventQueryAlertCreateResponseFrequency.fromJson(String json) { return switch (json) {
  'immediate' => immediate,
  'daily' => daily,
  _ => PostEventQueryAlertCreateResponseFrequency._(json),
}; }

static const PostEventQueryAlertCreateResponseFrequency immediate = PostEventQueryAlertCreateResponseFrequency._('immediate');

static const PostEventQueryAlertCreateResponseFrequency daily = PostEventQueryAlertCreateResponseFrequency._('daily');

static const List<PostEventQueryAlertCreateResponseFrequency> values = [immediate, daily];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostEventQueryAlertCreateResponseFrequency && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostEventQueryAlertCreateResponseFrequency($value)'; } 
 }
@immutable final class PostEventQueryAlertCreateResponse {const PostEventQueryAlertCreateResponse({required this.accountId, required this.createdAt, required this.enabled, required this.frequency, required this.id, required this.notificationType, required this.queryId, required this.updatedAt, required this.userEmail, this.lastSentAt, });

factory PostEventQueryAlertCreateResponse.fromJson(Map<String, dynamic> json) { return PostEventQueryAlertCreateResponse(
  accountId: (json['account_id'] as num).toInt(),
  createdAt: json['created_at'] as String,
  enabled: json['enabled'] as bool,
  frequency: PostEventQueryAlertCreateResponseFrequency.fromJson(json['frequency'] as String),
  id: (json['id'] as num).toInt(),
  lastSentAt: json['last_sent_at'] as String?,
  notificationType: json['notification_type'] as String,
  queryId: (json['query_id'] as num).toInt(),
  updatedAt: json['updated_at'] as String,
  userEmail: json['user_email'] as String,
); }

/// Account ID
final int accountId;

/// Creation timestamp
final String createdAt;

/// Whether the alert is enabled
final bool enabled;

/// Alert frequency (immediate or daily)
final PostEventQueryAlertCreateResponseFrequency frequency;

/// Unique identifier for the event query alert
final int id;

/// Last time the alert was sent
final String? lastSentAt;

/// Type of notification
final String notificationType;

/// ID of the associated event query
final int queryId;

/// Last update timestamp
final String updatedAt;

/// Email of the user who created the alert
final String userEmail;

Map<String, dynamic> toJson() { return {
  'account_id': accountId,
  'created_at': createdAt,
  'enabled': enabled,
  'frequency': frequency.toJson(),
  'id': id,
  'last_sent_at': ?lastSentAt,
  'notification_type': notificationType,
  'query_id': queryId,
  'updated_at': updatedAt,
  'user_email': userEmail,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_id') && json['account_id'] is num &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('frequency') &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('notification_type') && json['notification_type'] is String &&
      json.containsKey('query_id') && json['query_id'] is num &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('user_email') && json['user_email'] is String; } 
PostEventQueryAlertCreateResponse copyWith({int? accountId, String? createdAt, bool? enabled, PostEventQueryAlertCreateResponseFrequency? frequency, int? id, String Function()? lastSentAt, String? notificationType, int? queryId, String? updatedAt, String? userEmail, }) { return PostEventQueryAlertCreateResponse(
  accountId: accountId ?? this.accountId,
  createdAt: createdAt ?? this.createdAt,
  enabled: enabled ?? this.enabled,
  frequency: frequency ?? this.frequency,
  id: id ?? this.id,
  lastSentAt: lastSentAt != null ? lastSentAt() : this.lastSentAt,
  notificationType: notificationType ?? this.notificationType,
  queryId: queryId ?? this.queryId,
  updatedAt: updatedAt ?? this.updatedAt,
  userEmail: userEmail ?? this.userEmail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventQueryAlertCreateResponse &&
          accountId == other.accountId &&
          createdAt == other.createdAt &&
          enabled == other.enabled &&
          frequency == other.frequency &&
          id == other.id &&
          lastSentAt == other.lastSentAt &&
          notificationType == other.notificationType &&
          queryId == other.queryId &&
          updatedAt == other.updatedAt &&
          userEmail == other.userEmail; } 
@override int get hashCode { return Object.hash(accountId, createdAt, enabled, frequency, id, lastSentAt, notificationType, queryId, updatedAt, userEmail); } 
@override String toString() { return 'PostEventQueryAlertCreateResponse(accountId: $accountId, createdAt: $createdAt, enabled: $enabled, frequency: $frequency, id: $id, lastSentAt: $lastSentAt, notificationType: $notificationType, queryId: $queryId, updatedAt: $updatedAt, userEmail: $userEmail)'; } 
 }
