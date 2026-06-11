// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_uuid.dart';@immutable final class NotificationWebhooksUpdateAWebhookResponse4XxResult {const NotificationWebhooksUpdateAWebhookResponse4XxResult({this.id});

factory NotificationWebhooksUpdateAWebhookResponse4XxResult.fromJson(Map<String, dynamic> json) { return NotificationWebhooksUpdateAWebhookResponse4XxResult(
  id: json['id'] != null ? AaaUuid.fromJson(json['id'] as String) : null,
); }

/// UUID
final AaaUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
NotificationWebhooksUpdateAWebhookResponse4XxResult copyWith({AaaUuid Function()? id}) { return NotificationWebhooksUpdateAWebhookResponse4XxResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NotificationWebhooksUpdateAWebhookResponse4XxResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'NotificationWebhooksUpdateAWebhookResponse4XxResult(id: $id)'; } 
 }
