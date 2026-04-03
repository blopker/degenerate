// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_actions2.dart';import 'zones_priority.dart';import 'zones_schemas_identifier.dart';import 'zones_status.dart';import 'zones_target.dart';/// The timestamp of when the Page Rule was created.
extension type ZonesCreatedOn(DateTime value) {
factory ZonesCreatedOn.fromJson(String json) => ZonesCreatedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// The timestamp of when the Page Rule was last modified.
extension type ZonesModifiedOn(DateTime value) {
factory ZonesModifiedOn.fromJson(String json) => ZonesModifiedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class ZonesPageRule {const ZonesPageRule({required this.actions, required this.createdOn, required this.id, required this.modifiedOn, required this.priority, required this.status, required this.targets, });

factory ZonesPageRule.fromJson(Map<String, dynamic> json) { return ZonesPageRule(
  actions: (json['actions'] as List<dynamic>).map((e) => ZonesActions2.fromJson(e as Map<String, dynamic>)).toList(),
  createdOn: ZonesCreatedOn.fromJson(json['created_on'] as String),
  id: ZonesSchemasIdentifier.fromJson(json['id'] as String),
  modifiedOn: ZonesModifiedOn.fromJson(json['modified_on'] as String),
  priority: ZonesPriority.fromJson(json['priority'] as num),
  status: ZonesStatus.fromJson(json['status'] as String),
  targets: (json['targets'] as List<dynamic>).map((e) => ZonesTarget.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The set of actions to perform if the targets of this rule match the
/// request. Actions can redirect to another URL or override settings, but
/// not both.
/// 
final List<ZonesActions2> actions;

/// The timestamp of when the Page Rule was created.
final ZonesCreatedOn createdOn;

final ZonesSchemasIdentifier id;

/// The timestamp of when the Page Rule was last modified.
final ZonesModifiedOn modifiedOn;

final ZonesPriority priority;

final ZonesStatus status;

final List<ZonesTarget> targets;

Map<String, dynamic> toJson() { return {
  'actions': actions.map((e) => e.toJson()).toList(),
  'created_on': createdOn.toJson(),
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
  'priority': priority.toJson(),
  'status': status.toJson(),
  'targets': targets.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('actions') &&
      json.containsKey('created_on') &&
      json.containsKey('id') &&
      json.containsKey('modified_on') &&
      json.containsKey('priority') &&
      json.containsKey('status') &&
      json.containsKey('targets'); } 
ZonesPageRule copyWith({List<ZonesActions2>? actions, ZonesCreatedOn? createdOn, ZonesSchemasIdentifier? id, ZonesModifiedOn? modifiedOn, ZonesPriority? priority, ZonesStatus? status, List<ZonesTarget>? targets, }) { return ZonesPageRule(
  actions: actions ?? this.actions,
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  priority: priority ?? this.priority,
  status: status ?? this.status,
  targets: targets ?? this.targets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesPageRule &&
          listEquals(actions, other.actions) &&
          createdOn == other.createdOn &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          priority == other.priority &&
          status == other.status &&
          listEquals(targets, other.targets); } 
@override int get hashCode { return Object.hash(Object.hashAll(actions), createdOn, id, modifiedOn, priority, status, Object.hashAll(targets)); } 
@override String toString() { return 'ZonesPageRule(actions: $actions, createdOn: $createdOn, id: $id, modifiedOn: $modifiedOn, priority: $priority, status: $status, targets: $targets)'; } 
 }
