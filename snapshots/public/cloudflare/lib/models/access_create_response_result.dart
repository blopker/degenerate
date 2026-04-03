// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_client_id.dart';import 'access_client_secret.dart';import 'access_duration.dart';import 'access_schemas_name.dart';import 'access_timestamp.dart';@immutable final class AccessCreateResponseResult {const AccessCreateResponseResult({this.clientId, this.clientSecret, this.createdAt, this.duration, this.id, this.name, this.updatedAt, });

factory AccessCreateResponseResult.fromJson(Map<String, dynamic> json) { return AccessCreateResponseResult(
  clientId: json['client_id'] != null ? AccessClientId.fromJson(json['client_id'] as String) : null,
  clientSecret: json['client_secret'] != null ? AccessClientSecret.fromJson(json['client_secret'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  duration: json['duration'] != null ? AccessDuration.fromJson(json['duration'] as String) : null,
  id: json['id'] as String?,
  name: json['name'] != null ? AccessSchemasName.fromJson(json['name'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
); }

/// The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
final AccessClientId? clientId;

/// The Client Secret for the service token. Access will check for this value in the `CF-Access-Client-Secret` request header.
final AccessClientSecret? clientSecret;

final AccessTimestamp? createdAt;

final AccessDuration? duration;

/// The ID of the service token.
final String? id;

final AccessSchemasName? name;

final AccessTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (clientId != null) 'client_id': clientId?.toJson(),
  if (clientSecret != null) 'client_secret': clientSecret?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (duration != null) 'duration': duration?.toJson(),
  'id': ?id,
  if (name != null) 'name': name?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'created_at', 'duration', 'id', 'name', 'updated_at'}.contains(key)); } 
AccessCreateResponseResult copyWith({AccessClientId Function()? clientId, AccessClientSecret Function()? clientSecret, AccessTimestamp Function()? createdAt, AccessDuration Function()? duration, String Function()? id, AccessSchemasName Function()? name, AccessTimestamp Function()? updatedAt, }) { return AccessCreateResponseResult(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  duration: duration != null ? duration() : this.duration,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCreateResponseResult &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          createdAt == other.createdAt &&
          duration == other.duration &&
          id == other.id &&
          name == other.name &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, createdAt, duration, id, name, updatedAt); } 
@override String toString() { return 'AccessCreateResponseResult(clientId: $clientId, clientSecret: $clientSecret, createdAt: $createdAt, duration: $duration, id: $id, name: $name, updatedAt: $updatedAt)'; } 
 }
