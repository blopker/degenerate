// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The details for events with this `type`.
final class AuditLogIpAllowlistCreated {const AuditLogIpAllowlistCreated({this.id, this.name, this.allowedIps, });

factory AuditLogIpAllowlistCreated.fromJson(Map<String, dynamic> json) { return AuditLogIpAllowlistCreated(
  id: json['id'] as String?,
  name: json['name'] as String?,
  allowedIps: (json['allowed_ips'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The ID of the IP allowlist configuration.
final String? id;

/// The name of the IP allowlist configuration.
final String? name;

/// The IP addresses or CIDR ranges included in the configuration.
final List<String>? allowedIps;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
  'allowed_ips': ?allowedIps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'allowed_ips'}.contains(key)); } 
AuditLogIpAllowlistCreated copyWith({String Function()? id, String Function()? name, List<String> Function()? allowedIps, }) { return AuditLogIpAllowlistCreated(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  allowedIps: allowedIps != null ? allowedIps() : this.allowedIps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogIpAllowlistCreated &&
          id == other.id &&
          name == other.name &&
          listEquals(allowedIps, other.allowedIps); } 
@override int get hashCode { return Object.hash(id, name, Object.hashAll(allowedIps ?? const [])); } 
@override String toString() { return 'AuditLogIpAllowlistCreated(id: $id, name: $name, allowedIps: $allowedIps)'; } 
 }
