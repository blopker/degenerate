// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The details for events with this `type`.
@immutable final class AuditLogScimDisabled {const AuditLogScimDisabled({this.id});

factory AuditLogScimDisabled.fromJson(Map<String, dynamic> json) { return AuditLogScimDisabled(
  id: json['id'] as String?,
); }

/// The ID of the SCIM was disabled for.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AuditLogScimDisabled copyWith({String Function()? id}) { return AuditLogScimDisabled(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogScimDisabled &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogScimDisabled(id: $id)'; } 
 }
