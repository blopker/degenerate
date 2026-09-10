// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_monitor_id.dart';@immutable final class LoadBalancingMonitorGroupMemberRequest {const LoadBalancingMonitorGroupMemberRequest({required this.enabled, required this.monitorId, required this.monitoringOnly, required this.mustBeHealthy, });

factory LoadBalancingMonitorGroupMemberRequest.fromJson(Map<String, dynamic> json) {return LoadBalancingMonitorGroupMemberRequest(
  enabled: json['enabled'] as bool,
  monitorId: LoadBalancingMonitorId.fromJson(json['monitor_id'] as String),
  monitoringOnly: json['monitoring_only'] as bool,
  mustBeHealthy: json['must_be_healthy'] as bool,
);}

/// Whether this monitor is enabled in the group
final bool enabled;

/// The ID of the Monitor to use for checking the health of origins within this pool.
final LoadBalancingMonitorId monitorId;

/// Whether this monitor is used for monitoring only (does not affect pool health)
final bool monitoringOnly;

/// Whether this monitor must be healthy for the pool to be considered healthy
final bool mustBeHealthy;

Map<String, dynamic> toJson() {return {
  'enabled': enabled,
  'monitor_id': monitorId.toJson(),
  'monitoring_only': monitoringOnly,
  'must_be_healthy': mustBeHealthy,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('monitor_id') &&
      json.containsKey('monitoring_only') && json['monitoring_only'] is bool &&
      json.containsKey('must_be_healthy') && json['must_be_healthy'] is bool;}
LoadBalancingMonitorGroupMemberRequest copyWith({bool? enabled, LoadBalancingMonitorId? monitorId, bool? monitoringOnly, bool? mustBeHealthy, }) {return LoadBalancingMonitorGroupMemberRequest(
  enabled: enabled ?? this.enabled,
  monitorId: monitorId ?? this.monitorId,
  monitoringOnly: monitoringOnly ?? this.monitoringOnly,
  mustBeHealthy: mustBeHealthy ?? this.mustBeHealthy,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is LoadBalancingMonitorGroupMemberRequest &&
          enabled == other.enabled &&
          monitorId == other.monitorId &&
          monitoringOnly == other.monitoringOnly &&
          mustBeHealthy == other.mustBeHealthy;}
@override int get hashCode {return Object.hash(enabled, monitorId, monitoringOnly, mustBeHealthy);}
@override String toString() {return 'LoadBalancingMonitorGroupMemberRequest(enabled: $enabled, monitorId: $monitorId, monitoringOnly: $monitoringOnly, mustBeHealthy: $mustBeHealthy)';}
}
