// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_allow_mode_switch.dart';import 'teams_devices_allow_updates.dart';import 'teams_devices_allowed_to_leave.dart';import 'teams_devices_auto_connect.dart';import 'teams_devices_captive_portal.dart';import 'teams_devices_disable_auto_fallback.dart';import 'teams_devices_exclude_office_ips.dart';import 'teams_devices_exclude_split_tunnel_with_address.dart';import 'teams_devices_exclude_split_tunnel_with_host.dart';import 'teams_devices_fallback_domain.dart';import 'teams_devices_gateway_unique_id.dart';import 'teams_devices_include_split_tunnel_with_address.dart';import 'teams_devices_include_split_tunnel_with_host.dart';import 'teams_devices_register_interface_ip_with_dns.dart';import 'teams_devices_sccm_vpn_boundary_support.dart';import 'teams_devices_service_mode.dart';import 'teams_devices_split_tunnel.dart';import 'teams_devices_split_tunnel_include.dart';import 'teams_devices_support_url.dart';import 'teams_devices_switch_locked.dart';import 'teams_devices_tunnel_protocol.dart';final class TeamsDevicesDefaultDeviceSettingsPolicy {const TeamsDevicesDefaultDeviceSettingsPolicy({this.allowModeSwitch, this.allowUpdates, this.allowedToLeave, this.autoConnect, this.captivePortal, this.$default, this.disableAutoFallback, this.enabled = true, this.exclude, this.excludeOfficeIps, this.fallbackDomains, this.gatewayUniqueId, this.include, this.registerInterfaceIpWithDns, this.sccmVpnBoundarySupport, this.serviceModeV2, this.supportUrl, this.switchLocked, this.tunnelProtocol, });

factory TeamsDevicesDefaultDeviceSettingsPolicy.fromJson(Map<String, dynamic> json) { return TeamsDevicesDefaultDeviceSettingsPolicy(
  allowModeSwitch: json['allow_mode_switch'] != null ? TeamsDevicesAllowModeSwitch.fromJson(json['allow_mode_switch'] as bool) : null,
  allowUpdates: json['allow_updates'] != null ? TeamsDevicesAllowUpdates.fromJson(json['allow_updates'] as bool) : null,
  allowedToLeave: json['allowed_to_leave'] != null ? TeamsDevicesAllowedToLeave.fromJson(json['allowed_to_leave'] as bool) : null,
  autoConnect: json['auto_connect'] != null ? TeamsDevicesAutoConnect.fromJson(json['auto_connect'] as num) : null,
  captivePortal: json['captive_portal'] != null ? TeamsDevicesCaptivePortal.fromJson(json['captive_portal'] as num) : null,
  $default: json['default'] as bool?,
  disableAutoFallback: json['disable_auto_fallback'] != null ? TeamsDevicesDisableAutoFallback.fromJson(json['disable_auto_fallback'] as bool) : null,
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : true,
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesExcludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesExcludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList(),
  excludeOfficeIps: json['exclude_office_ips'] != null ? TeamsDevicesExcludeOfficeIps.fromJson(json['exclude_office_ips'] as bool) : null,
  fallbackDomains: (json['fallback_domains'] as List<dynamic>?)?.map((e) => TeamsDevicesFallbackDomain.fromJson(e as Map<String, dynamic>)).toList(),
  gatewayUniqueId: json['gateway_unique_id'] != null ? TeamsDevicesGatewayUniqueId.fromJson(json['gateway_unique_id'] as String) : null,
  include: (json['include'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesIncludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesIncludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList(),
  registerInterfaceIpWithDns: json['register_interface_ip_with_dns'] != null ? TeamsDevicesRegisterInterfaceIpWithDns.fromJson(json['register_interface_ip_with_dns'] as bool) : null,
  sccmVpnBoundarySupport: json['sccm_vpn_boundary_support'] != null ? TeamsDevicesSccmVpnBoundarySupport.fromJson(json['sccm_vpn_boundary_support'] as bool) : null,
  serviceModeV2: json['service_mode_v2'] != null ? TeamsDevicesServiceMode.fromJson(json['service_mode_v2'] as Map<String, dynamic>) : null,
  supportUrl: json['support_url'] != null ? TeamsDevicesSupportUrl.fromJson(json['support_url'] as String) : null,
  switchLocked: json['switch_locked'] != null ? TeamsDevicesSwitchLocked.fromJson(json['switch_locked'] as bool) : null,
  tunnelProtocol: json['tunnel_protocol'] != null ? TeamsDevicesTunnelProtocol.fromJson(json['tunnel_protocol'] as String) : null,
); }

/// Whether to allow the user to switch WARP between modes.
final TeamsDevicesAllowModeSwitch? allowModeSwitch;

/// Whether to receive update notifications when a new version of the client is available.
final TeamsDevicesAllowUpdates? allowUpdates;

/// Whether to allow devices to leave the organization.
final TeamsDevicesAllowedToLeave? allowedToLeave;

/// The amount of time in seconds to reconnect after having been disabled.
final TeamsDevicesAutoConnect? autoConnect;

/// Turn on the captive portal after the specified amount of time.
final TeamsDevicesCaptivePortal? captivePortal;

/// Whether the policy will be applied to matching devices.
final bool? $default;

final TeamsDevicesDisableAutoFallback? disableAutoFallback;

/// Whether the policy will be applied to matching devices.
final bool enabled;

final List<TeamsDevicesSplitTunnel>? exclude;

final TeamsDevicesExcludeOfficeIps? excludeOfficeIps;

final List<TeamsDevicesFallbackDomain>? fallbackDomains;

final TeamsDevicesGatewayUniqueId? gatewayUniqueId;

final List<TeamsDevicesSplitTunnelInclude>? include;

final TeamsDevicesRegisterInterfaceIpWithDns? registerInterfaceIpWithDns;

final TeamsDevicesSccmVpnBoundarySupport? sccmVpnBoundarySupport;

final TeamsDevicesServiceMode? serviceModeV2;

final TeamsDevicesSupportUrl? supportUrl;

final TeamsDevicesSwitchLocked? switchLocked;

final TeamsDevicesTunnelProtocol? tunnelProtocol;

Map<String, dynamic> toJson() { return {
  if (allowModeSwitch != null) 'allow_mode_switch': allowModeSwitch?.toJson(),
  if (allowUpdates != null) 'allow_updates': allowUpdates?.toJson(),
  if (allowedToLeave != null) 'allowed_to_leave': allowedToLeave?.toJson(),
  if (autoConnect != null) 'auto_connect': autoConnect?.toJson(),
  if (captivePortal != null) 'captive_portal': captivePortal?.toJson(),
  'default': ?$default,
  if (disableAutoFallback != null) 'disable_auto_fallback': disableAutoFallback?.toJson(),
  'enabled': enabled,
  if (exclude != null) 'exclude': exclude?.map((e) => e.toJson()).toList(),
  if (excludeOfficeIps != null) 'exclude_office_ips': excludeOfficeIps?.toJson(),
  if (fallbackDomains != null) 'fallback_domains': fallbackDomains?.map((e) => e.toJson()).toList(),
  if (gatewayUniqueId != null) 'gateway_unique_id': gatewayUniqueId?.toJson(),
  if (include != null) 'include': include?.map((e) => e.toJson()).toList(),
  if (registerInterfaceIpWithDns != null) 'register_interface_ip_with_dns': registerInterfaceIpWithDns?.toJson(),
  if (sccmVpnBoundarySupport != null) 'sccm_vpn_boundary_support': sccmVpnBoundarySupport?.toJson(),
  if (serviceModeV2 != null) 'service_mode_v2': serviceModeV2?.toJson(),
  if (supportUrl != null) 'support_url': supportUrl?.toJson(),
  if (switchLocked != null) 'switch_locked': switchLocked?.toJson(),
  if (tunnelProtocol != null) 'tunnel_protocol': tunnelProtocol?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allow_mode_switch', 'allow_updates', 'allowed_to_leave', 'auto_connect', 'captive_portal', 'default', 'disable_auto_fallback', 'enabled', 'exclude', 'exclude_office_ips', 'fallback_domains', 'gateway_unique_id', 'include', 'register_interface_ip_with_dns', 'sccm_vpn_boundary_support', 'service_mode_v2', 'support_url', 'switch_locked', 'tunnel_protocol'}.contains(key)); } 
TeamsDevicesDefaultDeviceSettingsPolicy copyWith({TeamsDevicesAllowModeSwitch Function()? allowModeSwitch, TeamsDevicesAllowUpdates Function()? allowUpdates, TeamsDevicesAllowedToLeave Function()? allowedToLeave, TeamsDevicesAutoConnect Function()? autoConnect, TeamsDevicesCaptivePortal Function()? captivePortal, bool Function()? $default, TeamsDevicesDisableAutoFallback Function()? disableAutoFallback, bool Function()? enabled, List<TeamsDevicesSplitTunnel> Function()? exclude, TeamsDevicesExcludeOfficeIps Function()? excludeOfficeIps, List<TeamsDevicesFallbackDomain> Function()? fallbackDomains, TeamsDevicesGatewayUniqueId Function()? gatewayUniqueId, List<TeamsDevicesSplitTunnelInclude> Function()? include, TeamsDevicesRegisterInterfaceIpWithDns Function()? registerInterfaceIpWithDns, TeamsDevicesSccmVpnBoundarySupport Function()? sccmVpnBoundarySupport, TeamsDevicesServiceMode Function()? serviceModeV2, TeamsDevicesSupportUrl Function()? supportUrl, TeamsDevicesSwitchLocked Function()? switchLocked, TeamsDevicesTunnelProtocol Function()? tunnelProtocol, }) { return TeamsDevicesDefaultDeviceSettingsPolicy(
  allowModeSwitch: allowModeSwitch != null ? allowModeSwitch() : this.allowModeSwitch,
  allowUpdates: allowUpdates != null ? allowUpdates() : this.allowUpdates,
  allowedToLeave: allowedToLeave != null ? allowedToLeave() : this.allowedToLeave,
  autoConnect: autoConnect != null ? autoConnect() : this.autoConnect,
  captivePortal: captivePortal != null ? captivePortal() : this.captivePortal,
  $default: $default != null ? $default() : this.$default,
  disableAutoFallback: disableAutoFallback != null ? disableAutoFallback() : this.disableAutoFallback,
  enabled: enabled != null ? enabled() : this.enabled,
  exclude: exclude != null ? exclude() : this.exclude,
  excludeOfficeIps: excludeOfficeIps != null ? excludeOfficeIps() : this.excludeOfficeIps,
  fallbackDomains: fallbackDomains != null ? fallbackDomains() : this.fallbackDomains,
  gatewayUniqueId: gatewayUniqueId != null ? gatewayUniqueId() : this.gatewayUniqueId,
  include: include != null ? include() : this.include,
  registerInterfaceIpWithDns: registerInterfaceIpWithDns != null ? registerInterfaceIpWithDns() : this.registerInterfaceIpWithDns,
  sccmVpnBoundarySupport: sccmVpnBoundarySupport != null ? sccmVpnBoundarySupport() : this.sccmVpnBoundarySupport,
  serviceModeV2: serviceModeV2 != null ? serviceModeV2() : this.serviceModeV2,
  supportUrl: supportUrl != null ? supportUrl() : this.supportUrl,
  switchLocked: switchLocked != null ? switchLocked() : this.switchLocked,
  tunnelProtocol: tunnelProtocol != null ? tunnelProtocol() : this.tunnelProtocol,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDefaultDeviceSettingsPolicy &&
          allowModeSwitch == other.allowModeSwitch &&
          allowUpdates == other.allowUpdates &&
          allowedToLeave == other.allowedToLeave &&
          autoConnect == other.autoConnect &&
          captivePortal == other.captivePortal &&
          $default == other.$default &&
          disableAutoFallback == other.disableAutoFallback &&
          enabled == other.enabled &&
          listEquals(exclude, other.exclude) &&
          excludeOfficeIps == other.excludeOfficeIps &&
          listEquals(fallbackDomains, other.fallbackDomains) &&
          gatewayUniqueId == other.gatewayUniqueId &&
          listEquals(include, other.include) &&
          registerInterfaceIpWithDns == other.registerInterfaceIpWithDns &&
          sccmVpnBoundarySupport == other.sccmVpnBoundarySupport &&
          serviceModeV2 == other.serviceModeV2 &&
          supportUrl == other.supportUrl &&
          switchLocked == other.switchLocked &&
          tunnelProtocol == other.tunnelProtocol; } 
@override int get hashCode { return Object.hash(allowModeSwitch, allowUpdates, allowedToLeave, autoConnect, captivePortal, $default, disableAutoFallback, enabled, Object.hashAll(exclude ?? const []), excludeOfficeIps, Object.hashAll(fallbackDomains ?? const []), gatewayUniqueId, Object.hashAll(include ?? const []), registerInterfaceIpWithDns, sccmVpnBoundarySupport, serviceModeV2, supportUrl, switchLocked, tunnelProtocol); } 
@override String toString() { return 'TeamsDevicesDefaultDeviceSettingsPolicy(allowModeSwitch: $allowModeSwitch, allowUpdates: $allowUpdates, allowedToLeave: $allowedToLeave, autoConnect: $autoConnect, captivePortal: $captivePortal, \$default: ${$default}, disableAutoFallback: $disableAutoFallback, enabled: $enabled, exclude: $exclude, excludeOfficeIps: $excludeOfficeIps, fallbackDomains: $fallbackDomains, gatewayUniqueId: $gatewayUniqueId, include: $include, registerInterfaceIpWithDns: $registerInterfaceIpWithDns, sccmVpnBoundarySupport: $sccmVpnBoundarySupport, serviceModeV2: $serviceModeV2, supportUrl: $supportUrl, switchLocked: $switchLocked, tunnelProtocol: $tunnelProtocol)'; } 
 }
