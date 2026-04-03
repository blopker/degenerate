// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessMfaConfigAllowedAuthenticators {const AccessMfaConfigAllowedAuthenticators._(this.value);

factory AccessMfaConfigAllowedAuthenticators.fromJson(String json) { return switch (json) {
  'totp' => totp,
  'biometrics' => biometrics,
  'security_key' => securityKey,
  _ => AccessMfaConfigAllowedAuthenticators._(json),
}; }

static const AccessMfaConfigAllowedAuthenticators totp = AccessMfaConfigAllowedAuthenticators._('totp');

static const AccessMfaConfigAllowedAuthenticators biometrics = AccessMfaConfigAllowedAuthenticators._('biometrics');

static const AccessMfaConfigAllowedAuthenticators securityKey = AccessMfaConfigAllowedAuthenticators._('security_key');

static const List<AccessMfaConfigAllowedAuthenticators> values = [totp, biometrics, securityKey];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessMfaConfigAllowedAuthenticators && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessMfaConfigAllowedAuthenticators($value)'; } 
 }
/// Configures multi-factor authentication (MFA) settings.
@immutable final class AccessMfaConfig {const AccessMfaConfig({this.allowedAuthenticators, this.mfaDisabled, this.sessionDuration, });

factory AccessMfaConfig.fromJson(Map<String, dynamic> json) { return AccessMfaConfig(
  allowedAuthenticators: (json['allowed_authenticators'] as List<dynamic>?)?.map((e) => AccessMfaConfigAllowedAuthenticators.fromJson(e as String)).toList(),
  mfaDisabled: json['mfa_disabled'] as bool?,
  sessionDuration: json['session_duration'] as String?,
); }

/// Lists the MFA methods that users can authenticate with.
final List<AccessMfaConfigAllowedAuthenticators>? allowedAuthenticators;

/// Indicates whether to disable MFA for this resource. This option is available at the application and policy level.
final bool? mfaDisabled;

/// Defines the duration of an MFA session. Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days). Examples:`5m` or `24h`.
final String? sessionDuration;

Map<String, dynamic> toJson() { return {
  if (allowedAuthenticators != null) 'allowed_authenticators': allowedAuthenticators?.map((e) => e.toJson()).toList(),
  'mfa_disabled': ?mfaDisabled,
  'session_duration': ?sessionDuration,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowed_authenticators', 'mfa_disabled', 'session_duration'}.contains(key)); } 
AccessMfaConfig copyWith({List<AccessMfaConfigAllowedAuthenticators> Function()? allowedAuthenticators, bool Function()? mfaDisabled, String Function()? sessionDuration, }) { return AccessMfaConfig(
  allowedAuthenticators: allowedAuthenticators != null ? allowedAuthenticators() : this.allowedAuthenticators,
  mfaDisabled: mfaDisabled != null ? mfaDisabled() : this.mfaDisabled,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessMfaConfig &&
          listEquals(allowedAuthenticators, other.allowedAuthenticators) &&
          mfaDisabled == other.mfaDisabled &&
          sessionDuration == other.sessionDuration; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedAuthenticators ?? const []), mfaDisabled, sessionDuration); } 
@override String toString() { return 'AccessMfaConfig(allowedAuthenticators: $allowedAuthenticators, mfaDisabled: $mfaDisabled, sessionDuration: $sessionDuration)'; } 
 }
