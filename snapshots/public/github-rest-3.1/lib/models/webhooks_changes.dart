// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhooks_changes_body.dart';/// The changes to the comment.
final class WebhooksChanges {const WebhooksChanges({this.body});

factory WebhooksChanges.fromJson(Map<String, dynamic> json) { return WebhooksChanges(
  body: json['body'] != null ? WebhooksChangesBody.fromJson(json['body'] as Map<String, dynamic>) : null,
); }

final WebhooksChangesBody? body;

Map<String, dynamic> toJson() { return {
  if (body != null) 'body': body?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'body'}.contains(key)); } 
WebhooksChanges copyWith({WebhooksChangesBody Function()? body}) { return WebhooksChanges(
  body: body != null ? body() : this.body,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksChanges &&
          body == other.body; } 
@override int get hashCode { return body.hashCode; } 
@override String toString() { return 'WebhooksChanges(body: $body)'; } 
 }
