// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_scheme.dart';@immutable final class AccessProtectedDatabaseBehindCloudflareTunnel {const AccessProtectedDatabaseBehindCloudflareTunnel({required this.database, required this.password, required this.scheme, required this.user, required this.accessClientId, required this.accessClientSecret, required this.host, });

factory AccessProtectedDatabaseBehindCloudflareTunnel.fromJson(Map<String, dynamic> json) { return AccessProtectedDatabaseBehindCloudflareTunnel(
  database: json['database'] as String,
  password: json['password'] as String,
  scheme: HyperdriveHyperdriveScheme.fromJson(json['scheme'] as String),
  user: json['user'] as String,
  accessClientId: json['access_client_id'] as String,
  accessClientSecret: json['access_client_secret'] as String,
  host: json['host'] as String,
); }

/// Set the name of your origin database.
final String database;

/// Set the password needed to access your origin database. The API never returns this write-only value.
final String password;

final HyperdriveHyperdriveScheme scheme;

/// Set the user of your origin database.
final String user;

/// Defines the Client ID of the Access token to use when connecting to the origin database.
final String accessClientId;

/// Defines the Client Secret of the Access Token to use when connecting to the origin database. The API never returns this write-only value.
final String accessClientSecret;

/// Defines the host (hostname or IP) of your origin database.
final String host;

Map<String, dynamic> toJson() { return {
  'database': database,
  'password': password,
  'scheme': scheme.toJson(),
  'user': user,
  'access_client_id': accessClientId,
  'access_client_secret': accessClientSecret,
  'host': host,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('database') && json['database'] is String &&
      json.containsKey('password') && json['password'] is String &&
      json.containsKey('scheme') &&
      json.containsKey('user') && json['user'] is String &&
      json.containsKey('access_client_id') && json['access_client_id'] is String &&
      json.containsKey('access_client_secret') && json['access_client_secret'] is String &&
      json.containsKey('host') && json['host'] is String; } 
AccessProtectedDatabaseBehindCloudflareTunnel copyWith({String? database, String? password, HyperdriveHyperdriveScheme? scheme, String? user, String? accessClientId, String? accessClientSecret, String? host, }) { return AccessProtectedDatabaseBehindCloudflareTunnel(
  database: database ?? this.database,
  password: password ?? this.password,
  scheme: scheme ?? this.scheme,
  user: user ?? this.user,
  accessClientId: accessClientId ?? this.accessClientId,
  accessClientSecret: accessClientSecret ?? this.accessClientSecret,
  host: host ?? this.host,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessProtectedDatabaseBehindCloudflareTunnel &&
          database == other.database &&
          password == other.password &&
          scheme == other.scheme &&
          user == other.user &&
          accessClientId == other.accessClientId &&
          accessClientSecret == other.accessClientSecret &&
          host == other.host; } 
@override int get hashCode { return Object.hash(database, password, scheme, user, accessClientId, accessClientSecret, host); } 
@override String toString() { return 'AccessProtectedDatabaseBehindCloudflareTunnel(database: $database, password: $password, scheme: $scheme, user: $user, accessClientId: $accessClientId, accessClientSecret: $accessClientSecret, host: $host)'; } 
 }
