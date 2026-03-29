// GENERATED CODE - DO NOT MODIFY BY HAND

final class AuditLogIpAllowlistConfigDeactivatedConfigs {const AuditLogIpAllowlistConfigDeactivatedConfigs({this.id, this.name, });

factory AuditLogIpAllowlistConfigDeactivatedConfigs.fromJson(Map<String, dynamic> json) { return AuditLogIpAllowlistConfigDeactivatedConfigs(
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
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogIpAllowlistConfigDeactivatedConfigs copyWith({String Function()? id, String Function()? name, }) { return AuditLogIpAllowlistConfigDeactivatedConfigs(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogIpAllowlistConfigDeactivatedConfigs &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'AuditLogIpAllowlistConfigDeactivatedConfigs(id: $id, name: $name)'; } 
 }
