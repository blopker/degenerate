// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'organization_simple_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'status_update.dart';import 'status_update_edited_changes.dart';@immutable final class StatusUpdateEditedAction {const StatusUpdateEditedAction._(this.value);

factory StatusUpdateEditedAction.fromJson(String json) { return switch (json) {
  'edited' => edited,
  _ => StatusUpdateEditedAction._(json),
}; }

static const StatusUpdateEditedAction edited = StatusUpdateEditedAction._('edited');

static const List<StatusUpdateEditedAction> values = [edited];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StatusUpdateEditedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StatusUpdateEditedAction($value)'; } 
 }
@immutable final class StatusUpdateEdited {const StatusUpdateEdited({required this.action, required this.organization, required this.projectsV2StatusUpdate, required this.sender, this.changes, this.installation, });

factory StatusUpdateEdited.fromJson(Map<String, dynamic> json) { return StatusUpdateEdited(
  action: StatusUpdateEditedAction.fromJson(json['action'] as String),
  changes: json['changes'] != null ? StatusUpdateEditedChanges.fromJson(json['changes'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>),
  projectsV2StatusUpdate: StatusUpdate.fromJson(json['projects_v2_status_update'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final StatusUpdateEditedAction action;

final StatusUpdateEditedChanges? changes;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks organization;

final StatusUpdate projectsV2StatusUpdate;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (changes != null) 'changes': changes?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'organization': organization.toJson(),
  'projects_v2_status_update': projectsV2StatusUpdate.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('organization') &&
      json.containsKey('projects_v2_status_update') &&
      json.containsKey('sender'); } 
StatusUpdateEdited copyWith({StatusUpdateEditedAction? action, StatusUpdateEditedChanges Function()? changes, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks? organization, StatusUpdate? projectsV2StatusUpdate, SimpleUser? sender, }) { return StatusUpdateEdited(
  action: action ?? this.action,
  changes: changes != null ? changes() : this.changes,
  installation: installation != null ? installation() : this.installation,
  organization: organization ?? this.organization,
  projectsV2StatusUpdate: projectsV2StatusUpdate ?? this.projectsV2StatusUpdate,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StatusUpdateEdited &&
          action == other.action &&
          changes == other.changes &&
          installation == other.installation &&
          organization == other.organization &&
          projectsV2StatusUpdate == other.projectsV2StatusUpdate &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, changes, installation, organization, projectsV2StatusUpdate, sender); } 
@override String toString() { return 'StatusUpdateEdited(action: $action, changes: $changes, installation: $installation, organization: $organization, projectsV2StatusUpdate: $projectsV2StatusUpdate, sender: $sender)'; } 
 }
