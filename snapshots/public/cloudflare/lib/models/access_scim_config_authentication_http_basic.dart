// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The authentication scheme to use when making SCIM requests to this application.
@immutable final class AccessScimConfigAuthenticationHttpBasicScheme {const AccessScimConfigAuthenticationHttpBasicScheme._(this.value);

factory AccessScimConfigAuthenticationHttpBasicScheme.fromJson(String json) { return switch (json) {
  'httpbasic' => httpbasic,
  _ => AccessScimConfigAuthenticationHttpBasicScheme._(json),
}; }

static const AccessScimConfigAuthenticationHttpBasicScheme httpbasic = AccessScimConfigAuthenticationHttpBasicScheme._('httpbasic');

static const List<AccessScimConfigAuthenticationHttpBasicScheme> values = [httpbasic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessScimConfigAuthenticationHttpBasicScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessScimConfigAuthenticationHttpBasicScheme($value)'; } 
 }
/// Attributes for configuring HTTP Basic authentication scheme for SCIM provisioning to an application.
@immutable final class AccessScimConfigAuthenticationHttpBasic {const AccessScimConfigAuthenticationHttpBasic({required this.password, required this.scheme, required this.user, });

factory AccessScimConfigAuthenticationHttpBasic.fromJson(Map<String, dynamic> json) { return AccessScimConfigAuthenticationHttpBasic(
  password: json['password'] as String,
  scheme: AccessScimConfigAuthenticationHttpBasicScheme.fromJson(json['scheme'] as String),
  user: json['user'] as String,
); }

/// Password used to authenticate with the remote SCIM service.
final String password;

/// The authentication scheme to use when making SCIM requests to this application.
final AccessScimConfigAuthenticationHttpBasicScheme scheme;

/// User name used to authenticate with the remote SCIM service.
final String user;

Map<String, dynamic> toJson() { return {
  'password': password,
  'scheme': scheme.toJson(),
  'user': user,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('password') && json['password'] is String &&
      json.containsKey('scheme') &&
      json.containsKey('user') && json['user'] is String; } 
AccessScimConfigAuthenticationHttpBasic copyWith({String? password, AccessScimConfigAuthenticationHttpBasicScheme? scheme, String? user, }) { return AccessScimConfigAuthenticationHttpBasic(
  password: password ?? this.password,
  scheme: scheme ?? this.scheme,
  user: user ?? this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessScimConfigAuthenticationHttpBasic &&
          password == other.password &&
          scheme == other.scheme &&
          user == other.user; } 
@override int get hashCode { return Object.hash(password, scheme, user); } 
@override String toString() { return 'AccessScimConfigAuthenticationHttpBasic(password: $password, scheme: $scheme, user: $user)'; } 
 }
