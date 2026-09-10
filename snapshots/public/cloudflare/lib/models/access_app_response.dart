// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'app_launcher_application2.dart';import 'bookmark_application2.dart';import 'browser_isolation_permissions_application2.dart';import 'browser_rdp_application2.dart';import 'browser_ssh_application2.dart';import 'browser_vnc_application2.dart';import 'device_enrollment_permissions_application2.dart';import 'gateway_identity_proxy_endpoint_application2.dart';import 'infrastructure_application2.dart';import 'mcp_server_application2.dart';import 'mcp_server_portal_application2.dart';import 'saa_s_application2.dart';import 'self_hosted_application2.dart';
@immutable
final class AccessAppResponse {
  const AccessAppResponse({this.selfHostedApplication2 = const Omittable.absent(),
this.saaSApplication2 = const Omittable.absent(),
this.browserSshApplication2 = const Omittable.absent(),
this.browserVncApplication2 = const Omittable.absent(),
this.appLauncherApplication2 = const Omittable.absent(),
this.deviceEnrollmentPermissionsApplication2 = const Omittable.absent(),
this.browserIsolationPermissionsApplication2 = const Omittable.absent(),
this.gatewayIdentityProxyEndpointApplication2 = const Omittable.absent(),
this.bookmarkApplication2 = const Omittable.absent(),
this.infrastructureApplication2 = const Omittable.absent(),
this.browserRdpApplication2 = const Omittable.absent(),
this.mcpServerApplication2 = const Omittable.absent(),
this.mcpServerPortalApplication2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessAppResponse._({required this.rawValue, required this.selfHostedApplication2,
required this.saaSApplication2,
required this.browserSshApplication2,
required this.browserVncApplication2,
required this.appLauncherApplication2,
required this.deviceEnrollmentPermissionsApplication2,
required this.browserIsolationPermissionsApplication2,
required this.gatewayIdentityProxyEndpointApplication2,
required this.bookmarkApplication2,
required this.infrastructureApplication2,
required this.browserRdpApplication2,
required this.mcpServerApplication2,
required this.mcpServerPortalApplication2,});
  factory AccessAppResponse.fromJson(Object? json) => AccessAppResponse._(
    rawValue: Omittable(json),
    selfHostedApplication2: parseAnyOfVariant<SelfHostedApplication2>(json, (value) => SelfHostedApplication2.fromJson(value! as Map<String, dynamic>)),
saaSApplication2: parseAnyOfVariant<SaaSApplication2>(json, (value) => SaaSApplication2.fromJson(value! as Map<String, dynamic>)),
browserSshApplication2: parseAnyOfVariant<BrowserSshApplication2>(json, (value) => BrowserSshApplication2.fromJson(value! as Map<String, dynamic>)),
browserVncApplication2: parseAnyOfVariant<BrowserVncApplication2>(json, (value) => BrowserVncApplication2.fromJson(value! as Map<String, dynamic>)),
appLauncherApplication2: parseAnyOfVariant<AppLauncherApplication2>(json, (value) => AppLauncherApplication2.fromJson(value! as Map<String, dynamic>)),
deviceEnrollmentPermissionsApplication2: parseAnyOfVariant<DeviceEnrollmentPermissionsApplication2>(json, (value) => DeviceEnrollmentPermissionsApplication2.fromJson(value! as Map<String, dynamic>)),
browserIsolationPermissionsApplication2: parseAnyOfVariant<BrowserIsolationPermissionsApplication2>(json, (value) => BrowserIsolationPermissionsApplication2.fromJson(value! as Map<String, dynamic>)),
gatewayIdentityProxyEndpointApplication2: parseAnyOfVariant<GatewayIdentityProxyEndpointApplication2>(json, (value) => GatewayIdentityProxyEndpointApplication2.fromJson(value! as Map<String, dynamic>)),
bookmarkApplication2: parseAnyOfVariant<BookmarkApplication2>(json, (value) => BookmarkApplication2.fromJson(value! as Map<String, dynamic>)),
infrastructureApplication2: parseAnyOfVariant<InfrastructureApplication2>(json, (value) => InfrastructureApplication2.fromJson(value! as Map<String, dynamic>)),
browserRdpApplication2: parseAnyOfVariant<BrowserRdpApplication2>(json, (value) => BrowserRdpApplication2.fromJson(value! as Map<String, dynamic>)),
mcpServerApplication2: parseAnyOfVariant<McpServerApplication2>(json, (value) => McpServerApplication2.fromJson(value! as Map<String, dynamic>)),
mcpServerPortalApplication2: parseAnyOfVariant<McpServerPortalApplication2>(json, (value) => McpServerPortalApplication2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SelfHostedApplication2> selfHostedApplication2;
final Omittable<SaaSApplication2> saaSApplication2;
final Omittable<BrowserSshApplication2> browserSshApplication2;
final Omittable<BrowserVncApplication2> browserVncApplication2;
final Omittable<AppLauncherApplication2> appLauncherApplication2;
final Omittable<DeviceEnrollmentPermissionsApplication2> deviceEnrollmentPermissionsApplication2;
final Omittable<BrowserIsolationPermissionsApplication2> browserIsolationPermissionsApplication2;
final Omittable<GatewayIdentityProxyEndpointApplication2> gatewayIdentityProxyEndpointApplication2;
final Omittable<BookmarkApplication2> bookmarkApplication2;
final Omittable<InfrastructureApplication2> infrastructureApplication2;
final Omittable<BrowserRdpApplication2> browserRdpApplication2;
final Omittable<McpServerApplication2> mcpServerApplication2;
final Omittable<McpServerPortalApplication2> mcpServerPortalApplication2;

  /// Whether at least one known variant matched.
  bool get isValid => selfHostedApplication2.isPresent || saaSApplication2.isPresent || browserSshApplication2.isPresent || browserVncApplication2.isPresent || appLauncherApplication2.isPresent || deviceEnrollmentPermissionsApplication2.isPresent || browserIsolationPermissionsApplication2.isPresent || gatewayIdentityProxyEndpointApplication2.isPresent || bookmarkApplication2.isPresent || infrastructureApplication2.isPresent || browserRdpApplication2.isPresent || mcpServerApplication2.isPresent || mcpServerPortalApplication2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (selfHostedApplication2.isPresent) selfHostedApplication2.value?.toJson(),
if (saaSApplication2.isPresent) saaSApplication2.value?.toJson(),
if (browserSshApplication2.isPresent) browserSshApplication2.value?.toJson(),
if (browserVncApplication2.isPresent) browserVncApplication2.value?.toJson(),
if (appLauncherApplication2.isPresent) appLauncherApplication2.value?.toJson(),
if (deviceEnrollmentPermissionsApplication2.isPresent) deviceEnrollmentPermissionsApplication2.value?.toJson(),
if (browserIsolationPermissionsApplication2.isPresent) browserIsolationPermissionsApplication2.value?.toJson(),
if (gatewayIdentityProxyEndpointApplication2.isPresent) gatewayIdentityProxyEndpointApplication2.value?.toJson(),
if (bookmarkApplication2.isPresent) bookmarkApplication2.value?.toJson(),
if (infrastructureApplication2.isPresent) infrastructureApplication2.value?.toJson(),
if (browserRdpApplication2.isPresent) browserRdpApplication2.value?.toJson(),
if (mcpServerApplication2.isPresent) mcpServerApplication2.value?.toJson(),
if (mcpServerPortalApplication2.isPresent) mcpServerPortalApplication2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessAppResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessAppResponse(${toJson()})';
}
