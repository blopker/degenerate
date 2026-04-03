// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item.dart';import 'item_edited_changes.dart';import 'item_edited_changes_variant1.dart';import 'item_edited_changes_variant2.dart';import 'organization_simple_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';@immutable final class ItemEditedAction {const ItemEditedAction._(this.value);

factory ItemEditedAction.fromJson(String json) { return switch (json) {
  'edited' => edited,
  _ => ItemEditedAction._(json),
}; }

static const ItemEditedAction edited = ItemEditedAction._('edited');

static const List<ItemEditedAction> values = [edited];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemEditedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ItemEditedAction($value)'; } 
 }
@immutable final class ItemEdited {const ItemEdited({required this.action, required this.organization, required this.projectsV2Item, required this.sender, this.changes, this.installation, });

factory ItemEdited.fromJson(Map<String, dynamic> json) { return ItemEdited(
  action: ItemEditedAction.fromJson(json['action'] as String),
  changes: json['changes'] != null ? OneOf2.parse(json['changes'], fromA: (v) => ItemEditedChangesVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => ItemEditedChangesVariant2.fromJson(v as Map<String, dynamic>),) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>),
  projectsV2Item: Item.fromJson(json['projects_v2_item'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final ItemEditedAction action;

/// The changes made to the item may involve modifications in the item's fields and draft issue body.
/// It includes altered values for text, number, date, single select, and iteration fields, along with the GraphQL node ID of the changed field.
final ItemEditedChanges? changes;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks organization;

final Item projectsV2Item;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (changes != null) 'changes': changes?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'organization': organization.toJson(),
  'projects_v2_item': projectsV2Item.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('organization') &&
      json.containsKey('projects_v2_item') &&
      json.containsKey('sender'); } 
ItemEdited copyWith({ItemEditedAction? action, ItemEditedChanges Function()? changes, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks? organization, Item? projectsV2Item, SimpleUser? sender, }) { return ItemEdited(
  action: action ?? this.action,
  changes: changes != null ? changes() : this.changes,
  installation: installation != null ? installation() : this.installation,
  organization: organization ?? this.organization,
  projectsV2Item: projectsV2Item ?? this.projectsV2Item,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ItemEdited &&
          action == other.action &&
          changes == other.changes &&
          installation == other.installation &&
          organization == other.organization &&
          projectsV2Item == other.projectsV2Item &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, changes, installation, organization, projectsV2Item, sender); } 
@override String toString() { return 'ItemEdited(action: $action, changes: $changes, installation: $installation, organization: $organization, projectsV2Item: $projectsV2Item, sender: $sender)'; } 
 }
