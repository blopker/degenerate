// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_client_secret_version.dart';import 'access_previous_client_secret_expires_at.dart';import 'access_schemas_duration.dart';import 'access_service_tokens_components_schemas_name.dart';@immutable final class ZoneLevelAccessServiceTokensUpdateAServiceTokenRequest {const ZoneLevelAccessServiceTokensUpdateAServiceTokenRequest({this.clientSecretVersion, this.duration, this.name, this.previousClientSecretExpiresAt, });

factory ZoneLevelAccessServiceTokensUpdateAServiceTokenRequest.fromJson(Map<String, dynamic> json) { return ZoneLevelAccessServiceTokensUpdateAServiceTokenRequest(
  clientSecretVersion: json['client_secret_version'] != null ? AccessClientSecretVersion.fromJson(json['client_secret_version'] as num) : null,
  duration: json['duration'] != null ? AccessSchemasDuration.fromJson(json['duration'] as String) : null,
  name: json['name'] != null ? AccessServiceTokensComponentsSchemasName.fromJson(json['name'] as String) : null,
  previousClientSecretExpiresAt: json['previous_client_secret_expires_at'] != null ? AccessPreviousClientSecretExpiresAt.fromJson(json['previous_client_secret_expires_at'] as String) : null,
); }

/// A version number identifying the current `client_secret` associated with the service token. Incrementing it triggers a rotation; the previous secret will still be accepted until the time indicated by `previous_client_secret_expires_at`.
final AccessClientSecretVersion? clientSecretVersion;

/// The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
final AccessSchemasDuration? duration;

/// The name of the service token.
final AccessServiceTokensComponentsSchemasName? name;

/// The expiration of the previous `client_secret`. This can be modified at any point after a rotation. For example, you may extend it further into the future if you need more time to update services with the new secret; or move it into the past to immediately invalidate the previous token in case of compromise.
final AccessPreviousClientSecretExpiresAt? previousClientSecretExpiresAt;

Map<String, dynamic> toJson() { return {
  if (clientSecretVersion != null) 'client_secret_version': clientSecretVersion?.toJson(),
  if (duration != null) 'duration': duration?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (previousClientSecretExpiresAt != null) 'previous_client_secret_expires_at': previousClientSecretExpiresAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_secret_version', 'duration', 'name', 'previous_client_secret_expires_at'}.contains(key)); } 
ZoneLevelAccessServiceTokensUpdateAServiceTokenRequest copyWith({AccessClientSecretVersion Function()? clientSecretVersion, AccessSchemasDuration Function()? duration, AccessServiceTokensComponentsSchemasName Function()? name, AccessPreviousClientSecretExpiresAt Function()? previousClientSecretExpiresAt, }) { return ZoneLevelAccessServiceTokensUpdateAServiceTokenRequest(
  clientSecretVersion: clientSecretVersion != null ? clientSecretVersion() : this.clientSecretVersion,
  duration: duration != null ? duration() : this.duration,
  name: name != null ? name() : this.name,
  previousClientSecretExpiresAt: previousClientSecretExpiresAt != null ? previousClientSecretExpiresAt() : this.previousClientSecretExpiresAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneLevelAccessServiceTokensUpdateAServiceTokenRequest &&
          clientSecretVersion == other.clientSecretVersion &&
          duration == other.duration &&
          name == other.name &&
          previousClientSecretExpiresAt == other.previousClientSecretExpiresAt; } 
@override int get hashCode { return Object.hash(clientSecretVersion, duration, name, previousClientSecretExpiresAt); } 
@override String toString() { return 'ZoneLevelAccessServiceTokensUpdateAServiceTokenRequest(clientSecretVersion: $clientSecretVersion, duration: $duration, name: $name, previousClientSecretExpiresAt: $previousClientSecretExpiresAt)'; } 
 }
