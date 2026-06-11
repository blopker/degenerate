// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_custom_deny_url.dart';import 'access_custom_non_identity_deny_url.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_session_duration.dart';import 'access_type.dart';@immutable final class AccessProxyEndpointProps {const AccessProxyEndpointProps({required this.type, this.allowedIdps, this.autoRedirectToIdentity, this.customDenyUrl, this.customNonIdentityDenyUrl, this.customPages, this.domain, this.name, this.sessionDuration, });

factory AccessProxyEndpointProps.fromJson(Map<String, dynamic> json) { return AccessProxyEndpointProps(
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  customDenyUrl: json['custom_deny_url'] != null ? AccessCustomDenyUrl.fromJson(json['custom_deny_url'] as String) : null,
  customNonIdentityDenyUrl: json['custom_non_identity_deny_url'] != null ? AccessCustomNonIdentityDenyUrl.fromJson(json['custom_non_identity_deny_url'] as String) : null,
  customPages: (json['custom_pages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  domain: json['domain'],
  name: json['name'],
  sessionDuration: json['session_duration'] != null ? AccessSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  type: AccessType.fromJson(json['type'] as String),
); }

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

/// The custom URL a user is redirected to when they are denied access to the application when failing identity-based rules.
final AccessCustomDenyUrl? customDenyUrl;

/// The custom URL a user is redirected to when they are denied access to the application when failing non-identity rules.
final AccessCustomNonIdentityDenyUrl? customNonIdentityDenyUrl;

final List<String>? customPages;

/// The proxy endpoint domain in the format: 10 alphanumeric characters followed by .proxy.cloudflare-gateway.com
final dynamic domain;

final dynamic name;

final AccessSchemasSessionDuration? sessionDuration;

final AccessType type;

Map<String, dynamic> toJson() { return {
  'allowed_idps': ?allowedIdps,
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (customDenyUrl != null) 'custom_deny_url': customDenyUrl?.toJson(),
  if (customNonIdentityDenyUrl != null) 'custom_non_identity_deny_url': customNonIdentityDenyUrl?.toJson(),
  'custom_pages': ?customPages,
  'domain': ?domain,
  'name': ?name,
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
AccessProxyEndpointProps copyWith({List<String> Function()? allowedIdps, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, AccessCustomDenyUrl Function()? customDenyUrl, AccessCustomNonIdentityDenyUrl Function()? customNonIdentityDenyUrl, List<String> Function()? customPages, dynamic Function()? domain, dynamic Function()? name, AccessSchemasSessionDuration Function()? sessionDuration, AccessType? type, }) { return AccessProxyEndpointProps(
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  customDenyUrl: customDenyUrl != null ? customDenyUrl() : this.customDenyUrl,
  customNonIdentityDenyUrl: customNonIdentityDenyUrl != null ? customNonIdentityDenyUrl() : this.customNonIdentityDenyUrl,
  customPages: customPages != null ? customPages() : this.customPages,
  domain: domain != null ? domain() : this.domain,
  name: name != null ? name() : this.name,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessProxyEndpointProps &&
          listEquals(allowedIdps, other.allowedIdps) &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          customDenyUrl == other.customDenyUrl &&
          customNonIdentityDenyUrl == other.customNonIdentityDenyUrl &&
          listEquals(customPages, other.customPages) &&
          domain == other.domain &&
          name == other.name &&
          sessionDuration == other.sessionDuration &&
          type == other.type; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedIdps ?? const []), autoRedirectToIdentity, customDenyUrl, customNonIdentityDenyUrl, Object.hashAll(customPages ?? const []), domain, name, sessionDuration, type); } 
@override String toString() { return 'AccessProxyEndpointProps(allowedIdps: $allowedIdps, autoRedirectToIdentity: $autoRedirectToIdentity, customDenyUrl: $customDenyUrl, customNonIdentityDenyUrl: $customNonIdentityDenyUrl, customPages: $customPages, domain: $domain, name: $name, sessionDuration: $sessionDuration, type: $type)'; } 
 }
