// GENERATED CODE - DO NOT MODIFY BY HAND

import 'load_balancing_monitor_id.dart';final class LoadBalancingMonitorGroupMember {const LoadBalancingMonitorGroupMember({this.createdAt, required this.enabled, required this.monitorId, required this.monitoringOnly, required this.mustBeHealthy, this.updatedAt, });

factory LoadBalancingMonitorGroupMember.fromJson(Map<String, dynamic> json) { return LoadBalancingMonitorGroupMember(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  enabled: json['enabled'] as bool,
  monitorId: LoadBalancingMonitorId.fromJson(json['monitor_id'] as String),
  monitoringOnly: json['monitoring_only'] as bool,
  mustBeHealthy: json['must_be_healthy'] as bool,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
); }

/// The timestamp of when the monitor was added to the group
final DateTime? createdAt;

/// Whether this monitor is enabled in the group
final bool enabled;

final LoadBalancingMonitorId monitorId;

/// Whether this monitor is used for monitoring only (does not affect pool health)
final bool monitoringOnly;

/// Whether this monitor must be healthy for the pool to be considered healthy
final bool mustBeHealthy;

/// The timestamp of when the monitor group member was last updated
final DateTime? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'enabled': enabled,
  'monitor_id': monitorId.toJson(),
  'monitoring_only': monitoringOnly,
  'must_be_healthy': mustBeHealthy,
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('monitor_id') &&
      json.containsKey('monitoring_only') && json['monitoring_only'] is bool &&
      json.containsKey('must_be_healthy') && json['must_be_healthy'] is bool; } 
LoadBalancingMonitorGroupMember copyWith({DateTime Function()? createdAt, bool? enabled, LoadBalancingMonitorId? monitorId, bool? monitoringOnly, bool? mustBeHealthy, DateTime Function()? updatedAt, }) { return LoadBalancingMonitorGroupMember(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  enabled: enabled ?? this.enabled,
  monitorId: monitorId ?? this.monitorId,
  monitoringOnly: monitoringOnly ?? this.monitoringOnly,
  mustBeHealthy: mustBeHealthy ?? this.mustBeHealthy,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingMonitorGroupMember &&
          createdAt == other.createdAt &&
          enabled == other.enabled &&
          monitorId == other.monitorId &&
          monitoringOnly == other.monitoringOnly &&
          mustBeHealthy == other.mustBeHealthy &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, enabled, monitorId, monitoringOnly, mustBeHealthy, updatedAt); } 
@override String toString() { return 'LoadBalancingMonitorGroupMember(createdAt: $createdAt, enabled: $enabled, monitorId: $monitorId, monitoringOnly: $monitoringOnly, mustBeHealthy: $mustBeHealthy, updatedAt: $updatedAt)'; } 
 }
