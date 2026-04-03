// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'audit_log_ip_allowlist_config_deactivated_configs.dart';/// The details for events with this `type`.
@immutable final class AuditLogIpAllowlistConfigDeactivated {const AuditLogIpAllowlistConfigDeactivated({this.configs});

factory AuditLogIpAllowlistConfigDeactivated.fromJson(Map<String, dynamic> json) { return AuditLogIpAllowlistConfigDeactivated(
  configs: (json['configs'] as List<dynamic>?)?.map((e) => AuditLogIpAllowlistConfigDeactivatedConfigs.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The configurations that were deactivated.
final List<AuditLogIpAllowlistConfigDeactivatedConfigs>? configs;

Map<String, dynamic> toJson() { return {
  if (configs != null) 'configs': configs?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'configs'}.contains(key)); } 
AuditLogIpAllowlistConfigDeactivated copyWith({List<AuditLogIpAllowlistConfigDeactivatedConfigs> Function()? configs}) { return AuditLogIpAllowlistConfigDeactivated(
  configs: configs != null ? configs() : this.configs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogIpAllowlistConfigDeactivated &&
          listEquals(configs, other.configs); } 
@override int get hashCode { return Object.hashAll(configs ?? const []).hashCode; } 
@override String toString() { return 'AuditLogIpAllowlistConfigDeactivated(configs: $configs)'; } 
 }
