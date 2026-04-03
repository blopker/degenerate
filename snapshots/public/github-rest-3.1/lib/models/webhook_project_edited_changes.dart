// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_project_edited_changes_body.dart';import 'webhook_project_edited_changes_name.dart';/// The changes to the project if the action was `edited`.
@immutable final class WebhookProjectEditedChanges {const WebhookProjectEditedChanges({this.body, this.name, });

factory WebhookProjectEditedChanges.fromJson(Map<String, dynamic> json) { return WebhookProjectEditedChanges(
  body: json['body'] != null ? WebhookProjectEditedChangesBody.fromJson(json['body'] as Map<String, dynamic>) : null,
  name: json['name'] != null ? WebhookProjectEditedChangesName.fromJson(json['name'] as Map<String, dynamic>) : null,
); }

final WebhookProjectEditedChangesBody? body;

final WebhookProjectEditedChangesName? name;

Map<String, dynamic> toJson() { return {
  if (body != null) 'body': body?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'body', 'name'}.contains(key)); } 
WebhookProjectEditedChanges copyWith({WebhookProjectEditedChangesBody Function()? body, WebhookProjectEditedChangesName Function()? name, }) { return WebhookProjectEditedChanges(
  body: body != null ? body() : this.body,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectEditedChanges &&
          body == other.body &&
          name == other.name; } 
@override int get hashCode { return Object.hash(body, name); } 
@override String toString() { return 'WebhookProjectEditedChanges(body: $body, name: $name)'; } 
 }
