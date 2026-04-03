// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The project that the action was scoped to. Absent for actions not scoped to projects. Note that any admin actions taken via Admin API keys are associated with the default project.
@immutable final class AuditLogProject {const AuditLogProject({this.id, this.name, });

factory AuditLogProject.fromJson(Map<String, dynamic> json) { return AuditLogProject(
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

/// The project ID.
final String? id;

/// The project title.
final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
AuditLogProject copyWith({String Function()? id, String Function()? name, }) { return AuditLogProject(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogProject &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'AuditLogProject(id: $id, name: $name)'; } 
 }
