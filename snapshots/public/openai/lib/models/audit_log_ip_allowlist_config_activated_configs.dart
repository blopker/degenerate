// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AuditLogIpAllowlistConfigActivatedConfigs {const AuditLogIpAllowlistConfigActivatedConfigs({this.id, this.name, });

factory AuditLogIpAllowlistConfigActivatedConfigs.fromJson(Map<String, dynamic> json) { return AuditLogIpAllowlistConfigActivatedConfigs(
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

/// The ID of the IP allowlist configuration.
final String? id;

/// The name of the IP allowlist configuration.
final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
AuditLogIpAllowlistConfigActivatedConfigs copyWith({String Function()? id, String Function()? name, }) { return AuditLogIpAllowlistConfigActivatedConfigs(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogIpAllowlistConfigActivatedConfigs &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'AuditLogIpAllowlistConfigActivatedConfigs(id: $id, name: $name)'; } 
 }
