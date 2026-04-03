// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_identifier.dart';@immutable final class AaaAuditLogsOwner {const AaaAuditLogsOwner({this.id});

factory AaaAuditLogsOwner.fromJson(Map<String, dynamic> json) { return AaaAuditLogsOwner(
  id: json['id'] != null ? AaaIdentifier.fromJson(json['id'] as String) : null,
); }

final AaaIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AaaAuditLogsOwner copyWith({AaaIdentifier Function()? id}) { return AaaAuditLogsOwner(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaAuditLogsOwner &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AaaAuditLogsOwner(id: $id)'; } 
 }
