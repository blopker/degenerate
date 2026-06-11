// GENERATED CODE - DO NOT MODIFY BY HAND

import 'app_launcher_application2.dart';import 'bookmark_application2.dart';import 'browser_isolation_permissions_application2.dart';import 'browser_rdp_application2.dart';import 'browser_ssh_application2.dart';import 'browser_vnc_application2.dart';import 'device_enrollment_permissions_application2.dart';import 'gateway_identity_proxy_endpoint_application2.dart';import 'infrastructure_application2.dart';import 'mcp_server_application2.dart';import 'mcp_server_portal_application2.dart';import 'saa_s_application2.dart';import 'self_hosted_application2.dart';final class AccessAppResponse {const AccessAppResponse({this.selfHostedApplication2, this.saaSApplication2, this.browserSshApplication2, this.browserVncApplication2, this.appLauncherApplication2, this.deviceEnrollmentPermissionsApplication2, this.browserIsolationPermissionsApplication2, this.gatewayIdentityProxyEndpointApplication2, this.bookmarkApplication2, this.infrastructureApplication2, this.browserRdpApplication2, this.mcpServerApplication2, this.mcpServerPortalApplication2, });

factory AccessAppResponse.fromJson(Map<String, dynamic> json) { return AccessAppResponse(
  selfHostedApplication2: SelfHostedApplication2.canParse(json) ? SelfHostedApplication2.fromJson(json) : null,
  saaSApplication2: SaaSApplication2.canParse(json) ? SaaSApplication2.fromJson(json) : null,
  browserSshApplication2: BrowserSshApplication2.canParse(json) ? BrowserSshApplication2.fromJson(json) : null,
  browserVncApplication2: BrowserVncApplication2.canParse(json) ? BrowserVncApplication2.fromJson(json) : null,
  appLauncherApplication2: AppLauncherApplication2.canParse(json) ? AppLauncherApplication2.fromJson(json) : null,
  deviceEnrollmentPermissionsApplication2: DeviceEnrollmentPermissionsApplication2.canParse(json) ? DeviceEnrollmentPermissionsApplication2.fromJson(json) : null,
  browserIsolationPermissionsApplication2: BrowserIsolationPermissionsApplication2.canParse(json) ? BrowserIsolationPermissionsApplication2.fromJson(json) : null,
  gatewayIdentityProxyEndpointApplication2: GatewayIdentityProxyEndpointApplication2.canParse(json) ? GatewayIdentityProxyEndpointApplication2.fromJson(json) : null,
  bookmarkApplication2: BookmarkApplication2.canParse(json) ? BookmarkApplication2.fromJson(json) : null,
  infrastructureApplication2: InfrastructureApplication2.canParse(json) ? InfrastructureApplication2.fromJson(json) : null,
  browserRdpApplication2: BrowserRdpApplication2.canParse(json) ? BrowserRdpApplication2.fromJson(json) : null,
  mcpServerApplication2: McpServerApplication2.canParse(json) ? McpServerApplication2.fromJson(json) : null,
  mcpServerPortalApplication2: McpServerPortalApplication2.canParse(json) ? McpServerPortalApplication2.fromJson(json) : null,
); }

final SelfHostedApplication2? selfHostedApplication2;

final SaaSApplication2? saaSApplication2;

final BrowserSshApplication2? browserSshApplication2;

final BrowserVncApplication2? browserVncApplication2;

final AppLauncherApplication2? appLauncherApplication2;

final DeviceEnrollmentPermissionsApplication2? deviceEnrollmentPermissionsApplication2;

final BrowserIsolationPermissionsApplication2? browserIsolationPermissionsApplication2;

final GatewayIdentityProxyEndpointApplication2? gatewayIdentityProxyEndpointApplication2;

final BookmarkApplication2? bookmarkApplication2;

final InfrastructureApplication2? infrastructureApplication2;

final BrowserRdpApplication2? browserRdpApplication2;

final McpServerApplication2? mcpServerApplication2;

final McpServerPortalApplication2? mcpServerPortalApplication2;

/// At least one variant must be present.
bool get isValid { return selfHostedApplication2 != null || saaSApplication2 != null || browserSshApplication2 != null || browserVncApplication2 != null || appLauncherApplication2 != null || deviceEnrollmentPermissionsApplication2 != null || browserIsolationPermissionsApplication2 != null || gatewayIdentityProxyEndpointApplication2 != null || bookmarkApplication2 != null || infrastructureApplication2 != null || browserRdpApplication2 != null || mcpServerApplication2 != null || mcpServerPortalApplication2 != null; } 
Map<String, dynamic> toJson() { return {
  ...?selfHostedApplication2?.toJson(),
  ...?saaSApplication2?.toJson(),
  ...?browserSshApplication2?.toJson(),
  ...?browserVncApplication2?.toJson(),
  ...?appLauncherApplication2?.toJson(),
  ...?deviceEnrollmentPermissionsApplication2?.toJson(),
  ...?browserIsolationPermissionsApplication2?.toJson(),
  ...?gatewayIdentityProxyEndpointApplication2?.toJson(),
  ...?bookmarkApplication2?.toJson(),
  ...?infrastructureApplication2?.toJson(),
  ...?browserRdpApplication2?.toJson(),
  ...?mcpServerApplication2?.toJson(),
  ...?mcpServerPortalApplication2?.toJson(),
}; } 
 }
