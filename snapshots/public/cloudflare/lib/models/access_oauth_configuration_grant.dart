// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Settings for OAuth grant behavior.
@immutable final class AccessOauthConfigurationGrant {const AccessOauthConfigurationGrant({this.accessTokenLifetime, this.sessionDuration, });

factory AccessOauthConfigurationGrant.fromJson(Map<String, dynamic> json) { return AccessOauthConfigurationGrant(
  accessTokenLifetime: json['access_token_lifetime'] as String?,
  sessionDuration: json['session_duration'] as String?,
); }

/// The lifetime of the access token. Must be in the format `300ms` or `2h45m`. Valid time units are ns, us (or µs), ms, s, m, h.
final String? accessTokenLifetime;

/// The duration of the OAuth session. Must be in the format `300ms` or `2h45m`. Valid time units are ns, us (or µs), ms, s, m, h.
final String? sessionDuration;

Map<String, dynamic> toJson() { return {
  'access_token_lifetime': ?accessTokenLifetime,
  'session_duration': ?sessionDuration,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'access_token_lifetime', 'session_duration'}.contains(key)); } 
AccessOauthConfigurationGrant copyWith({String Function()? accessTokenLifetime, String Function()? sessionDuration, }) { return AccessOauthConfigurationGrant(
  accessTokenLifetime: accessTokenLifetime != null ? accessTokenLifetime() : this.accessTokenLifetime,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOauthConfigurationGrant &&
          accessTokenLifetime == other.accessTokenLifetime &&
          sessionDuration == other.sessionDuration; } 
@override int get hashCode { return Object.hash(accessTokenLifetime, sessionDuration); } 
@override String toString() { return 'AccessOauthConfigurationGrant(accessTokenLifetime: $accessTokenLifetime, sessionDuration: $sessionDuration)'; } 
 }
