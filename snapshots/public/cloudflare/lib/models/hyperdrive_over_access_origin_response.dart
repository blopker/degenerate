// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class HyperdriveOverAccessOriginResponse {const HyperdriveOverAccessOriginResponse({required this.accessClientId, required this.host, });

factory HyperdriveOverAccessOriginResponse.fromJson(Map<String, dynamic> json) { return HyperdriveOverAccessOriginResponse(
  accessClientId: json['access_client_id'] as String,
  host: json['host'] as String,
); }

/// Defines the Client ID of the Access token to use when connecting to the origin database.
final String accessClientId;

/// Defines the host (hostname or IP) of your origin database.
final String host;

Map<String, dynamic> toJson() { return {
  'access_client_id': accessClientId,
  'host': host,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_client_id') && json['access_client_id'] is String &&
      json.containsKey('host') && json['host'] is String; } 
HyperdriveOverAccessOriginResponse copyWith({String? accessClientId, String? host, }) { return HyperdriveOverAccessOriginResponse(
  accessClientId: accessClientId ?? this.accessClientId,
  host: host ?? this.host,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HyperdriveOverAccessOriginResponse &&
          accessClientId == other.accessClientId &&
          host == other.host; } 
@override int get hashCode { return Object.hash(accessClientId, host); } 
@override String toString() { return 'HyperdriveOverAccessOriginResponse(accessClientId: $accessClientId, host: $host)'; } 
 }
