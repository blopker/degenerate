// GENERATED CODE - DO NOT MODIFY BY HAND

import 'app_launcher_application.dart';import 'bookmark_application.dart';import 'browser_isolation_permissions_application.dart';import 'browser_rdp_application.dart';import 'browser_ssh_application.dart';import 'browser_vnc_application.dart';import 'device_enrollment_permissions_application.dart';import 'gateway_identity_proxy_endpoint_application.dart';import 'infrastructure_application.dart';import 'mcp_server_application.dart';import 'mcp_server_portal_application.dart';import 'saa_s_application.dart';import 'self_hosted_application.dart';final class AccessAppRequest {const AccessAppRequest({this.selfHostedApplication, this.saaSApplication, this.browserSshApplication, this.browserVncApplication, this.appLauncherApplication, this.deviceEnrollmentPermissionsApplication, this.browserIsolationPermissionsApplication, this.gatewayIdentityProxyEndpointApplication, this.bookmarkApplication, this.infrastructureApplication, this.browserRdpApplication, this.mcpServerApplication, this.mcpServerPortalApplication, });

factory AccessAppRequest.fromJson(Map<String, dynamic> json) { return AccessAppRequest(
  selfHostedApplication: SelfHostedApplication.canParse(json) ? SelfHostedApplication.fromJson(json) : null,
  saaSApplication: SaaSApplication.canParse(json) ? SaaSApplication.fromJson(json) : null,
  browserSshApplication: BrowserSshApplication.canParse(json) ? BrowserSshApplication.fromJson(json) : null,
  browserVncApplication: BrowserVncApplication.canParse(json) ? BrowserVncApplication.fromJson(json) : null,
  appLauncherApplication: AppLauncherApplication.canParse(json) ? AppLauncherApplication.fromJson(json) : null,
  deviceEnrollmentPermissionsApplication: DeviceEnrollmentPermissionsApplication.canParse(json) ? DeviceEnrollmentPermissionsApplication.fromJson(json) : null,
  browserIsolationPermissionsApplication: BrowserIsolationPermissionsApplication.canParse(json) ? BrowserIsolationPermissionsApplication.fromJson(json) : null,
  gatewayIdentityProxyEndpointApplication: GatewayIdentityProxyEndpointApplication.canParse(json) ? GatewayIdentityProxyEndpointApplication.fromJson(json) : null,
  bookmarkApplication: BookmarkApplication.canParse(json) ? BookmarkApplication.fromJson(json) : null,
  infrastructureApplication: InfrastructureApplication.canParse(json) ? InfrastructureApplication.fromJson(json) : null,
  browserRdpApplication: BrowserRdpApplication.canParse(json) ? BrowserRdpApplication.fromJson(json) : null,
  mcpServerApplication: McpServerApplication.canParse(json) ? McpServerApplication.fromJson(json) : null,
  mcpServerPortalApplication: McpServerPortalApplication.canParse(json) ? McpServerPortalApplication.fromJson(json) : null,
); }

final SelfHostedApplication? selfHostedApplication;

final SaaSApplication? saaSApplication;

final BrowserSshApplication? browserSshApplication;

final BrowserVncApplication? browserVncApplication;

final AppLauncherApplication? appLauncherApplication;

final DeviceEnrollmentPermissionsApplication? deviceEnrollmentPermissionsApplication;

final BrowserIsolationPermissionsApplication? browserIsolationPermissionsApplication;

final GatewayIdentityProxyEndpointApplication? gatewayIdentityProxyEndpointApplication;

final BookmarkApplication? bookmarkApplication;

final InfrastructureApplication? infrastructureApplication;

final BrowserRdpApplication? browserRdpApplication;

final McpServerApplication? mcpServerApplication;

final McpServerPortalApplication? mcpServerPortalApplication;

/// At least one variant must be present.
bool get isValid { return selfHostedApplication != null || saaSApplication != null || browserSshApplication != null || browserVncApplication != null || appLauncherApplication != null || deviceEnrollmentPermissionsApplication != null || browserIsolationPermissionsApplication != null || gatewayIdentityProxyEndpointApplication != null || bookmarkApplication != null || infrastructureApplication != null || browserRdpApplication != null || mcpServerApplication != null || mcpServerPortalApplication != null; } 
Map<String, dynamic> toJson() { return {
  ...?selfHostedApplication?.toJson(),
  ...?saaSApplication?.toJson(),
  ...?browserSshApplication?.toJson(),
  ...?browserVncApplication?.toJson(),
  ...?appLauncherApplication?.toJson(),
  ...?deviceEnrollmentPermissionsApplication?.toJson(),
  ...?browserIsolationPermissionsApplication?.toJson(),
  ...?gatewayIdentityProxyEndpointApplication?.toJson(),
  ...?bookmarkApplication?.toJson(),
  ...?infrastructureApplication?.toJson(),
  ...?browserRdpApplication?.toJson(),
  ...?mcpServerApplication?.toJson(),
  ...?mcpServerPortalApplication?.toJson(),
}; } 
 }
