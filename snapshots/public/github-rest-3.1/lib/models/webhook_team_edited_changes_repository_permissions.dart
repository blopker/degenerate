// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_team_edited_changes_repository_permissions_from.dart';@immutable final class WebhookTeamEditedChangesRepositoryPermissions {const WebhookTeamEditedChangesRepositoryPermissions({required this.from});

factory WebhookTeamEditedChangesRepositoryPermissions.fromJson(Map<String, dynamic> json) { return WebhookTeamEditedChangesRepositoryPermissions(
  from: WebhookTeamEditedChangesRepositoryPermissionsFrom.fromJson(json['from'] as Map<String, dynamic>),
); }

final WebhookTeamEditedChangesRepositoryPermissionsFrom from;

Map<String, dynamic> toJson() { return {
  'from': from.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from'); } 
WebhookTeamEditedChangesRepositoryPermissions copyWith({WebhookTeamEditedChangesRepositoryPermissionsFrom? from}) { return WebhookTeamEditedChangesRepositoryPermissions(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookTeamEditedChangesRepositoryPermissions &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookTeamEditedChangesRepositoryPermissions(from: $from)'; } 
 }
