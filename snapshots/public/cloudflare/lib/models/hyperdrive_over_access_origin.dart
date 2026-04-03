// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class HyperdriveOverAccessOrigin {const HyperdriveOverAccessOrigin({required this.accessClientId, required this.accessClientSecret, required this.host, });

factory HyperdriveOverAccessOrigin.fromJson(Map<String, dynamic> json) { return HyperdriveOverAccessOrigin(
  accessClientId: json['access_client_id'] as String,
  accessClientSecret: json['access_client_secret'] as String,
  host: json['host'] as String,
); }

/// Defines the Client ID of the Access token to use when connecting to the origin database.
final String accessClientId;

/// Defines the Client Secret of the Access Token to use when connecting to the origin database. The API never returns this write-only value.
final String accessClientSecret;

/// Defines the host (hostname or IP) of your origin database.
final String host;

Map<String, dynamic> toJson() { return {
  'access_client_id': accessClientId,
  'access_client_secret': accessClientSecret,
  'host': host,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_client_id') && json['access_client_id'] is String &&
      json.containsKey('access_client_secret') && json['access_client_secret'] is String &&
      json.containsKey('host') && json['host'] is String; } 
HyperdriveOverAccessOrigin copyWith({String? accessClientId, String? accessClientSecret, String? host, }) { return HyperdriveOverAccessOrigin(
  accessClientId: accessClientId ?? this.accessClientId,
  accessClientSecret: accessClientSecret ?? this.accessClientSecret,
  host: host ?? this.host,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HyperdriveOverAccessOrigin &&
          accessClientId == other.accessClientId &&
          accessClientSecret == other.accessClientSecret &&
          host == other.host; } 
@override int get hashCode { return Object.hash(accessClientId, accessClientSecret, host); } 
@override String toString() { return 'HyperdriveOverAccessOrigin(accessClientId: $accessClientId, accessClientSecret: $accessClientSecret, host: $host)'; } 
 }
