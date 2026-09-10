// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_scheme.dart';@immutable final class AccessProtectedDatabaseBehindCloudflareTunnel2 {const AccessProtectedDatabaseBehindCloudflareTunnel2({required this.database, required this.scheme, required this.user, required this.accessClientId, required this.host, });

factory AccessProtectedDatabaseBehindCloudflareTunnel2.fromJson(Map<String, dynamic> json) { return AccessProtectedDatabaseBehindCloudflareTunnel2(
  database: json['database'] as String,
  scheme: HyperdriveHyperdriveScheme.fromJson(json['scheme'] as String),
  user: json['user'] as String,
  accessClientId: json['access_client_id'] as String,
  host: json['host'] as String,
); }

/// Set the name of your origin database.
final String database;

/// Specifies the URL scheme used to connect to your origin database.
final HyperdriveHyperdriveScheme scheme;

/// Set the user of your origin database.
final String user;

/// Defines the Client ID of the Access token to use when connecting to the origin database.
final String accessClientId;

/// Defines the host (hostname or IP) of your origin database.
final String host;

Map<String, dynamic> toJson() { return {
  'database': database,
  'scheme': scheme.toJson(),
  'user': user,
  'access_client_id': accessClientId,
  'host': host,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('database') && json['database'] is String &&
      json.containsKey('scheme') &&
      json.containsKey('user') && json['user'] is String &&
      json.containsKey('access_client_id') && json['access_client_id'] is String &&
      json.containsKey('host') && json['host'] is String; } 
AccessProtectedDatabaseBehindCloudflareTunnel2 copyWith({String? database, HyperdriveHyperdriveScheme? scheme, String? user, String? accessClientId, String? host, }) { return AccessProtectedDatabaseBehindCloudflareTunnel2(
  database: database ?? this.database,
  scheme: scheme ?? this.scheme,
  user: user ?? this.user,
  accessClientId: accessClientId ?? this.accessClientId,
  host: host ?? this.host,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessProtectedDatabaseBehindCloudflareTunnel2 &&
          database == other.database &&
          scheme == other.scheme &&
          user == other.user &&
          accessClientId == other.accessClientId &&
          host == other.host; } 
@override int get hashCode { return Object.hash(database, scheme, user, accessClientId, host); } 
@override String toString() { return 'AccessProtectedDatabaseBehindCloudflareTunnel2(database: $database, scheme: $scheme, user: $user, accessClientId: $accessClientId, host: $host)'; } 
 }
