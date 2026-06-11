// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_allow_iframe.dart';import 'access_app_launcher_visible.dart';import 'access_app_policy_response.dart';import 'access_apps_components_schemas_name.dart';import 'access_cors_headers.dart';import 'access_custom_deny_message.dart';import 'access_custom_deny_url.dart';import 'access_custom_non_identity_deny_url.dart';import 'access_destinations2.dart';import 'access_domain.dart';import 'access_enable_binding_cookie.dart';import 'access_http_only_cookie_attribute.dart';import 'access_logo_url.dart';import 'access_mfa_config.dart';import 'access_oauth_configuration.dart';import 'access_options_preflight_bypass.dart';import 'access_path_cookie_attribute.dart';import 'access_read_service_tokens_from_header.dart';import 'access_same_site_cookie_attribute.dart';import 'access_schemas_allow_authenticate_via_warp.dart';import 'access_schemas_aud.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_session_duration.dart';import 'access_scim_config.dart';import 'access_service_auth401_redirect.dart';import 'access_skip_interstitial.dart';import 'access_timestamp.dart';import 'access_type.dart';import 'access_use_clientless_isolation_app_launcher_url.dart';import 'access_uuid.dart';import 'private_destination.dart';import 'public_destination.dart';import 'via_mcp_server_portal_destination.dart';/// The policies that Access applies to the application.
@immutable final class BrowserSshApplication2 {const BrowserSshApplication2({required this.type, required this.domain, this.customNonIdentityDenyUrl, this.updatedAt, this.allowAuthenticateViaWarp, this.allowIframe, this.allowedIdps, this.appLauncherVisible, this.autoRedirectToIdentity, this.corsHeaders, this.customDenyMessage, this.customDenyUrl, this.aud, this.customPages, this.destinations, this.createdAt, this.enableBindingCookie, this.httpOnlyCookieAttribute, this.logoUrl, this.mfaConfig, this.name, this.oauthConfiguration, this.policies, this.pathCookieAttribute, this.readServiceTokensFromHeader, this.sameSiteCookieAttribute, this.scimConfig, this.selfHostedDomains, this.serviceAuth401Redirect, this.sessionDuration, this.skipInterstitial, this.tags, this.id, this.useClientlessIsolationAppLauncherUrl, this.optionsPreflightBypass, });

factory BrowserSshApplication2.fromJson(Map<String, dynamic> json) { return BrowserSshApplication2(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  allowAuthenticateViaWarp: json['allow_authenticate_via_warp'] != null ? AccessSchemasAllowAuthenticateViaWarp.fromJson(json['allow_authenticate_via_warp'] as bool) : null,
  allowIframe: json['allow_iframe'] != null ? AccessAllowIframe.fromJson(json['allow_iframe'] as bool) : null,
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  appLauncherVisible: json['app_launcher_visible'] != null ? AccessAppLauncherVisible.fromJson(json['app_launcher_visible'] as bool) : null,
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  corsHeaders: json['cors_headers'] != null ? AccessCorsHeaders.fromJson(json['cors_headers'] as Map<String, dynamic>) : null,
  customDenyMessage: json['custom_deny_message'] != null ? AccessCustomDenyMessage.fromJson(json['custom_deny_message'] as String) : null,
  customDenyUrl: json['custom_deny_url'] != null ? AccessCustomDenyUrl.fromJson(json['custom_deny_url'] as String) : null,
  customNonIdentityDenyUrl: json['custom_non_identity_deny_url'] != null ? AccessCustomNonIdentityDenyUrl.fromJson(json['custom_non_identity_deny_url'] as String) : null,
  customPages: (json['custom_pages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  destinations: (json['destinations'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => PublicDestination.fromJson(v as Map<String, dynamic>), fromB: (v) => PrivateDestination.fromJson(v as Map<String, dynamic>), fromC: (v) => ViaMcpServerPortalDestination.fromJson(v as Map<String, dynamic>),)).toList(),
  domain: AccessDomain.fromJson(json['domain'] as String),
  enableBindingCookie: json['enable_binding_cookie'] != null ? AccessEnableBindingCookie.fromJson(json['enable_binding_cookie'] as bool) : null,
  httpOnlyCookieAttribute: json['http_only_cookie_attribute'] != null ? AccessHttpOnlyCookieAttribute.fromJson(json['http_only_cookie_attribute'] as bool) : null,
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  mfaConfig: json['mfa_config'] != null ? AccessMfaConfig.fromJson(json['mfa_config'] as Map<String, dynamic>) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  oauthConfiguration: json['oauth_configuration'] != null ? AccessOauthConfiguration.fromJson(json['oauth_configuration'] as Map<String, dynamic>) : null,
  optionsPreflightBypass: json['options_preflight_bypass'] != null ? AccessOptionsPreflightBypass.fromJson(json['options_preflight_bypass'] as bool) : null,
  pathCookieAttribute: json['path_cookie_attribute'] != null ? AccessPathCookieAttribute.fromJson(json['path_cookie_attribute'] as bool) : null,
  readServiceTokensFromHeader: json['read_service_tokens_from_header'] != null ? AccessReadServiceTokensFromHeader.fromJson(json['read_service_tokens_from_header'] as String) : null,
  sameSiteCookieAttribute: json['same_site_cookie_attribute'] != null ? AccessSameSiteCookieAttribute.fromJson(json['same_site_cookie_attribute'] as String) : null,
  scimConfig: json['scim_config'] != null ? AccessScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  selfHostedDomains: (json['self_hosted_domains'] as List<dynamic>?)?.map((e) => e as String).toList(),
  serviceAuth401Redirect: json['service_auth_401_redirect'] != null ? AccessServiceAuth401Redirect.fromJson(json['service_auth_401_redirect'] as bool) : null,
  sessionDuration: json['session_duration'] != null ? AccessSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  skipInterstitial: json['skip_interstitial'] != null ? AccessSkipInterstitial.fromJson(json['skip_interstitial'] as bool) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: AccessType.fromJson(json['type'] as String),
  useClientlessIsolationAppLauncherUrl: json['use_clientless_isolation_app_launcher_url'] != null ? AccessUseClientlessIsolationAppLauncherUrl.fromJson(json['use_clientless_isolation_app_launcher_url'] as bool) : null,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => AccessAppPolicyResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessTimestamp? updatedAt;

final AccessSchemasAllowAuthenticateViaWarp? allowAuthenticateViaWarp;

/// Enables loading application content in an iFrame.
final AccessAllowIframe? allowIframe;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// Displays the application in the App Launcher.
final AccessAppLauncherVisible? appLauncherVisible;

final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final AccessCorsHeaders? corsHeaders;

final AccessCustomDenyMessage? customDenyMessage;

final AccessCustomDenyUrl? customDenyUrl;

final AccessCustomNonIdentityDenyUrl? customNonIdentityDenyUrl;

final List<String>? customPages;

final List<AccessDestinations2>? destinations;

final AccessDomain domain;

final AccessEnableBindingCookie? enableBindingCookie;

final AccessHttpOnlyCookieAttribute? httpOnlyCookieAttribute;

final AccessLogoUrl? logoUrl;

final AccessMfaConfig? mfaConfig;

final AccessAppsComponentsSchemasName? name;

final AccessOauthConfiguration? oauthConfiguration;

final AccessOptionsPreflightBypass? optionsPreflightBypass;

final AccessPathCookieAttribute? pathCookieAttribute;

final AccessReadServiceTokensFromHeader? readServiceTokensFromHeader;

final AccessSameSiteCookieAttribute? sameSiteCookieAttribute;

final AccessScimConfig? scimConfig;

final List<String>? selfHostedDomains;

final AccessServiceAuth401Redirect? serviceAuth401Redirect;

final AccessSchemasSessionDuration? sessionDuration;

final AccessSkipInterstitial? skipInterstitial;

final List<String>? tags;

final AccessType type;

final AccessUseClientlessIsolationAppLauncherUrl? useClientlessIsolationAppLauncherUrl;

final List<AccessAppPolicyResponse>? policies;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (allowAuthenticateViaWarp != null) 'allow_authenticate_via_warp': allowAuthenticateViaWarp?.toJson(),
  if (allowIframe != null) 'allow_iframe': allowIframe?.toJson(),
  'allowed_idps': ?allowedIdps,
  if (appLauncherVisible != null) 'app_launcher_visible': appLauncherVisible?.toJson(),
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (corsHeaders != null) 'cors_headers': corsHeaders?.toJson(),
  if (customDenyMessage != null) 'custom_deny_message': customDenyMessage?.toJson(),
  if (customDenyUrl != null) 'custom_deny_url': customDenyUrl?.toJson(),
  if (customNonIdentityDenyUrl != null) 'custom_non_identity_deny_url': customNonIdentityDenyUrl?.toJson(),
  'custom_pages': ?customPages,
  if (destinations != null) 'destinations': destinations?.map((e) => e.toJson()).toList(),
  'domain': domain.toJson(),
  if (enableBindingCookie != null) 'enable_binding_cookie': enableBindingCookie?.toJson(),
  if (httpOnlyCookieAttribute != null) 'http_only_cookie_attribute': httpOnlyCookieAttribute?.toJson(),
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (mfaConfig != null) 'mfa_config': mfaConfig?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (oauthConfiguration != null) 'oauth_configuration': oauthConfiguration?.toJson(),
  if (optionsPreflightBypass != null) 'options_preflight_bypass': optionsPreflightBypass?.toJson(),
  if (pathCookieAttribute != null) 'path_cookie_attribute': pathCookieAttribute?.toJson(),
  if (readServiceTokensFromHeader != null) 'read_service_tokens_from_header': readServiceTokensFromHeader?.toJson(),
  if (sameSiteCookieAttribute != null) 'same_site_cookie_attribute': sameSiteCookieAttribute?.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  'self_hosted_domains': ?selfHostedDomains,
  if (serviceAuth401Redirect != null) 'service_auth_401_redirect': serviceAuth401Redirect?.toJson(),
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  if (skipInterstitial != null) 'skip_interstitial': skipInterstitial?.toJson(),
  'tags': ?tags,
  'type': type.toJson(),
  if (useClientlessIsolationAppLauncherUrl != null) 'use_clientless_isolation_app_launcher_url': useClientlessIsolationAppLauncherUrl?.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('domain') &&
      json.containsKey('type'); } 
BrowserSshApplication2 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessTimestamp Function()? updatedAt, AccessSchemasAllowAuthenticateViaWarp Function()? allowAuthenticateViaWarp, AccessAllowIframe Function()? allowIframe, List<String> Function()? allowedIdps, AccessAppLauncherVisible Function()? appLauncherVisible, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, AccessCorsHeaders Function()? corsHeaders, AccessCustomDenyMessage Function()? customDenyMessage, AccessCustomDenyUrl Function()? customDenyUrl, AccessCustomNonIdentityDenyUrl Function()? customNonIdentityDenyUrl, List<String> Function()? customPages, List<AccessDestinations2> Function()? destinations, AccessDomain? domain, AccessEnableBindingCookie Function()? enableBindingCookie, AccessHttpOnlyCookieAttribute Function()? httpOnlyCookieAttribute, AccessLogoUrl Function()? logoUrl, AccessMfaConfig Function()? mfaConfig, AccessAppsComponentsSchemasName Function()? name, AccessOauthConfiguration Function()? oauthConfiguration, AccessOptionsPreflightBypass Function()? optionsPreflightBypass, AccessPathCookieAttribute Function()? pathCookieAttribute, AccessReadServiceTokensFromHeader Function()? readServiceTokensFromHeader, AccessSameSiteCookieAttribute Function()? sameSiteCookieAttribute, AccessScimConfig Function()? scimConfig, List<String> Function()? selfHostedDomains, AccessServiceAuth401Redirect Function()? serviceAuth401Redirect, AccessSchemasSessionDuration Function()? sessionDuration, AccessSkipInterstitial Function()? skipInterstitial, List<String> Function()? tags, AccessType? type, AccessUseClientlessIsolationAppLauncherUrl Function()? useClientlessIsolationAppLauncherUrl, List<AccessAppPolicyResponse> Function()? policies, }) { return BrowserSshApplication2(
  aud: aud != null ? aud() : this.aud,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  allowAuthenticateViaWarp: allowAuthenticateViaWarp != null ? allowAuthenticateViaWarp() : this.allowAuthenticateViaWarp,
  allowIframe: allowIframe != null ? allowIframe() : this.allowIframe,
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  appLauncherVisible: appLauncherVisible != null ? appLauncherVisible() : this.appLauncherVisible,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  corsHeaders: corsHeaders != null ? corsHeaders() : this.corsHeaders,
  customDenyMessage: customDenyMessage != null ? customDenyMessage() : this.customDenyMessage,
  customDenyUrl: customDenyUrl != null ? customDenyUrl() : this.customDenyUrl,
  customNonIdentityDenyUrl: customNonIdentityDenyUrl != null ? customNonIdentityDenyUrl() : this.customNonIdentityDenyUrl,
  customPages: customPages != null ? customPages() : this.customPages,
  destinations: destinations != null ? destinations() : this.destinations,
  domain: domain ?? this.domain,
  enableBindingCookie: enableBindingCookie != null ? enableBindingCookie() : this.enableBindingCookie,
  httpOnlyCookieAttribute: httpOnlyCookieAttribute != null ? httpOnlyCookieAttribute() : this.httpOnlyCookieAttribute,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  mfaConfig: mfaConfig != null ? mfaConfig() : this.mfaConfig,
  name: name != null ? name() : this.name,
  oauthConfiguration: oauthConfiguration != null ? oauthConfiguration() : this.oauthConfiguration,
  optionsPreflightBypass: optionsPreflightBypass != null ? optionsPreflightBypass() : this.optionsPreflightBypass,
  pathCookieAttribute: pathCookieAttribute != null ? pathCookieAttribute() : this.pathCookieAttribute,
  readServiceTokensFromHeader: readServiceTokensFromHeader != null ? readServiceTokensFromHeader() : this.readServiceTokensFromHeader,
  sameSiteCookieAttribute: sameSiteCookieAttribute != null ? sameSiteCookieAttribute() : this.sameSiteCookieAttribute,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  selfHostedDomains: selfHostedDomains != null ? selfHostedDomains() : this.selfHostedDomains,
  serviceAuth401Redirect: serviceAuth401Redirect != null ? serviceAuth401Redirect() : this.serviceAuth401Redirect,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  skipInterstitial: skipInterstitial != null ? skipInterstitial() : this.skipInterstitial,
  tags: tags != null ? tags() : this.tags,
  type: type ?? this.type,
  useClientlessIsolationAppLauncherUrl: useClientlessIsolationAppLauncherUrl != null ? useClientlessIsolationAppLauncherUrl() : this.useClientlessIsolationAppLauncherUrl,
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrowserSshApplication2 &&
          aud == other.aud &&
          createdAt == other.createdAt &&
          id == other.id &&
          updatedAt == other.updatedAt &&
          allowAuthenticateViaWarp == other.allowAuthenticateViaWarp &&
          allowIframe == other.allowIframe &&
          listEquals(allowedIdps, other.allowedIdps) &&
          appLauncherVisible == other.appLauncherVisible &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          corsHeaders == other.corsHeaders &&
          customDenyMessage == other.customDenyMessage &&
          customDenyUrl == other.customDenyUrl &&
          customNonIdentityDenyUrl == other.customNonIdentityDenyUrl &&
          listEquals(customPages, other.customPages) &&
          listEquals(destinations, other.destinations) &&
          domain == other.domain &&
          enableBindingCookie == other.enableBindingCookie &&
          httpOnlyCookieAttribute == other.httpOnlyCookieAttribute &&
          logoUrl == other.logoUrl &&
          mfaConfig == other.mfaConfig &&
          name == other.name &&
          oauthConfiguration == other.oauthConfiguration &&
          optionsPreflightBypass == other.optionsPreflightBypass &&
          pathCookieAttribute == other.pathCookieAttribute &&
          readServiceTokensFromHeader == other.readServiceTokensFromHeader &&
          sameSiteCookieAttribute == other.sameSiteCookieAttribute &&
          scimConfig == other.scimConfig &&
          listEquals(selfHostedDomains, other.selfHostedDomains) &&
          serviceAuth401Redirect == other.serviceAuth401Redirect &&
          sessionDuration == other.sessionDuration &&
          skipInterstitial == other.skipInterstitial &&
          listEquals(tags, other.tags) &&
          type == other.type &&
          useClientlessIsolationAppLauncherUrl == other.useClientlessIsolationAppLauncherUrl &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hashAll([aud, createdAt, id, updatedAt, allowAuthenticateViaWarp, allowIframe, Object.hashAll(allowedIdps ?? const []), appLauncherVisible, autoRedirectToIdentity, corsHeaders, customDenyMessage, customDenyUrl, customNonIdentityDenyUrl, Object.hashAll(customPages ?? const []), Object.hashAll(destinations ?? const []), domain, enableBindingCookie, httpOnlyCookieAttribute, logoUrl, mfaConfig, name, oauthConfiguration, optionsPreflightBypass, pathCookieAttribute, readServiceTokensFromHeader, sameSiteCookieAttribute, scimConfig, Object.hashAll(selfHostedDomains ?? const []), serviceAuth401Redirect, sessionDuration, skipInterstitial, Object.hashAll(tags ?? const []), type, useClientlessIsolationAppLauncherUrl, Object.hashAll(policies ?? const [])]); } 
@override String toString() { return 'BrowserSshApplication2(aud: $aud, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, allowAuthenticateViaWarp: $allowAuthenticateViaWarp, allowIframe: $allowIframe, allowedIdps: $allowedIdps, appLauncherVisible: $appLauncherVisible, autoRedirectToIdentity: $autoRedirectToIdentity, corsHeaders: $corsHeaders, customDenyMessage: $customDenyMessage, customDenyUrl: $customDenyUrl, customNonIdentityDenyUrl: $customNonIdentityDenyUrl, customPages: $customPages, destinations: $destinations, domain: $domain, enableBindingCookie: $enableBindingCookie, httpOnlyCookieAttribute: $httpOnlyCookieAttribute, logoUrl: $logoUrl, mfaConfig: $mfaConfig, name: $name, oauthConfiguration: $oauthConfiguration, optionsPreflightBypass: $optionsPreflightBypass, pathCookieAttribute: $pathCookieAttribute, readServiceTokensFromHeader: $readServiceTokensFromHeader, sameSiteCookieAttribute: $sameSiteCookieAttribute, scimConfig: $scimConfig, selfHostedDomains: $selfHostedDomains, serviceAuth401Redirect: $serviceAuth401Redirect, sessionDuration: $sessionDuration, skipInterstitial: $skipInterstitial, tags: $tags, type: $type, useClientlessIsolationAppLauncherUrl: $useClientlessIsolationAppLauncherUrl, policies: $policies)'; } 
 }
