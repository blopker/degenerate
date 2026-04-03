// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The details for events with this `type`.
@immutable final class AuditLogProjectArchived {const AuditLogProjectArchived({this.id});

factory AuditLogProjectArchived.fromJson(Map<String, dynamic> json) { return AuditLogProjectArchived(
  id: json['id'] as String?,
); }

/// The project ID.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AuditLogProjectArchived copyWith({String Function()? id}) { return AuditLogProjectArchived(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogProjectArchived &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogProjectArchived(id: $id)'; } 
 }
