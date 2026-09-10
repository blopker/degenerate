// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_uuid.dart';@immutable final class NotificationWebhooksUpdateAWebhookResponse4xxResult {const NotificationWebhooksUpdateAWebhookResponse4xxResult({this.id});

factory NotificationWebhooksUpdateAWebhookResponse4xxResult.fromJson(Map<String, dynamic> json) { return NotificationWebhooksUpdateAWebhookResponse4xxResult(
  id: json['id'] != null ? AaaUuid.fromJson(json['id'] as String) : null,
); }

/// UUID
final AaaUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
NotificationWebhooksUpdateAWebhookResponse4xxResult copyWith({AaaUuid? Function()? id}) { return NotificationWebhooksUpdateAWebhookResponse4xxResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NotificationWebhooksUpdateAWebhookResponse4xxResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'NotificationWebhooksUpdateAWebhookResponse4xxResult(id: $id)'; } 
 }
