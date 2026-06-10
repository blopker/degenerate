// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_launcher_visible.dart';import 'access_apps_components_schemas_name.dart';import 'access_logo_url.dart';import 'access_schemas_aud.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_oidc_saas_app.dart';import 'access_schemas_saml_saas_app.dart';import 'access_schemas_scim_config.dart';import 'access_timestamp.dart';import 'access_uuid.dart';import 'saa_s_application3_saas_app.dart';@immutable final class SaaSApplication3 {const SaaSApplication3({this.aud, this.createdAt, this.id, this.scimConfig, this.updatedAt, this.allowedIdps, this.appLauncherVisible, this.autoRedirectToIdentity, this.logoUrl, this.name, this.saasApp, this.type, });

factory SaaSApplication3.fromJson(Map<String, dynamic> json) { return SaaSApplication3(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
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

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessSchemasScimConfig? scimConfig;

final AccessTimestamp? updatedAt;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// Displays the application in the App Launcher.
final AccessAppLauncherVisible? appLauncherVisible;

final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final AccessLogoUrl? logoUrl;

final AccessAppsComponentsSchemasName? name;

final SaaSApplication3SaasApp? saasApp;

/// The application type.
final String? type;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'aud', 'created_at', 'id', 'scim_config', 'updated_at', 'allowed_idps', 'app_launcher_visible', 'auto_redirect_to_identity', 'logo_url', 'name', 'saas_app', 'type'}.contains(key)); } 
SaaSApplication3 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessSchemasScimConfig Function()? scimConfig, AccessTimestamp Function()? updatedAt, List<String> Function()? allowedIdps, AccessAppLauncherVisible Function()? appLauncherVisible, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, AccessLogoUrl Function()? logoUrl, AccessAppsComponentsSchemasName Function()? name, SaaSApplication3SaasApp Function()? saasApp, String Function()? type, }) { return SaaSApplication3(
  aud: aud != null ? aud() : this.aud,
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
      other is SaaSApplication3 &&
          aud == other.aud &&
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
@override int get hashCode { return Object.hash(aud, createdAt, id, scimConfig, updatedAt, Object.hashAll(allowedIdps ?? const []), appLauncherVisible, autoRedirectToIdentity, logoUrl, name, saasApp, type); } 
@override String toString() { return 'SaaSApplication3(aud: $aud, createdAt: $createdAt, id: $id, scimConfig: $scimConfig, updatedAt: $updatedAt, allowedIdps: $allowedIdps, appLauncherVisible: $appLauncherVisible, autoRedirectToIdentity: $autoRedirectToIdentity, logoUrl: $logoUrl, name: $name, saasApp: $saasApp, type: $type)'; } 
 }
