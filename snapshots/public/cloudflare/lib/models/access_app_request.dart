// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_app_launcher_props.dart';import 'access_bookmark_props.dart';import 'access_feature_app_props.dart';import 'access_infra_props.dart';import 'access_mcp_portal_props.dart';import 'access_mcp_props.dart';import 'access_rdp_props.dart';import 'access_saas_props.dart';import 'access_self_hosted_props.dart';final class AccessAppRequest {const AccessAppRequest({this.accessSelfHostedProps, this.accessSaasProps, this.accessAppLauncherProps, this.accessFeatureAppProps, this.accessBookmarkProps, this.accessInfraProps, this.accessRdpProps, this.accessMcpProps, this.accessMcpPortalProps, });

factory AccessAppRequest.fromJson(Map<String, dynamic> json) { return AccessAppRequest(
  accessSelfHostedProps: AccessSelfHostedProps.canParse(json) ? AccessSelfHostedProps.fromJson(json) : null,
  accessSaasProps: AccessSaasProps.canParse(json) ? AccessSaasProps.fromJson(json) : null,
  accessAppLauncherProps: AccessAppLauncherProps.canParse(json) ? AccessAppLauncherProps.fromJson(json) : null,
  accessFeatureAppProps: AccessFeatureAppProps.canParse(json) ? AccessFeatureAppProps.fromJson(json) : null,
  accessBookmarkProps: AccessBookmarkProps.canParse(json) ? AccessBookmarkProps.fromJson(json) : null,
  accessInfraProps: AccessInfraProps.canParse(json) ? AccessInfraProps.fromJson(json) : null,
  accessRdpProps: AccessRdpProps.canParse(json) ? AccessRdpProps.fromJson(json) : null,
  accessMcpProps: AccessMcpProps.canParse(json) ? AccessMcpProps.fromJson(json) : null,
  accessMcpPortalProps: AccessMcpPortalProps.canParse(json) ? AccessMcpPortalProps.fromJson(json) : null,
); }

final AccessSelfHostedProps? accessSelfHostedProps;

final AccessSaasProps? accessSaasProps;

final AccessAppLauncherProps? accessAppLauncherProps;

final AccessFeatureAppProps? accessFeatureAppProps;

final AccessBookmarkProps? accessBookmarkProps;

final AccessInfraProps? accessInfraProps;

final AccessRdpProps? accessRdpProps;

final AccessMcpProps? accessMcpProps;

final AccessMcpPortalProps? accessMcpPortalProps;

/// At least one variant must be present.
bool get isValid { return accessSelfHostedProps != null || accessSaasProps != null || accessAppLauncherProps != null || accessFeatureAppProps != null || accessBookmarkProps != null || accessInfraProps != null || accessRdpProps != null || accessMcpProps != null || accessMcpPortalProps != null; } 
Map<String, dynamic> toJson() { return {
  ...?accessSelfHostedProps?.toJson(),
  ...?accessSaasProps?.toJson(),
  ...?accessAppLauncherProps?.toJson(),
  ...?accessFeatureAppProps?.toJson(),
  ...?accessBookmarkProps?.toJson(),
  ...?accessInfraProps?.toJson(),
  ...?accessRdpProps?.toJson(),
  ...?accessMcpProps?.toJson(),
  ...?accessMcpPortalProps?.toJson(),
}; } 
 }
