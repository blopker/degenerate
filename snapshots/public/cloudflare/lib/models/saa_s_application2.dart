// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_launcher_visible.dart';import 'access_app_policy_response.dart';import 'access_apps_components_schemas_name.dart';import 'access_logo_url.dart';import 'access_oidc_saas_app.dart';import 'access_saml_saas_app.dart';import 'access_schemas_aud.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_scim_config.dart';import 'access_timestamp.dart';import 'access_type.dart';import 'access_uuid.dart';import 'saa_s_application2_saas_app.dart';/// The policies that Access applies to the application.
@immutable final class SaaSApplication2 {const SaaSApplication2({this.aud, this.createdAt, this.id, this.updatedAt, this.allowedIdps, this.appLauncherVisible, this.autoRedirectToIdentity, this.customPages, this.logoUrl, this.name, this.saasApp, this.scimConfig, this.tags, this.type, this.policies, });

factory SaaSApplication2.fromJson(Map<String, dynamic> json) { return SaaSApplication2(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
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
  policies: (json['policies'] as List<dynamic>?)?.map((e) => AccessAppPolicyResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessTimestamp? updatedAt;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// Displays the application in the App Launcher.
final AccessAppLauncherVisible? appLauncherVisible;

final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final List<String>? customPages;

final AccessLogoUrl? logoUrl;

final AccessAppsComponentsSchemasName? name;

final SaaSApplication2SaasApp? saasApp;

final AccessScimConfig? scimConfig;

final List<String>? tags;

final AccessType? type;

final List<AccessAppPolicyResponse>? policies;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'aud', 'created_at', 'id', 'updated_at', 'allowed_idps', 'app_launcher_visible', 'auto_redirect_to_identity', 'custom_pages', 'logo_url', 'name', 'saas_app', 'scim_config', 'tags', 'type', 'policies'}.contains(key)); } 
SaaSApplication2 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessTimestamp Function()? updatedAt, List<String> Function()? allowedIdps, AccessAppLauncherVisible Function()? appLauncherVisible, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, List<String> Function()? customPages, AccessLogoUrl Function()? logoUrl, AccessAppsComponentsSchemasName Function()? name, SaaSApplication2SaasApp Function()? saasApp, AccessScimConfig Function()? scimConfig, List<String> Function()? tags, AccessType Function()? type, List<AccessAppPolicyResponse> Function()? policies, }) { return SaaSApplication2(
  aud: aud != null ? aud() : this.aud,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
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
      other is SaaSApplication2 &&
          aud == other.aud &&
          createdAt == other.createdAt &&
          id == other.id &&
          updatedAt == other.updatedAt &&
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
@override int get hashCode { return Object.hash(aud, createdAt, id, updatedAt, Object.hashAll(allowedIdps ?? const []), appLauncherVisible, autoRedirectToIdentity, Object.hashAll(customPages ?? const []), logoUrl, name, saasApp, scimConfig, Object.hashAll(tags ?? const []), type, Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'SaaSApplication2(aud: $aud, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, allowedIdps: $allowedIdps, appLauncherVisible: $appLauncherVisible, autoRedirectToIdentity: $autoRedirectToIdentity, customPages: $customPages, logoUrl: $logoUrl, name: $name, saasApp: $saasApp, scimConfig: $scimConfig, tags: $tags, type: $type, policies: $policies)'; } 
 }
