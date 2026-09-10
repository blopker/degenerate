// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'app_launcher_application4.dart';import 'bookmark_application4.dart';import 'browser_isolation_permissions_application4.dart';import 'browser_rdp_application3.dart';import 'browser_ssh_application4.dart';import 'browser_vnc_application4.dart';import 'device_enrollment_permissions_application4.dart';import 'gateway_identity_proxy_endpoint_application3.dart';import 'infrastructure_application3.dart';import 'mcp_server_application3.dart';import 'mcp_server_portal_application3.dart';import 'saa_s_application4.dart';import 'self_hosted_application4.dart';
@immutable
final class AccessAppRequestRequest {
  const AccessAppRequestRequest({this.selfHostedApplication4 = const Omittable.absent(),
this.saaSApplication4 = const Omittable.absent(),
this.browserSshApplication4 = const Omittable.absent(),
this.browserVncApplication4 = const Omittable.absent(),
this.appLauncherApplication4 = const Omittable.absent(),
this.deviceEnrollmentPermissionsApplication4 = const Omittable.absent(),
this.browserIsolationPermissionsApplication4 = const Omittable.absent(),
this.gatewayIdentityProxyEndpointApplication3 = const Omittable.absent(),
this.bookmarkApplication4 = const Omittable.absent(),
this.infrastructureApplication3 = const Omittable.absent(),
this.browserRdpApplication3 = const Omittable.absent(),
this.mcpServerApplication3 = const Omittable.absent(),
this.mcpServerPortalApplication3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessAppRequestRequest._({required this.rawValue, required this.selfHostedApplication4,
required this.saaSApplication4,
required this.browserSshApplication4,
required this.browserVncApplication4,
required this.appLauncherApplication4,
required this.deviceEnrollmentPermissionsApplication4,
required this.browserIsolationPermissionsApplication4,
required this.gatewayIdentityProxyEndpointApplication3,
required this.bookmarkApplication4,
required this.infrastructureApplication3,
required this.browserRdpApplication3,
required this.mcpServerApplication3,
required this.mcpServerPortalApplication3,});
  factory AccessAppRequestRequest.fromJson(Object? json) => AccessAppRequestRequest._(
    rawValue: Omittable(json),
    selfHostedApplication4: parseAnyOfVariant<SelfHostedApplication4>(json, (value) => SelfHostedApplication4.fromJson(value! as Map<String, dynamic>)),
saaSApplication4: parseAnyOfVariant<SaaSApplication4>(json, (value) => SaaSApplication4.fromJson(value! as Map<String, dynamic>)),
browserSshApplication4: parseAnyOfVariant<BrowserSshApplication4>(json, (value) => BrowserSshApplication4.fromJson(value! as Map<String, dynamic>)),
browserVncApplication4: parseAnyOfVariant<BrowserVncApplication4>(json, (value) => BrowserVncApplication4.fromJson(value! as Map<String, dynamic>)),
appLauncherApplication4: parseAnyOfVariant<AppLauncherApplication4>(json, (value) => AppLauncherApplication4.fromJson(value! as Map<String, dynamic>)),
deviceEnrollmentPermissionsApplication4: parseAnyOfVariant<DeviceEnrollmentPermissionsApplication4>(json, (value) => DeviceEnrollmentPermissionsApplication4.fromJson(value! as Map<String, dynamic>)),
browserIsolationPermissionsApplication4: parseAnyOfVariant<BrowserIsolationPermissionsApplication4>(json, (value) => BrowserIsolationPermissionsApplication4.fromJson(value! as Map<String, dynamic>)),
gatewayIdentityProxyEndpointApplication3: parseAnyOfVariant<GatewayIdentityProxyEndpointApplication3>(json, (value) => GatewayIdentityProxyEndpointApplication3.fromJson(value! as Map<String, dynamic>)),
bookmarkApplication4: parseAnyOfVariant<BookmarkApplication4>(json, (value) => BookmarkApplication4.fromJson(value! as Map<String, dynamic>)),
infrastructureApplication3: parseAnyOfVariant<InfrastructureApplication3>(json, (value) => InfrastructureApplication3.fromJson(value! as Map<String, dynamic>)),
browserRdpApplication3: parseAnyOfVariant<BrowserRdpApplication3>(json, (value) => BrowserRdpApplication3.fromJson(value! as Map<String, dynamic>)),
mcpServerApplication3: parseAnyOfVariant<McpServerApplication3>(json, (value) => McpServerApplication3.fromJson(value! as Map<String, dynamic>)),
mcpServerPortalApplication3: parseAnyOfVariant<McpServerPortalApplication3>(json, (value) => McpServerPortalApplication3.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SelfHostedApplication4> selfHostedApplication4;
final Omittable<SaaSApplication4> saaSApplication4;
final Omittable<BrowserSshApplication4> browserSshApplication4;
final Omittable<BrowserVncApplication4> browserVncApplication4;
final Omittable<AppLauncherApplication4> appLauncherApplication4;
final Omittable<DeviceEnrollmentPermissionsApplication4> deviceEnrollmentPermissionsApplication4;
final Omittable<BrowserIsolationPermissionsApplication4> browserIsolationPermissionsApplication4;
final Omittable<GatewayIdentityProxyEndpointApplication3> gatewayIdentityProxyEndpointApplication3;
final Omittable<BookmarkApplication4> bookmarkApplication4;
final Omittable<InfrastructureApplication3> infrastructureApplication3;
final Omittable<BrowserRdpApplication3> browserRdpApplication3;
final Omittable<McpServerApplication3> mcpServerApplication3;
final Omittable<McpServerPortalApplication3> mcpServerPortalApplication3;

  /// Whether at least one known variant matched.
  bool get isValid => selfHostedApplication4.isPresent || saaSApplication4.isPresent || browserSshApplication4.isPresent || browserVncApplication4.isPresent || appLauncherApplication4.isPresent || deviceEnrollmentPermissionsApplication4.isPresent || browserIsolationPermissionsApplication4.isPresent || gatewayIdentityProxyEndpointApplication3.isPresent || bookmarkApplication4.isPresent || infrastructureApplication3.isPresent || browserRdpApplication3.isPresent || mcpServerApplication3.isPresent || mcpServerPortalApplication3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (selfHostedApplication4.isPresent) selfHostedApplication4.value?.toJson(),
if (saaSApplication4.isPresent) saaSApplication4.value?.toJson(),
if (browserSshApplication4.isPresent) browserSshApplication4.value?.toJson(),
if (browserVncApplication4.isPresent) browserVncApplication4.value?.toJson(),
if (appLauncherApplication4.isPresent) appLauncherApplication4.value?.toJson(),
if (deviceEnrollmentPermissionsApplication4.isPresent) deviceEnrollmentPermissionsApplication4.value?.toJson(),
if (browserIsolationPermissionsApplication4.isPresent) browserIsolationPermissionsApplication4.value?.toJson(),
if (gatewayIdentityProxyEndpointApplication3.isPresent) gatewayIdentityProxyEndpointApplication3.value?.toJson(),
if (bookmarkApplication4.isPresent) bookmarkApplication4.value?.toJson(),
if (infrastructureApplication3.isPresent) infrastructureApplication3.value?.toJson(),
if (browserRdpApplication3.isPresent) browserRdpApplication3.value?.toJson(),
if (mcpServerApplication3.isPresent) mcpServerApplication3.value?.toJson(),
if (mcpServerPortalApplication3.isPresent) mcpServerPortalApplication3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessAppRequestRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessAppRequestRequest(${toJson()})';
}
