// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_active_sessions_response_result_metadata.dart';final class AccessActiveSessionsResponseResult {const AccessActiveSessionsResponseResult({this.expiration, this.metadata, this.name, });

factory AccessActiveSessionsResponseResult.fromJson(Map<String, dynamic> json) { return AccessActiveSessionsResponseResult(
  expiration: json['expiration'] != null ? (json['expiration'] as num).toInt() : null,
  metadata: json['metadata'] != null ? AccessActiveSessionsResponseResultMetadata.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  name: json['name'] as String?,
); }

final int? expiration;

final AccessActiveSessionsResponseResultMetadata? metadata;

final String? name;

Map<String, dynamic> toJson() { return {
  'expiration': ?expiration,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expiration', 'metadata', 'name'}.contains(key)); } 
AccessActiveSessionsResponseResult copyWith({int Function()? expiration, AccessActiveSessionsResponseResultMetadata Function()? metadata, String Function()? name, }) { return AccessActiveSessionsResponseResult(
  expiration: expiration != null ? expiration() : this.expiration,
  metadata: metadata != null ? metadata() : this.metadata,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessActiveSessionsResponseResult &&
          expiration == other.expiration &&
          metadata == other.metadata &&
          name == other.name; } 
@override int get hashCode { return Object.hash(expiration, metadata, name); } 
@override String toString() { return 'AccessActiveSessionsResponseResult(expiration: $expiration, metadata: $metadata, name: $name)'; } 
 }
