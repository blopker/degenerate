// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'app_launcher_application.dart';import 'bookmark_application.dart';import 'browser_isolation_permissions_application.dart';import 'browser_rdp_application.dart';import 'browser_ssh_application.dart';import 'browser_vnc_application.dart';import 'device_enrollment_permissions_application.dart';import 'gateway_identity_proxy_endpoint_application.dart';import 'infrastructure_application.dart';import 'mcp_server_application.dart';import 'mcp_server_portal_application.dart';import 'saa_s_application.dart';import 'self_hosted_application.dart';
@immutable
final class AccessAppRequest {
  const AccessAppRequest({this.selfHostedApplication = const Omittable.absent(),
this.saaSApplication = const Omittable.absent(),
this.browserSshApplication = const Omittable.absent(),
this.browserVncApplication = const Omittable.absent(),
this.appLauncherApplication = const Omittable.absent(),
this.deviceEnrollmentPermissionsApplication = const Omittable.absent(),
this.browserIsolationPermissionsApplication = const Omittable.absent(),
this.gatewayIdentityProxyEndpointApplication = const Omittable.absent(),
this.bookmarkApplication = const Omittable.absent(),
this.infrastructureApplication = const Omittable.absent(),
this.browserRdpApplication = const Omittable.absent(),
this.mcpServerApplication = const Omittable.absent(),
this.mcpServerPortalApplication = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessAppRequest._({required this.rawValue, required this.selfHostedApplication,
required this.saaSApplication,
required this.browserSshApplication,
required this.browserVncApplication,
required this.appLauncherApplication,
required this.deviceEnrollmentPermissionsApplication,
required this.browserIsolationPermissionsApplication,
required this.gatewayIdentityProxyEndpointApplication,
required this.bookmarkApplication,
required this.infrastructureApplication,
required this.browserRdpApplication,
required this.mcpServerApplication,
required this.mcpServerPortalApplication,});
  factory AccessAppRequest.fromJson(Object? json) => AccessAppRequest._(
    rawValue: Omittable(json),
    selfHostedApplication: parseAnyOfVariant<SelfHostedApplication>(json, (value) => SelfHostedApplication.fromJson(value! as Map<String, dynamic>)),
saaSApplication: parseAnyOfVariant<SaaSApplication>(json, (value) => SaaSApplication.fromJson(value! as Map<String, dynamic>)),
browserSshApplication: parseAnyOfVariant<BrowserSshApplication>(json, (value) => BrowserSshApplication.fromJson(value! as Map<String, dynamic>)),
browserVncApplication: parseAnyOfVariant<BrowserVncApplication>(json, (value) => BrowserVncApplication.fromJson(value! as Map<String, dynamic>)),
appLauncherApplication: parseAnyOfVariant<AppLauncherApplication>(json, (value) => AppLauncherApplication.fromJson(value! as Map<String, dynamic>)),
deviceEnrollmentPermissionsApplication: parseAnyOfVariant<DeviceEnrollmentPermissionsApplication>(json, (value) => DeviceEnrollmentPermissionsApplication.fromJson(value! as Map<String, dynamic>)),
browserIsolationPermissionsApplication: parseAnyOfVariant<BrowserIsolationPermissionsApplication>(json, (value) => BrowserIsolationPermissionsApplication.fromJson(value! as Map<String, dynamic>)),
gatewayIdentityProxyEndpointApplication: parseAnyOfVariant<GatewayIdentityProxyEndpointApplication>(json, (value) => GatewayIdentityProxyEndpointApplication.fromJson(value! as Map<String, dynamic>)),
bookmarkApplication: parseAnyOfVariant<BookmarkApplication>(json, (value) => BookmarkApplication.fromJson(value! as Map<String, dynamic>)),
infrastructureApplication: parseAnyOfVariant<InfrastructureApplication>(json, (value) => InfrastructureApplication.fromJson(value! as Map<String, dynamic>)),
browserRdpApplication: parseAnyOfVariant<BrowserRdpApplication>(json, (value) => BrowserRdpApplication.fromJson(value! as Map<String, dynamic>)),
mcpServerApplication: parseAnyOfVariant<McpServerApplication>(json, (value) => McpServerApplication.fromJson(value! as Map<String, dynamic>)),
mcpServerPortalApplication: parseAnyOfVariant<McpServerPortalApplication>(json, (value) => McpServerPortalApplication.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SelfHostedApplication> selfHostedApplication;
final Omittable<SaaSApplication> saaSApplication;
final Omittable<BrowserSshApplication> browserSshApplication;
final Omittable<BrowserVncApplication> browserVncApplication;
final Omittable<AppLauncherApplication> appLauncherApplication;
final Omittable<DeviceEnrollmentPermissionsApplication> deviceEnrollmentPermissionsApplication;
final Omittable<BrowserIsolationPermissionsApplication> browserIsolationPermissionsApplication;
final Omittable<GatewayIdentityProxyEndpointApplication> gatewayIdentityProxyEndpointApplication;
final Omittable<BookmarkApplication> bookmarkApplication;
final Omittable<InfrastructureApplication> infrastructureApplication;
final Omittable<BrowserRdpApplication> browserRdpApplication;
final Omittable<McpServerApplication> mcpServerApplication;
final Omittable<McpServerPortalApplication> mcpServerPortalApplication;

  /// Whether at least one known variant matched.
  bool get isValid => selfHostedApplication.isPresent || saaSApplication.isPresent || browserSshApplication.isPresent || browserVncApplication.isPresent || appLauncherApplication.isPresent || deviceEnrollmentPermissionsApplication.isPresent || browserIsolationPermissionsApplication.isPresent || gatewayIdentityProxyEndpointApplication.isPresent || bookmarkApplication.isPresent || infrastructureApplication.isPresent || browserRdpApplication.isPresent || mcpServerApplication.isPresent || mcpServerPortalApplication.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (selfHostedApplication.isPresent) selfHostedApplication.value?.toJson(),
if (saaSApplication.isPresent) saaSApplication.value?.toJson(),
if (browserSshApplication.isPresent) browserSshApplication.value?.toJson(),
if (browserVncApplication.isPresent) browserVncApplication.value?.toJson(),
if (appLauncherApplication.isPresent) appLauncherApplication.value?.toJson(),
if (deviceEnrollmentPermissionsApplication.isPresent) deviceEnrollmentPermissionsApplication.value?.toJson(),
if (browserIsolationPermissionsApplication.isPresent) browserIsolationPermissionsApplication.value?.toJson(),
if (gatewayIdentityProxyEndpointApplication.isPresent) gatewayIdentityProxyEndpointApplication.value?.toJson(),
if (bookmarkApplication.isPresent) bookmarkApplication.value?.toJson(),
if (infrastructureApplication.isPresent) infrastructureApplication.value?.toJson(),
if (browserRdpApplication.isPresent) browserRdpApplication.value?.toJson(),
if (mcpServerApplication.isPresent) mcpServerApplication.value?.toJson(),
if (mcpServerPortalApplication.isPresent) mcpServerPortalApplication.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessAppRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessAppRequest(${toJson()})';
}
