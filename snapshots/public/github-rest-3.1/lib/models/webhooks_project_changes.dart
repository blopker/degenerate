// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhooks_project_changes_archived_at.dart';final class WebhooksProjectChanges {const WebhooksProjectChanges({this.archivedAt});

factory WebhooksProjectChanges.fromJson(Map<String, dynamic> json) { return WebhooksProjectChanges(
  archivedAt: json['archived_at'] != null ? WebhooksProjectChangesArchivedAt.fromJson(json['archived_at'] as Map<String, dynamic>) : null,
); }

final WebhooksProjectChangesArchivedAt? archivedAt;

Map<String, dynamic> toJson() { return {
  if (archivedAt != null) 'archived_at': archivedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhooksProjectChanges copyWith({WebhooksProjectChangesArchivedAt Function()? archivedAt}) { return WebhooksProjectChanges(
  archivedAt: archivedAt != null ? archivedAt() : this.archivedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksProjectChanges &&
          archivedAt == other.archivedAt; } 
@override int get hashCode { return archivedAt.hashCode; } 
@override String toString() { return 'WebhooksProjectChanges(archivedAt: $archivedAt)'; } 
 }
