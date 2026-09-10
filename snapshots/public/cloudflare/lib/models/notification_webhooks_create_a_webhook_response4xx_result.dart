// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_uuid.dart';@immutable final class NotificationWebhooksCreateAWebhookResponse4xxResult {const NotificationWebhooksCreateAWebhookResponse4xxResult({this.id});

factory NotificationWebhooksCreateAWebhookResponse4xxResult.fromJson(Map<String, dynamic> json) {return NotificationWebhooksCreateAWebhookResponse4xxResult(
  id: json['id'] != null ? AaaUuid.fromJson(json['id'] as String) : null,
);}

/// UUID
final AaaUuid? id;

Map<String, dynamic> toJson() {return {
  if (id != null) 'id': id?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'id'}.contains(key));}
NotificationWebhooksCreateAWebhookResponse4xxResult copyWith({AaaUuid? Function()? id}) {return NotificationWebhooksCreateAWebhookResponse4xxResult(
  id: id != null ? id() : this.id,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is NotificationWebhooksCreateAWebhookResponse4xxResult &&
          id == other.id;}
@override int get hashCode {return id.hashCode;}
@override String toString() {return 'NotificationWebhooksCreateAWebhookResponse4xxResult(id: $id)';}
}
