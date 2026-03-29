// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_binding_name.dart';final class WorkersBindingKindHyperdrive {const WorkersBindingKindHyperdrive({required this.id, required this.name, required this.type, });

factory WorkersBindingKindHyperdrive.fromJson(Map<String, dynamic> json) { return WorkersBindingKindHyperdrive(
  id: json['id'] as String,
  name: WorkersBindingName.fromJson(json['name'] as String),
  type: json['type'] as String,
); }

/// Identifier of the Hyperdrive connection to bind to.
final String id;

final WorkersBindingName name;

/// The kind of resource that the binding provides.
final String type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') &&
      json.containsKey('type') && json['type'] is String; } 
WorkersBindingKindHyperdrive copyWith({String? id, WorkersBindingName? name, String? type, }) { return WorkersBindingKindHyperdrive(
  id: id ?? this.id,
  name: name ?? this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindHyperdrive &&
          id == other.id &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, name, type); } 
@override String toString() { return 'WorkersBindingKindHyperdrive(id: $id, name: $name, type: $type)'; } 
 }
