// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AccessOrgMfaConfigAllowedAuthenticators {const AccessOrgMfaConfigAllowedAuthenticators._(this.value);

factory AccessOrgMfaConfigAllowedAuthenticators.fromJson(String json) { return switch (json) {
  'totp' => totp,
  'biometrics' => biometrics,
  'security_key' => securityKey,
  _ => AccessOrgMfaConfigAllowedAuthenticators._(json),
}; }

static const AccessOrgMfaConfigAllowedAuthenticators totp = AccessOrgMfaConfigAllowedAuthenticators._('totp');

static const AccessOrgMfaConfigAllowedAuthenticators biometrics = AccessOrgMfaConfigAllowedAuthenticators._('biometrics');

static const AccessOrgMfaConfigAllowedAuthenticators securityKey = AccessOrgMfaConfigAllowedAuthenticators._('security_key');

static const List<AccessOrgMfaConfigAllowedAuthenticators> values = [totp, biometrics, securityKey];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessOrgMfaConfigAllowedAuthenticators && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessOrgMfaConfigAllowedAuthenticators($value)'; } 
 }
/// Configures multi-factor authentication (MFA) settings for an organization.
final class AccessOrgMfaConfig {const AccessOrgMfaConfig({this.allowedAuthenticators, this.sessionDuration, });

factory AccessOrgMfaConfig.fromJson(Map<String, dynamic> json) { return AccessOrgMfaConfig(
  allowedAuthenticators: (json['allowed_authenticators'] as List<dynamic>?)?.map((e) => AccessOrgMfaConfigAllowedAuthenticators.fromJson(e as String)).toList(),
  sessionDuration: json['session_duration'] as String?,
); }

/// Lists the MFA methods that users can authenticate with.
final List<AccessOrgMfaConfigAllowedAuthenticators>? allowedAuthenticators;

/// Defines the duration of an MFA session. Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days). Examples:`5m` or `24h`.
final String? sessionDuration;

Map<String, dynamic> toJson() { return {
  if (allowedAuthenticators != null) 'allowed_authenticators': allowedAuthenticators?.map((e) => e.toJson()).toList(),
  'session_duration': ?sessionDuration,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowed_authenticators', 'session_duration'}.contains(key)); } 
AccessOrgMfaConfig copyWith({List<AccessOrgMfaConfigAllowedAuthenticators> Function()? allowedAuthenticators, String Function()? sessionDuration, }) { return AccessOrgMfaConfig(
  allowedAuthenticators: allowedAuthenticators != null ? allowedAuthenticators() : this.allowedAuthenticators,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOrgMfaConfig &&
          listEquals(allowedAuthenticators, other.allowedAuthenticators) &&
          sessionDuration == other.sessionDuration; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedAuthenticators ?? const []), sessionDuration); } 
@override String toString() { return 'AccessOrgMfaConfig(allowedAuthenticators: $allowedAuthenticators, sessionDuration: $sessionDuration)'; } 
 }
