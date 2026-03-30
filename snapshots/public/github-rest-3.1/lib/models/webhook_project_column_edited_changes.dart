// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_project_column_edited_changes_name.dart';final class WebhookProjectColumnEditedChanges {const WebhookProjectColumnEditedChanges({this.name});

factory WebhookProjectColumnEditedChanges.fromJson(Map<String, dynamic> json) { return WebhookProjectColumnEditedChanges(
  name: json['name'] != null ? WebhookProjectColumnEditedChangesName.fromJson(json['name'] as Map<String, dynamic>) : null,
); }

final WebhookProjectColumnEditedChangesName? name;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name'}.contains(key)); } 
WebhookProjectColumnEditedChanges copyWith({WebhookProjectColumnEditedChangesName Function()? name}) { return WebhookProjectColumnEditedChanges(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectColumnEditedChanges &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'WebhookProjectColumnEditedChanges(name: $name)'; } 
 }
