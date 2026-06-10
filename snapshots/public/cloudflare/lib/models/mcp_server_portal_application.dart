// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_policy_link.dart';import 'access_apps_components_schemas_name.dart';import 'access_custom_deny_message.dart';import 'access_custom_deny_url.dart';import 'access_custom_non_identity_deny_url.dart';import 'access_destinations2.dart';import 'access_domain.dart';import 'access_http_only_cookie_attribute.dart';import 'access_logo_url.dart';import 'access_oauth_configuration.dart';import 'access_options_preflight_bypass.dart';import 'access_same_site_cookie_attribute.dart';import 'access_schemas_allow_authenticate_via_warp.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_session_duration.dart';import 'access_schemas_uuid.dart';import 'access_scim_config.dart';import 'access_type.dart';import 'mcp_server_portal_application_policies.dart';import 'mcp_server_portal_application_policies_variant3.dart';import 'private_destination.dart';import 'public_destination.dart';import 'via_mcp_server_portal_destination.dart';@immutable final class McpServerPortalApplication {const McpServerPortalApplication({required this.type, this.allowAuthenticateViaWarp, this.allowedIdps, this.autoRedirectToIdentity, this.customDenyMessage, this.customDenyUrl, this.customNonIdentityDenyUrl, this.customPages, this.destinations, this.domain, this.httpOnlyCookieAttribute, this.logoUrl, this.name, this.oauthConfiguration, this.optionsPreflightBypass, this.sameSiteCookieAttribute, this.scimConfig, this.sessionDuration, this.tags, this.policies, });

factory McpServerPortalApplication.fromJson(Map<String, dynamic> json) { return McpServerPortalApplication(
  allowAuthenticateViaWarp: json['allow_authenticate_via_warp'] != null ? AccessSchemasAllowAuthenticateViaWarp.fromJson(json['allow_authenticate_via_warp'] as bool) : null,
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  customDenyMessage: json['custom_deny_message'] != null ? AccessCustomDenyMessage.fromJson(json['custom_deny_message'] as String) : null,
  customDenyUrl: json['custom_deny_url'] != null ? AccessCustomDenyUrl.fromJson(json['custom_deny_url'] as String) : null,
  customNonIdentityDenyUrl: json['custom_non_identity_deny_url'] != null ? AccessCustomNonIdentityDenyUrl.fromJson(json['custom_non_identity_deny_url'] as String) : null,
  customPages: (json['custom_pages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  destinations: (json['destinations'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => PublicDestination.fromJson(v as Map<String, dynamic>), fromB: (v) => PrivateDestination.fromJson(v as Map<String, dynamic>), fromC: (v) => ViaMcpServerPortalDestination.fromJson(v as Map<String, dynamic>),)).toList(),
  domain: json['domain'] != null ? AccessDomain.fromJson(json['domain'] as String) : null,
  httpOnlyCookieAttribute: json['http_only_cookie_attribute'] != null ? AccessHttpOnlyCookieAttribute.fromJson(json['http_only_cookie_attribute'] as bool) : null,
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  oauthConfiguration: json['oauth_configuration'] != null ? AccessOauthConfiguration.fromJson(json['oauth_configuration'] as Map<String, dynamic>) : null,
  optionsPreflightBypass: json['options_preflight_bypass'] != null ? AccessOptionsPreflightBypass.fromJson(json['options_preflight_bypass'] as bool) : null,
  sameSiteCookieAttribute: json['same_site_cookie_attribute'] != null ? AccessSameSiteCookieAttribute.fromJson(json['same_site_cookie_attribute'] as String) : null,
  scimConfig: json['scim_config'] != null ? AccessScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  sessionDuration: json['session_duration'] != null ? AccessSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: AccessType.fromJson(json['type'] as String),
  policies: (json['policies'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => AccessAppPolicyLink.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasUuid.fromJson(v as String), fromC: (v) => McpServerPortalApplicationPoliciesVariant3.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final AccessSchemasAllowAuthenticateViaWarp? allowAuthenticateViaWarp;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final AccessCustomDenyMessage? customDenyMessage;

final AccessCustomDenyUrl? customDenyUrl;

final AccessCustomNonIdentityDenyUrl? customNonIdentityDenyUrl;

final List<String>? customPages;

final List<AccessDestinations2>? destinations;

final AccessDomain? domain;

final AccessHttpOnlyCookieAttribute? httpOnlyCookieAttribute;

final AccessLogoUrl? logoUrl;

final AccessAppsComponentsSchemasName? name;

final AccessOauthConfiguration? oauthConfiguration;

final AccessOptionsPreflightBypass? optionsPreflightBypass;

final AccessSameSiteCookieAttribute? sameSiteCookieAttribute;

final AccessScimConfig? scimConfig;

final AccessSchemasSessionDuration? sessionDuration;

final List<String>? tags;

final AccessType type;

/// The policies that Access applies to the application, in ascending order of precedence. Items can reference existing policies or create new policies exclusive to the application.
final List<McpServerPortalApplicationPolicies>? policies;

Map<String, dynamic> toJson() { return {
  if (allowAuthenticateViaWarp != null) 'allow_authenticate_via_warp': allowAuthenticateViaWarp?.toJson(),
  'allowed_idps': ?allowedIdps,
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (customDenyMessage != null) 'custom_deny_message': customDenyMessage?.toJson(),
  if (customDenyUrl != null) 'custom_deny_url': customDenyUrl?.toJson(),
  if (customNonIdentityDenyUrl != null) 'custom_non_identity_deny_url': customNonIdentityDenyUrl?.toJson(),
  'custom_pages': ?customPages,
  if (destinations != null) 'destinations': destinations?.map((e) => e.toJson()).toList(),
  if (domain != null) 'domain': domain?.toJson(),
  if (httpOnlyCookieAttribute != null) 'http_only_cookie_attribute': httpOnlyCookieAttribute?.toJson(),
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (oauthConfiguration != null) 'oauth_configuration': oauthConfiguration?.toJson(),
  if (optionsPreflightBypass != null) 'options_preflight_bypass': optionsPreflightBypass?.toJson(),
  if (sameSiteCookieAttribute != null) 'same_site_cookie_attribute': sameSiteCookieAttribute?.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  'tags': ?tags,
  'type': type.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
McpServerPortalApplication copyWith({AccessSchemasAllowAuthenticateViaWarp Function()? allowAuthenticateViaWarp, List<String> Function()? allowedIdps, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, AccessCustomDenyMessage Function()? customDenyMessage, AccessCustomDenyUrl Function()? customDenyUrl, AccessCustomNonIdentityDenyUrl Function()? customNonIdentityDenyUrl, List<String> Function()? customPages, List<AccessDestinations2> Function()? destinations, AccessDomain Function()? domain, AccessHttpOnlyCookieAttribute Function()? httpOnlyCookieAttribute, AccessLogoUrl Function()? logoUrl, AccessAppsComponentsSchemasName Function()? name, AccessOauthConfiguration Function()? oauthConfiguration, AccessOptionsPreflightBypass Function()? optionsPreflightBypass, AccessSameSiteCookieAttribute Function()? sameSiteCookieAttribute, AccessScimConfig Function()? scimConfig, AccessSchemasSessionDuration Function()? sessionDuration, List<String> Function()? tags, AccessType? type, List<McpServerPortalApplicationPolicies> Function()? policies, }) { return McpServerPortalApplication(
  allowAuthenticateViaWarp: allowAuthenticateViaWarp != null ? allowAuthenticateViaWarp() : this.allowAuthenticateViaWarp,
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  customDenyMessage: customDenyMessage != null ? customDenyMessage() : this.customDenyMessage,
  customDenyUrl: customDenyUrl != null ? customDenyUrl() : this.customDenyUrl,
  customNonIdentityDenyUrl: customNonIdentityDenyUrl != null ? customNonIdentityDenyUrl() : this.customNonIdentityDenyUrl,
  customPages: customPages != null ? customPages() : this.customPages,
  destinations: destinations != null ? destinations() : this.destinations,
  domain: domain != null ? domain() : this.domain,
  httpOnlyCookieAttribute: httpOnlyCookieAttribute != null ? httpOnlyCookieAttribute() : this.httpOnlyCookieAttribute,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  name: name != null ? name() : this.name,
  oauthConfiguration: oauthConfiguration != null ? oauthConfiguration() : this.oauthConfiguration,
  optionsPreflightBypass: optionsPreflightBypass != null ? optionsPreflightBypass() : this.optionsPreflightBypass,
  sameSiteCookieAttribute: sameSiteCookieAttribute != null ? sameSiteCookieAttribute() : this.sameSiteCookieAttribute,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  tags: tags != null ? tags() : this.tags,
  type: type ?? this.type,
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McpServerPortalApplication &&
          allowAuthenticateViaWarp == other.allowAuthenticateViaWarp &&
          listEquals(allowedIdps, other.allowedIdps) &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          customDenyMessage == other.customDenyMessage &&
          customDenyUrl == other.customDenyUrl &&
          customNonIdentityDenyUrl == other.customNonIdentityDenyUrl &&
          listEquals(customPages, other.customPages) &&
          listEquals(destinations, other.destinations) &&
          domain == other.domain &&
          httpOnlyCookieAttribute == other.httpOnlyCookieAttribute &&
          logoUrl == other.logoUrl &&
          name == other.name &&
          oauthConfiguration == other.oauthConfiguration &&
          optionsPreflightBypass == other.optionsPreflightBypass &&
          sameSiteCookieAttribute == other.sameSiteCookieAttribute &&
          scimConfig == other.scimConfig &&
          sessionDuration == other.sessionDuration &&
          listEquals(tags, other.tags) &&
          type == other.type &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hash(allowAuthenticateViaWarp, Object.hashAll(allowedIdps ?? const []), autoRedirectToIdentity, customDenyMessage, customDenyUrl, customNonIdentityDenyUrl, Object.hashAll(customPages ?? const []), Object.hashAll(destinations ?? const []), domain, httpOnlyCookieAttribute, logoUrl, name, oauthConfiguration, optionsPreflightBypass, sameSiteCookieAttribute, scimConfig, sessionDuration, Object.hashAll(tags ?? const []), type, Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'McpServerPortalApplication(allowAuthenticateViaWarp: $allowAuthenticateViaWarp, allowedIdps: $allowedIdps, autoRedirectToIdentity: $autoRedirectToIdentity, customDenyMessage: $customDenyMessage, customDenyUrl: $customDenyUrl, customNonIdentityDenyUrl: $customNonIdentityDenyUrl, customPages: $customPages, destinations: $destinations, domain: $domain, httpOnlyCookieAttribute: $httpOnlyCookieAttribute, logoUrl: $logoUrl, name: $name, oauthConfiguration: $oauthConfiguration, optionsPreflightBypass: $optionsPreflightBypass, sameSiteCookieAttribute: $sameSiteCookieAttribute, scimConfig: $scimConfig, sessionDuration: $sessionDuration, tags: $tags, type: $type, policies: $policies)'; } 
 }
