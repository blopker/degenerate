// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_policy_link.dart';import 'access_custom_deny_url.dart';import 'access_custom_non_identity_deny_url.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_session_duration.dart';import 'access_schemas_uuid.dart';import 'access_type.dart';import 'gateway_identity_proxy_endpoint_application3_policies.dart';import 'gateway_identity_proxy_endpoint_application3_policies_variant3.dart';@immutable final class GatewayIdentityProxyEndpointApplication3 {const GatewayIdentityProxyEndpointApplication3({required this.type, this.allowedIdps, this.autoRedirectToIdentity, this.customDenyUrl, this.customNonIdentityDenyUrl, this.customPages, this.domain = const Omittable.absent(), this.name = const Omittable.absent(), this.sessionDuration, this.policies, });

factory GatewayIdentityProxyEndpointApplication3.fromJson(Map<String, dynamic> json) { return GatewayIdentityProxyEndpointApplication3(
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  customDenyUrl: json['custom_deny_url'] != null ? AccessCustomDenyUrl.fromJson(json['custom_deny_url'] as String) : null,
  customNonIdentityDenyUrl: json['custom_non_identity_deny_url'] != null ? AccessCustomNonIdentityDenyUrl.fromJson(json['custom_non_identity_deny_url'] as String) : null,
  customPages: (json['custom_pages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  domain: json.containsKey('domain') ? Omittable(json['domain']) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name']) : const Omittable.absent(),
  sessionDuration: json['session_duration'] != null ? AccessSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  type: AccessType.fromJson(json['type'] as String),
  policies: (json['policies'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => AccessAppPolicyLink.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasUuid.fromJson(v as String), fromC: (v) => GatewayIdentityProxyEndpointApplication3PoliciesVariant3.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

/// The custom URL a user is redirected to when they are denied access to the application when failing identity-based rules.
final AccessCustomDenyUrl? customDenyUrl;

/// The custom URL a user is redirected to when they are denied access to the application when failing non-identity rules.
final AccessCustomNonIdentityDenyUrl? customNonIdentityDenyUrl;

/// The custom pages that will be displayed when applicable for this application
final List<String>? customPages;

/// The proxy endpoint domain in the format: 10 alphanumeric characters followed by .proxy.cloudflare-gateway.com
final Omittable<dynamic> domain;

final Omittable<dynamic> name;

/// The amount of time that tokens issued for this application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h. Note: unsupported for infrastructure type applications.
final AccessSchemasSessionDuration? sessionDuration;

/// The application type.
final AccessType type;

/// The policies that Access applies to the application, in ascending order of precedence. Items can reference existing policies or create new policies exclusive to the application.
final List<GatewayIdentityProxyEndpointApplication3Policies>? policies;

Map<String, dynamic> toJson() { return {
  'allowed_idps': ?allowedIdps,
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (customDenyUrl != null) 'custom_deny_url': customDenyUrl?.toJson(),
  if (customNonIdentityDenyUrl != null) 'custom_non_identity_deny_url': customNonIdentityDenyUrl?.toJson(),
  'custom_pages': ?customPages,
  if (domain.isPresent) 'domain': domain.value,
  if (name.isPresent) 'name': name.value,
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  'type': type.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
GatewayIdentityProxyEndpointApplication3 copyWith({List<String>? Function()? allowedIdps, AccessSchemasAutoRedirectToIdentity? Function()? autoRedirectToIdentity, AccessCustomDenyUrl? Function()? customDenyUrl, AccessCustomNonIdentityDenyUrl? Function()? customNonIdentityDenyUrl, List<String>? Function()? customPages, Omittable<dynamic>? domain, Omittable<dynamic>? name, AccessSchemasSessionDuration? Function()? sessionDuration, AccessType? type, List<GatewayIdentityProxyEndpointApplication3Policies>? Function()? policies, }) { return GatewayIdentityProxyEndpointApplication3(
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  customDenyUrl: customDenyUrl != null ? customDenyUrl() : this.customDenyUrl,
  customNonIdentityDenyUrl: customNonIdentityDenyUrl != null ? customNonIdentityDenyUrl() : this.customNonIdentityDenyUrl,
  customPages: customPages != null ? customPages() : this.customPages,
  domain: domain ?? this.domain,
  name: name ?? this.name,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  type: type ?? this.type,
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GatewayIdentityProxyEndpointApplication3 &&
          listEquals(allowedIdps, other.allowedIdps) &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          customDenyUrl == other.customDenyUrl &&
          customNonIdentityDenyUrl == other.customNonIdentityDenyUrl &&
          listEquals(customPages, other.customPages) &&
          domain == other.domain &&
          name == other.name &&
          sessionDuration == other.sessionDuration &&
          type == other.type &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedIdps ?? const []), autoRedirectToIdentity, customDenyUrl, customNonIdentityDenyUrl, Object.hashAll(customPages ?? const []), domain, name, sessionDuration, type, Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'GatewayIdentityProxyEndpointApplication3(allowedIdps: $allowedIdps, autoRedirectToIdentity: $autoRedirectToIdentity, customDenyUrl: $customDenyUrl, customNonIdentityDenyUrl: $customNonIdentityDenyUrl, customPages: $customPages, domain: $domain, name: $name, sessionDuration: $sessionDuration, type: $type, policies: $policies)'; } 
 }
