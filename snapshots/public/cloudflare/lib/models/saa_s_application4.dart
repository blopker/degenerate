// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_launcher_visible.dart';import 'access_app_policy_link.dart';import 'access_apps_components_schemas_name.dart';import 'access_logo_url.dart';import 'access_oidc_saas_app.dart';import 'access_saml_saas_app.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_uuid.dart';import 'access_scim_config.dart';import 'access_type.dart';import 'saa_s_application4_policies.dart';import 'saa_s_application4_policies_variant3.dart';import 'saa_s_application4_saas_app.dart';@immutable final class SaaSApplication4 {const SaaSApplication4({this.allowedIdps, this.appLauncherVisible, this.autoRedirectToIdentity, this.customPages, this.logoUrl, this.name, this.saasApp, this.scimConfig, this.tags, this.type, this.policies, });

factory SaaSApplication4.fromJson(Map<String, dynamic> json) { return SaaSApplication4(
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  appLauncherVisible: json['app_launcher_visible'] != null ? AccessAppLauncherVisible.fromJson(json['app_launcher_visible'] as bool) : null,
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  customPages: (json['custom_pages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  saasApp: json['saas_app'] != null ? OneOf2.parse(json['saas_app'], fromA: (v) => AccessSamlSaasApp.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessOidcSaasApp.fromJson(v as Map<String, dynamic>),) : null,
  scimConfig: json['scim_config'] != null ? AccessScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: json['type'] != null ? AccessType.fromJson(json['type'] as String) : null,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => AccessAppPolicyLink.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasUuid.fromJson(v as String), fromC: (v) => SaaSApplication4PoliciesVariant3.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// Displays the application in the App Launcher.
final AccessAppLauncherVisible? appLauncherVisible;

/// When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

/// The custom pages that will be displayed when applicable for this application
final List<String>? customPages;

/// The image URL for the logo shown in the App Launcher dashboard.
final AccessLogoUrl? logoUrl;

/// The name of the application.
final AccessAppsComponentsSchemasName? name;

final SaaSApplication4SaasApp? saasApp;

final AccessScimConfig? scimConfig;

/// The tags you want assigned to an application. Tags are used to filter applications in the App Launcher dashboard.
final List<String>? tags;

/// The application type.
final AccessType? type;

/// The policies that Access applies to the application, in ascending order of precedence. Items can reference existing policies or create new policies exclusive to the application.
final List<SaaSApplication4Policies>? policies;

Map<String, dynamic> toJson() { return {
  'allowed_idps': ?allowedIdps,
  if (appLauncherVisible != null) 'app_launcher_visible': appLauncherVisible?.toJson(),
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  'custom_pages': ?customPages,
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (saasApp != null) 'saas_app': saasApp?.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  'tags': ?tags,
  if (type != null) 'type': type?.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowed_idps', 'app_launcher_visible', 'auto_redirect_to_identity', 'custom_pages', 'logo_url', 'name', 'saas_app', 'scim_config', 'tags', 'type', 'policies'}.contains(key)); } 
SaaSApplication4 copyWith({List<String>? Function()? allowedIdps, AccessAppLauncherVisible? Function()? appLauncherVisible, AccessSchemasAutoRedirectToIdentity? Function()? autoRedirectToIdentity, List<String>? Function()? customPages, AccessLogoUrl? Function()? logoUrl, AccessAppsComponentsSchemasName? Function()? name, SaaSApplication4SaasApp? Function()? saasApp, AccessScimConfig? Function()? scimConfig, List<String>? Function()? tags, AccessType? Function()? type, List<SaaSApplication4Policies>? Function()? policies, }) { return SaaSApplication4(
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  appLauncherVisible: appLauncherVisible != null ? appLauncherVisible() : this.appLauncherVisible,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  customPages: customPages != null ? customPages() : this.customPages,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  name: name != null ? name() : this.name,
  saasApp: saasApp != null ? saasApp() : this.saasApp,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  tags: tags != null ? tags() : this.tags,
  type: type != null ? type() : this.type,
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SaaSApplication4 &&
          listEquals(allowedIdps, other.allowedIdps) &&
          appLauncherVisible == other.appLauncherVisible &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          listEquals(customPages, other.customPages) &&
          logoUrl == other.logoUrl &&
          name == other.name &&
          saasApp == other.saasApp &&
          scimConfig == other.scimConfig &&
          listEquals(tags, other.tags) &&
          type == other.type &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedIdps ?? const []), appLauncherVisible, autoRedirectToIdentity, Object.hashAll(customPages ?? const []), logoUrl, name, saasApp, scimConfig, Object.hashAll(tags ?? const []), type, Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'SaaSApplication4(allowedIdps: $allowedIdps, appLauncherVisible: $appLauncherVisible, autoRedirectToIdentity: $autoRedirectToIdentity, customPages: $customPages, logoUrl: $logoUrl, name: $name, saasApp: $saasApp, scimConfig: $scimConfig, tags: $tags, type: $type, policies: $policies)'; } 
 }
