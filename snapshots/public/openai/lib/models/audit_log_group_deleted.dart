// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The details for events with this `type`.
@immutable final class AuditLogGroupDeleted {const AuditLogGroupDeleted({this.id});

factory AuditLogGroupDeleted.fromJson(Map<String, dynamic> json) { return AuditLogGroupDeleted(
  id: json['id'] as String?,
); }

/// The ID of the group.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AuditLogGroupDeleted copyWith({String Function()? id}) { return AuditLogGroupDeleted(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogGroupDeleted &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogGroupDeleted(id: $id)'; } 
 }
