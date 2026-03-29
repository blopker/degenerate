// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_mnm_mnm_config_default_sampling.dart';import 'magic_visibility_mnm_mnm_config_name.dart';import 'magic_visibility_mnm_mnm_config_router_ip.dart';import 'magic_visibility_mnm_mnm_config_warp_device.dart';final class MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest {const MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest({this.defaultSampling, this.name, this.routerIps, this.warpDevices, });

factory MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest.fromJson(Map<String, dynamic> json) { return MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest(
  defaultSampling: json['default_sampling'] != null ? MagicVisibilityMnmMnmConfigDefaultSampling.fromJson(json['default_sampling'] as num) : null,
  name: json['name'] != null ? MagicVisibilityMnmMnmConfigName.fromJson(json['name'] as String) : null,
  routerIps: (json['router_ips'] as List<dynamic>?)?.map((e) => MagicVisibilityMnmMnmConfigRouterIp.fromJson(e as String)).toList(),
  warpDevices: (json['warp_devices'] as List<dynamic>?)?.map((e) => MagicVisibilityMnmMnmConfigWarpDevice.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Fallback sampling rate of flow messages being sent in packets per second. This should match the packet sampling rate configured on the router.
final MagicVisibilityMnmMnmConfigDefaultSampling? defaultSampling;

/// The account name.
final MagicVisibilityMnmMnmConfigName? name;

final List<MagicVisibilityMnmMnmConfigRouterIp>? routerIps;

final List<MagicVisibilityMnmMnmConfigWarpDevice>? warpDevices;

Map<String, dynamic> toJson() { return {
  if (defaultSampling != null) 'default_sampling': defaultSampling?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (routerIps != null) 'router_ips': routerIps?.map((e) => e.toJson()).toList(),
  if (warpDevices != null) 'warp_devices': warpDevices?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest copyWith({MagicVisibilityMnmMnmConfigDefaultSampling Function()? defaultSampling, MagicVisibilityMnmMnmConfigName Function()? name, List<MagicVisibilityMnmMnmConfigRouterIp> Function()? routerIps, List<MagicVisibilityMnmMnmConfigWarpDevice> Function()? warpDevices, }) { return MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest(
  defaultSampling: defaultSampling != null ? defaultSampling() : this.defaultSampling,
  name: name != null ? name() : this.name,
  routerIps: routerIps != null ? routerIps() : this.routerIps,
  warpDevices: warpDevices != null ? warpDevices() : this.warpDevices,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest &&
          defaultSampling == other.defaultSampling &&
          name == other.name &&
          listEquals(routerIps, other.routerIps) &&
          listEquals(warpDevices, other.warpDevices); } 
@override int get hashCode { return Object.hash(defaultSampling, name, Object.hashAll(routerIps ?? const []), Object.hashAll(warpDevices ?? const [])); } 
@override String toString() { return 'MagicNetworkMonitoringConfigurationUpdateAccountConfigurationFieldsRequest(defaultSampling: $defaultSampling, name: $name, routerIps: $routerIps, warpDevices: $warpDevices)'; } 
 }
