// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_scheme.dart';@immutable final class HyperdriveHyperdriveDatabaseResponse {const HyperdriveHyperdriveDatabaseResponse({this.database, this.scheme, this.user, });

factory HyperdriveHyperdriveDatabaseResponse.fromJson(Map<String, dynamic> json) { return HyperdriveHyperdriveDatabaseResponse(
  database: json['database'] as String?,
  scheme: json['scheme'] != null ? HyperdriveHyperdriveScheme.fromJson(json['scheme'] as String) : null,
  user: json['user'] as String?,
); }

/// Set the name of your origin database.
final String? database;

/// Specifies the URL scheme used to connect to your origin database.
final HyperdriveHyperdriveScheme? scheme;

/// Set the user of your origin database.
final String? user;

Map<String, dynamic> toJson() { return {
  'database': ?database,
  if (scheme != null) 'scheme': scheme?.toJson(),
  'user': ?user,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'database', 'scheme', 'user'}.contains(key)); } 
HyperdriveHyperdriveDatabaseResponse copyWith({String? Function()? database, HyperdriveHyperdriveScheme? Function()? scheme, String? Function()? user, }) { return HyperdriveHyperdriveDatabaseResponse(
  database: database != null ? database() : this.database,
  scheme: scheme != null ? scheme() : this.scheme,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HyperdriveHyperdriveDatabaseResponse &&
          database == other.database &&
          scheme == other.scheme &&
          user == other.user; } 
@override int get hashCode { return Object.hash(database, scheme, user); } 
@override String toString() { return 'HyperdriveHyperdriveDatabaseResponse(database: $database, scheme: $scheme, user: $user)'; } 
 }
