// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_scheme.dart';@immutable final class PublicDatabase2 {const PublicDatabase2({required this.database, required this.scheme, required this.user, required this.host, required this.port, });

factory PublicDatabase2.fromJson(Map<String, dynamic> json) {return PublicDatabase2(
  database: json['database'] as String,
  scheme: HyperdriveHyperdriveScheme.fromJson(json['scheme'] as String),
  user: json['user'] as String,
  host: json['host'] as String,
  port: (json['port'] as num).toInt(),
);}

/// Set the name of your origin database.
final String database;

/// Specifies the URL scheme used to connect to your origin database.
final HyperdriveHyperdriveScheme scheme;

/// Set the user of your origin database.
final String user;

/// Defines the host (hostname or IP) of your origin database.
final String host;

/// Defines the port of your origin database. Defaults to 5432 for PostgreSQL or 3306 for MySQL if not specified.
final int port;

Map<String, dynamic> toJson() {return {
  'database': database,
  'scheme': scheme.toJson(),
  'user': user,
  'host': host,
  'port': port,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('database') && json['database'] is String &&
      json.containsKey('scheme') &&
      json.containsKey('user') && json['user'] is String &&
      json.containsKey('host') && json['host'] is String &&
      json.containsKey('port') && json['port'] is num;}
PublicDatabase2 copyWith({String? database, HyperdriveHyperdriveScheme? scheme, String? user, String? host, int? port, }) {return PublicDatabase2(
  database: database ?? this.database,
  scheme: scheme ?? this.scheme,
  user: user ?? this.user,
  host: host ?? this.host,
  port: port ?? this.port,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is PublicDatabase2 &&
          database == other.database &&
          scheme == other.scheme &&
          user == other.user &&
          host == other.host &&
          port == other.port;}
@override int get hashCode {return Object.hash(database, scheme, user, host, port);}
@override String toString() {return 'PublicDatabase2(database: $database, scheme: $scheme, user: $user, host: $host, port: $port)';}
}
