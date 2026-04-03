// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The details for events with this `type`.
@immutable final class AuditLogInviteDeleted {const AuditLogInviteDeleted({this.id});

factory AuditLogInviteDeleted.fromJson(Map<String, dynamic> json) { return AuditLogInviteDeleted(
  id: json['id'] as String?,
); }

/// The ID of the invite.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AuditLogInviteDeleted copyWith({String Function()? id}) { return AuditLogInviteDeleted(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogInviteDeleted &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogInviteDeleted(id: $id)'; } 
 }
