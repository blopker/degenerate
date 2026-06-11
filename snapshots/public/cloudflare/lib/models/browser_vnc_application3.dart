// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_allow_iframe.dart';import 'access_app_launcher_visible.dart';import 'access_apps_components_schemas_name.dart';import 'access_apps_components_schemas_session_duration.dart';import 'access_components_schemas_domain.dart';import 'access_custom_deny_message.dart';import 'access_enable_binding_cookie.dart';import 'access_http_only_cookie_attribute.dart';import 'access_logo_url.dart';import 'access_same_site_cookie_attribute.dart';import 'access_schemas_aud.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_cors_headers.dart';import 'access_schemas_custom_deny_url.dart';import 'access_schemas_options_preflight_bypass.dart';import 'access_schemas_scim_config.dart';import 'access_service_auth401_redirect.dart';import 'access_skip_interstitial.dart';import 'access_timestamp.dart';import 'access_use_clientless_isolation_app_launcher_url.dart';import 'access_uuid.dart';@immutable final class BrowserVncApplication3 {const BrowserVncApplication3({required this.domain, required this.type, this.aud, this.createdAt, this.id, this.scimConfig, this.updatedAt, this.allowIframe, this.allowedIdps, this.appLauncherVisible, this.autoRedirectToIdentity, this.corsHeaders, this.customDenyMessage, this.customDenyUrl, this.enableBindingCookie, this.httpOnlyCookieAttribute, this.logoUrl, this.name, this.optionsPreflightBypass, this.sameSiteCookieAttribute, this.serviceAuth401Redirect, this.sessionDuration, this.skipInterstitial, this.useClientlessIsolationAppLauncherUrl, });

factory BrowserVncApplication3.fromJson(Map<String, dynamic> json) { return BrowserVncApplication3(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  scimConfig: json['scim_config'] != null ? AccessSchemasScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  allowIframe: json['allow_iframe'] != null ? AccessAllowIframe.fromJson(json['allow_iframe'] as bool) : null,
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  appLauncherVisible: json['app_launcher_visible'] != null ? AccessAppLauncherVisible.fromJson(json['app_launcher_visible'] as bool) : null,
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  corsHeaders: json['cors_headers'] != null ? AccessSchemasCorsHeaders.fromJson(json['cors_headers'] as Map<String, dynamic>) : null,
  customDenyMessage: json['custom_deny_message'] != null ? AccessCustomDenyMessage.fromJson(json['custom_deny_message'] as String) : null,
  customDenyUrl: json['custom_deny_url'] != null ? AccessSchemasCustomDenyUrl.fromJson(json['custom_deny_url'] as String) : null,
  domain: AccessComponentsSchemasDomain.fromJson(json['domain'] as String),
  enableBindingCookie: json['enable_binding_cookie'] != null ? AccessEnableBindingCookie.fromJson(json['enable_binding_cookie'] as bool) : null,
  httpOnlyCookieAttribute: json['http_only_cookie_attribute'] != null ? AccessHttpOnlyCookieAttribute.fromJson(json['http_only_cookie_attribute'] as bool) : null,
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  optionsPreflightBypass: json['options_preflight_bypass'] != null ? AccessSchemasOptionsPreflightBypass.fromJson(json['options_preflight_bypass'] as bool) : null,
  sameSiteCookieAttribute: json['same_site_cookie_attribute'] != null ? AccessSameSiteCookieAttribute.fromJson(json['same_site_cookie_attribute'] as String) : null,
  serviceAuth401Redirect: json['service_auth_401_redirect'] != null ? AccessServiceAuth401Redirect.fromJson(json['service_auth_401_redirect'] as bool) : null,
  sessionDuration: json['session_duration'] != null ? AccessAppsComponentsSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  skipInterstitial: json['skip_interstitial'] != null ? AccessSkipInterstitial.fromJson(json['skip_interstitial'] as bool) : null,
  type: json['type'] as String,
  useClientlessIsolationAppLauncherUrl: json['use_clientless_isolation_app_launcher_url'] != null ? AccessUseClientlessIsolationAppLauncherUrl.fromJson(json['use_clientless_isolation_app_launcher_url'] as bool) : null,
); }

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessSchemasScimConfig? scimConfig;

final AccessTimestamp? updatedAt;

/// Enables loading application content in an iFrame.
final AccessAllowIframe? allowIframe;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// Displays the application in the App Launcher.
final AccessAppLauncherVisible? appLauncherVisible;

final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final AccessSchemasCorsHeaders? corsHeaders;

final AccessCustomDenyMessage? customDenyMessage;

final AccessSchemasCustomDenyUrl? customDenyUrl;

final AccessComponentsSchemasDomain domain;

final AccessEnableBindingCookie? enableBindingCookie;

final AccessHttpOnlyCookieAttribute? httpOnlyCookieAttribute;

final AccessLogoUrl? logoUrl;

final AccessAppsComponentsSchemasName? name;

final AccessSchemasOptionsPreflightBypass? optionsPreflightBypass;

final AccessSameSiteCookieAttribute? sameSiteCookieAttribute;

final AccessServiceAuth401Redirect? serviceAuth401Redirect;

final AccessAppsComponentsSchemasSessionDuration? sessionDuration;

final AccessSkipInterstitial? skipInterstitial;

/// The application type.
final String type;

final AccessUseClientlessIsolationAppLauncherUrl? useClientlessIsolationAppLauncherUrl;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (allowIframe != null) 'allow_iframe': allowIframe?.toJson(),
  'allowed_idps': ?allowedIdps,
  if (appLauncherVisible != null) 'app_launcher_visible': appLauncherVisible?.toJson(),
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (corsHeaders != null) 'cors_headers': corsHeaders?.toJson(),
  if (customDenyMessage != null) 'custom_deny_message': customDenyMessage?.toJson(),
  if (customDenyUrl != null) 'custom_deny_url': customDenyUrl?.toJson(),
  'domain': domain.toJson(),
  if (enableBindingCookie != null) 'enable_binding_cookie': enableBindingCookie?.toJson(),
  if (httpOnlyCookieAttribute != null) 'http_only_cookie_attribute': httpOnlyCookieAttribute?.toJson(),
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (optionsPreflightBypass != null) 'options_preflight_bypass': optionsPreflightBypass?.toJson(),
  if (sameSiteCookieAttribute != null) 'same_site_cookie_attribute': sameSiteCookieAttribute?.toJson(),
  if (serviceAuth401Redirect != null) 'service_auth_401_redirect': serviceAuth401Redirect?.toJson(),
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  if (skipInterstitial != null) 'skip_interstitial': skipInterstitial?.toJson(),
  'type': type,
  if (useClientlessIsolationAppLauncherUrl != null) 'use_clientless_isolation_app_launcher_url': useClientlessIsolationAppLauncherUrl?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('domain') &&
      json.containsKey('type') && json['type'] is String; } 
BrowserVncApplication3 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessSchemasScimConfig Function()? scimConfig, AccessTimestamp Function()? updatedAt, AccessAllowIframe Function()? allowIframe, List<String> Function()? allowedIdps, AccessAppLauncherVisible Function()? appLauncherVisible, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, AccessSchemasCorsHeaders Function()? corsHeaders, AccessCustomDenyMessage Function()? customDenyMessage, AccessSchemasCustomDenyUrl Function()? customDenyUrl, AccessComponentsSchemasDomain? domain, AccessEnableBindingCookie Function()? enableBindingCookie, AccessHttpOnlyCookieAttribute Function()? httpOnlyCookieAttribute, AccessLogoUrl Function()? logoUrl, AccessAppsComponentsSchemasName Function()? name, AccessSchemasOptionsPreflightBypass Function()? optionsPreflightBypass, AccessSameSiteCookieAttribute Function()? sameSiteCookieAttribute, AccessServiceAuth401Redirect Function()? serviceAuth401Redirect, AccessAppsComponentsSchemasSessionDuration Function()? sessionDuration, AccessSkipInterstitial Function()? skipInterstitial, String? type, AccessUseClientlessIsolationAppLauncherUrl Function()? useClientlessIsolationAppLauncherUrl, }) { return BrowserVncApplication3(
  aud: aud != null ? aud() : this.aud,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  allowIframe: allowIframe != null ? allowIframe() : this.allowIframe,
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  appLauncherVisible: appLauncherVisible != null ? appLauncherVisible() : this.appLauncherVisible,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  corsHeaders: corsHeaders != null ? corsHeaders() : this.corsHeaders,
  customDenyMessage: customDenyMessage != null ? customDenyMessage() : this.customDenyMessage,
  customDenyUrl: customDenyUrl != null ? customDenyUrl() : this.customDenyUrl,
  domain: domain ?? this.domain,
  enableBindingCookie: enableBindingCookie != null ? enableBindingCookie() : this.enableBindingCookie,
  httpOnlyCookieAttribute: httpOnlyCookieAttribute != null ? httpOnlyCookieAttribute() : this.httpOnlyCookieAttribute,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  name: name != null ? name() : this.name,
  optionsPreflightBypass: optionsPreflightBypass != null ? optionsPreflightBypass() : this.optionsPreflightBypass,
  sameSiteCookieAttribute: sameSiteCookieAttribute != null ? sameSiteCookieAttribute() : this.sameSiteCookieAttribute,
  serviceAuth401Redirect: serviceAuth401Redirect != null ? serviceAuth401Redirect() : this.serviceAuth401Redirect,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  skipInterstitial: skipInterstitial != null ? skipInterstitial() : this.skipInterstitial,
  type: type ?? this.type,
  useClientlessIsolationAppLauncherUrl: useClientlessIsolationAppLauncherUrl != null ? useClientlessIsolationAppLauncherUrl() : this.useClientlessIsolationAppLauncherUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrowserVncApplication3 &&
          aud == other.aud &&
          createdAt == other.createdAt &&
          id == other.id &&
          scimConfig == other.scimConfig &&
          updatedAt == other.updatedAt &&
          allowIframe == other.allowIframe &&
          listEquals(allowedIdps, other.allowedIdps) &&
          appLauncherVisible == other.appLauncherVisible &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          corsHeaders == other.corsHeaders &&
          customDenyMessage == other.customDenyMessage &&
          customDenyUrl == other.customDenyUrl &&
          domain == other.domain &&
          enableBindingCookie == other.enableBindingCookie &&
          httpOnlyCookieAttribute == other.httpOnlyCookieAttribute &&
          logoUrl == other.logoUrl &&
          name == other.name &&
          optionsPreflightBypass == other.optionsPreflightBypass &&
          sameSiteCookieAttribute == other.sameSiteCookieAttribute &&
          serviceAuth401Redirect == other.serviceAuth401Redirect &&
          sessionDuration == other.sessionDuration &&
          skipInterstitial == other.skipInterstitial &&
          type == other.type &&
          useClientlessIsolationAppLauncherUrl == other.useClientlessIsolationAppLauncherUrl; } 
@override int get hashCode { return Object.hashAll([aud, createdAt, id, scimConfig, updatedAt, allowIframe, Object.hashAll(allowedIdps ?? const []), appLauncherVisible, autoRedirectToIdentity, corsHeaders, customDenyMessage, customDenyUrl, domain, enableBindingCookie, httpOnlyCookieAttribute, logoUrl, name, optionsPreflightBypass, sameSiteCookieAttribute, serviceAuth401Redirect, sessionDuration, skipInterstitial, type, useClientlessIsolationAppLauncherUrl]); } 
@override String toString() { return 'BrowserVncApplication3(aud: $aud, createdAt: $createdAt, id: $id, scimConfig: $scimConfig, updatedAt: $updatedAt, allowIframe: $allowIframe, allowedIdps: $allowedIdps, appLauncherVisible: $appLauncherVisible, autoRedirectToIdentity: $autoRedirectToIdentity, corsHeaders: $corsHeaders, customDenyMessage: $customDenyMessage, customDenyUrl: $customDenyUrl, domain: $domain, enableBindingCookie: $enableBindingCookie, httpOnlyCookieAttribute: $httpOnlyCookieAttribute, logoUrl: $logoUrl, name: $name, optionsPreflightBypass: $optionsPreflightBypass, sameSiteCookieAttribute: $sameSiteCookieAttribute, serviceAuth401Redirect: $serviceAuth401Redirect, sessionDuration: $sessionDuration, skipInterstitial: $skipInterstitial, type: $type, useClientlessIsolationAppLauncherUrl: $useClientlessIsolationAppLauncherUrl)'; } 
 }
