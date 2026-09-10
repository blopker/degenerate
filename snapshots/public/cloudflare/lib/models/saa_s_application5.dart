// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_launcher_visible.dart';import 'access_apps_components_schemas_name.dart';import 'access_logo_url.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_oidc_saas_app.dart';import 'access_schemas_saml_saas_app.dart';import 'access_schemas_scim_config.dart';import 'access_timestamp.dart';import 'access_uuid.dart';import 'saa_s_application5_saas_app.dart';@immutable final class SaaSApplication5 {const SaaSApplication5({this.createdAt, this.id, this.scimConfig, this.updatedAt, this.allowedIdps, this.appLauncherVisible, this.autoRedirectToIdentity, this.logoUrl, this.name, this.saasApp, this.type, });

factory SaaSApplication5.fromJson(Map<String, dynamic> json) { return SaaSApplication5(
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  scimConfig: json['scim_config'] != null ? AccessSchemasScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  appLauncherVisible: json['app_launcher_visible'] != null ? AccessAppLauncherVisible.fromJson(json['app_launcher_visible'] as bool) : null,
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  saasApp: json['saas_app'] != null ? OneOf2.parse(json['saas_app'], fromA: (v) => AccessSchemasSamlSaasApp.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasOidcSaasApp.fromJson(v as Map<String, dynamic>),) : null,
  type: json['type'] as String?,
); }

final AccessTimestamp? createdAt;

/// UUID.
final AccessUuid? id;

final AccessSchemasScimConfig? scimConfig;

final AccessTimestamp? updatedAt;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// Displays the application in the App Launcher.
final AccessAppLauncherVisible? appLauncherVisible;

/// When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

/// The image URL for the logo shown in the App Launcher dashboard.
final AccessLogoUrl? logoUrl;

/// The name of the application.
final AccessAppsComponentsSchemasName? name;

final SaaSApplication5SaasApp? saasApp;

/// The application type.
final String? type;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  'allowed_idps': ?allowedIdps,
  if (appLauncherVisible != null) 'app_launcher_visible': appLauncherVisible?.toJson(),
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (saasApp != null) 'saas_app': saasApp?.toJson(),
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'id', 'scim_config', 'updated_at', 'allowed_idps', 'app_launcher_visible', 'auto_redirect_to_identity', 'logo_url', 'name', 'saas_app', 'type'}.contains(key)); } 
SaaSApplication5 copyWith({AccessTimestamp? Function()? createdAt, AccessUuid? Function()? id, AccessSchemasScimConfig? Function()? scimConfig, AccessTimestamp? Function()? updatedAt, List<String>? Function()? allowedIdps, AccessAppLauncherVisible? Function()? appLauncherVisible, AccessSchemasAutoRedirectToIdentity? Function()? autoRedirectToIdentity, AccessLogoUrl? Function()? logoUrl, AccessAppsComponentsSchemasName? Function()? name, SaaSApplication5SaasApp? Function()? saasApp, String? Function()? type, }) { return SaaSApplication5(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  appLauncherVisible: appLauncherVisible != null ? appLauncherVisible() : this.appLauncherVisible,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  name: name != null ? name() : this.name,
  saasApp: saasApp != null ? saasApp() : this.saasApp,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SaaSApplication5 &&
          createdAt == other.createdAt &&
          id == other.id &&
          scimConfig == other.scimConfig &&
          updatedAt == other.updatedAt &&
          listEquals(allowedIdps, other.allowedIdps) &&
          appLauncherVisible == other.appLauncherVisible &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          logoUrl == other.logoUrl &&
          name == other.name &&
          saasApp == other.saasApp &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdAt, id, scimConfig, updatedAt, Object.hashAll(allowedIdps ?? const []), appLauncherVisible, autoRedirectToIdentity, logoUrl, name, saasApp, type); } 
@override String toString() { return 'SaaSApplication5(createdAt: $createdAt, id: $id, scimConfig: $scimConfig, updatedAt: $updatedAt, allowedIdps: $allowedIdps, appLauncherVisible: $appLauncherVisible, autoRedirectToIdentity: $autoRedirectToIdentity, logoUrl: $logoUrl, name: $name, saasApp: $saasApp, type: $type)'; } 
 }
