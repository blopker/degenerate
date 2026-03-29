// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The details for events with this `type`.
final class AuditLogIpAllowlistUpdated {const AuditLogIpAllowlistUpdated({this.id, this.allowedIps, });

factory AuditLogIpAllowlistUpdated.fromJson(Map<String, dynamic> json) { return AuditLogIpAllowlistUpdated(
  id: json['id'] as String?,
  allowedIps: (json['allowed_ips'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The ID of the IP allowlist configuration.
final String? id;

/// The updated set of IP addresses or CIDR ranges in the configuration.
final List<String>? allowedIps;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'allowed_ips': ?allowedIps,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogIpAllowlistUpdated copyWith({String Function()? id, List<String> Function()? allowedIps, }) { return AuditLogIpAllowlistUpdated(
  id: id != null ? id() : this.id,
  allowedIps: allowedIps != null ? allowedIps() : this.allowedIps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogIpAllowlistUpdated &&
          id == other.id &&
          listEquals(allowedIps, other.allowedIps); } 
@override int get hashCode { return Object.hash(id, Object.hashAll(allowedIps ?? const [])); } 
@override String toString() { return 'AuditLogIpAllowlistUpdated(id: $id, allowedIps: $allowedIps)'; } 
 }
