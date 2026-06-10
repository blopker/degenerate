// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_policy_response.dart';import 'access_custom_deny_url.dart';import 'access_custom_non_identity_deny_url.dart';import 'access_schemas_aud.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_session_duration.dart';import 'access_timestamp.dart';import 'access_type.dart';import 'access_uuid.dart';/// The policies that Access applies to the application.
@immutable final class BrowserIsolationPermissionsApplication2 {const BrowserIsolationPermissionsApplication2({required this.type, this.aud, this.createdAt, this.id, this.updatedAt, this.allowedIdps, this.autoRedirectToIdentity, this.customDenyUrl, this.customNonIdentityDenyUrl, this.customPages, this.domain, this.name, this.sessionDuration, this.policies, });

factory BrowserIsolationPermissionsApplication2.fromJson(Map<String, dynamic> json) { return BrowserIsolationPermissionsApplication2(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  customDenyUrl: json['custom_deny_url'] != null ? AccessCustomDenyUrl.fromJson(json['custom_deny_url'] as String) : null,
  customNonIdentityDenyUrl: json['custom_non_identity_deny_url'] != null ? AccessCustomNonIdentityDenyUrl.fromJson(json['custom_non_identity_deny_url'] as String) : null,
  customPages: (json['custom_pages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  domain: json['domain'],
  name: json['name'],
  sessionDuration: json['session_duration'] != null ? AccessSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  type: AccessType.fromJson(json['type'] as String),
  policies: (json['policies'] as List<dynamic>?)?.map((e) => AccessAppPolicyResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessTimestamp? updatedAt;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final AccessCustomDenyUrl? customDenyUrl;

final AccessCustomNonIdentityDenyUrl? customNonIdentityDenyUrl;

final List<String>? customPages;

final dynamic domain;

final dynamic name;

final AccessSchemasSessionDuration? sessionDuration;

final AccessType type;

final List<AccessAppPolicyResponse>? policies;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  'allowed_idps': ?allowedIdps,
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (customDenyUrl != null) 'custom_deny_url': customDenyUrl?.toJson(),
  if (customNonIdentityDenyUrl != null) 'custom_non_identity_deny_url': customNonIdentityDenyUrl?.toJson(),
  'custom_pages': ?customPages,
  'domain': ?domain,
  'name': ?name,
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  'type': type.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
BrowserIsolationPermissionsApplication2 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessTimestamp Function()? updatedAt, List<String> Function()? allowedIdps, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, AccessCustomDenyUrl Function()? customDenyUrl, AccessCustomNonIdentityDenyUrl Function()? customNonIdentityDenyUrl, List<String> Function()? customPages, dynamic Function()? domain, dynamic Function()? name, AccessSchemasSessionDuration Function()? sessionDuration, AccessType? type, List<AccessAppPolicyResponse> Function()? policies, }) { return BrowserIsolationPermissionsApplication2(
  aud: aud != null ? aud() : this.aud,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  customDenyUrl: customDenyUrl != null ? customDenyUrl() : this.customDenyUrl,
  customNonIdentityDenyUrl: customNonIdentityDenyUrl != null ? customNonIdentityDenyUrl() : this.customNonIdentityDenyUrl,
  customPages: customPages != null ? customPages() : this.customPages,
  domain: domain != null ? domain() : this.domain,
  name: name != null ? name() : this.name,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  type: type ?? this.type,
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrowserIsolationPermissionsApplication2 &&
          aud == other.aud &&
          createdAt == other.createdAt &&
          id == other.id &&
          updatedAt == other.updatedAt &&
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
@override int get hashCode { return Object.hash(aud, createdAt, id, updatedAt, Object.hashAll(allowedIdps ?? const []), autoRedirectToIdentity, customDenyUrl, customNonIdentityDenyUrl, Object.hashAll(customPages ?? const []), domain, name, sessionDuration, type, Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'BrowserIsolationPermissionsApplication2(aud: $aud, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, allowedIdps: $allowedIdps, autoRedirectToIdentity: $autoRedirectToIdentity, customDenyUrl: $customDenyUrl, customNonIdentityDenyUrl: $customNonIdentityDenyUrl, customPages: $customPages, domain: $domain, name: $name, sessionDuration: $sessionDuration, type: $type, policies: $policies)'; } 
 }
