// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_catalog_sync_destination_type.dart';import 'mcn_catalog_sync_id.dart';import 'mcn_catalog_sync_update_mode.dart';import 'mcn_error.dart';extension type const McnCatalogSyncDestinationId(String value) {
factory McnCatalogSyncDestinationId.fromJson(String json) => McnCatalogSyncDestinationId(json);

String toJson() => value;

}
@immutable final class McnCatalogSync {const McnCatalogSync({required this.description, required this.destinationId, required this.destinationType, required this.id, required this.lastUserUpdateAt, required this.name, required this.policy, required this.updateMode, this.errors, this.includesDiscoveriesUntil, this.lastAttemptedUpdateAt, this.lastSuccessfulUpdateAt, });

factory McnCatalogSync.fromJson(Map<String, dynamic> json) { return McnCatalogSync(
  description: json['description'] as String,
  destinationId: McnCatalogSyncDestinationId.fromJson(json['destination_id'] as String),
  destinationType: McnCatalogSyncDestinationType.fromJson(json['destination_type'] as String),
  errors: (json['errors'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, McnError.fromJson(v as Map<String, dynamic>))),
  id: McnCatalogSyncId.fromJson(json['id'] as String),
  includesDiscoveriesUntil: json['includes_discoveries_until'] as String?,
  lastAttemptedUpdateAt: json['last_attempted_update_at'] as String?,
  lastSuccessfulUpdateAt: json['last_successful_update_at'] as String?,
  lastUserUpdateAt: json['last_user_update_at'] as String,
  name: json['name'] as String,
  policy: json['policy'] as String,
  updateMode: McnCatalogSyncUpdateMode.fromJson(json['update_mode'] as String),
); }

final String description;

final McnCatalogSyncDestinationId destinationId;

final McnCatalogSyncDestinationType destinationType;

final Map<String,McnError>? errors;

final McnCatalogSyncId id;

final String? includesDiscoveriesUntil;

final String? lastAttemptedUpdateAt;

final String? lastSuccessfulUpdateAt;

final String lastUserUpdateAt;

final String name;

final String policy;

final McnCatalogSyncUpdateMode updateMode;

Map<String, dynamic> toJson() { return {
  'description': description,
  'destination_id': destinationId.toJson(),
  'destination_type': destinationType.toJson(),
  if (errors != null) 'errors': errors?.map((k, v) => MapEntry(k, v.toJson())),
  'id': id.toJson(),
  'includes_discoveries_until': ?includesDiscoveriesUntil,
  'last_attempted_update_at': ?lastAttemptedUpdateAt,
  'last_successful_update_at': ?lastSuccessfulUpdateAt,
  'last_user_update_at': lastUserUpdateAt,
  'name': name,
  'policy': policy,
  'update_mode': updateMode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('destination_id') &&
      json.containsKey('destination_type') &&
      json.containsKey('id') &&
      json.containsKey('last_user_update_at') && json['last_user_update_at'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('policy') && json['policy'] is String &&
      json.containsKey('update_mode'); } 
McnCatalogSync copyWith({String? description, McnCatalogSyncDestinationId? destinationId, McnCatalogSyncDestinationType? destinationType, Map<String, McnError> Function()? errors, McnCatalogSyncId? id, String Function()? includesDiscoveriesUntil, String Function()? lastAttemptedUpdateAt, String Function()? lastSuccessfulUpdateAt, String? lastUserUpdateAt, String? name, String? policy, McnCatalogSyncUpdateMode? updateMode, }) { return McnCatalogSync(
  description: description ?? this.description,
  destinationId: destinationId ?? this.destinationId,
  destinationType: destinationType ?? this.destinationType,
  errors: errors != null ? errors() : this.errors,
  id: id ?? this.id,
  includesDiscoveriesUntil: includesDiscoveriesUntil != null ? includesDiscoveriesUntil() : this.includesDiscoveriesUntil,
  lastAttemptedUpdateAt: lastAttemptedUpdateAt != null ? lastAttemptedUpdateAt() : this.lastAttemptedUpdateAt,
  lastSuccessfulUpdateAt: lastSuccessfulUpdateAt != null ? lastSuccessfulUpdateAt() : this.lastSuccessfulUpdateAt,
  lastUserUpdateAt: lastUserUpdateAt ?? this.lastUserUpdateAt,
  name: name ?? this.name,
  policy: policy ?? this.policy,
  updateMode: updateMode ?? this.updateMode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnCatalogSync &&
          description == other.description &&
          destinationId == other.destinationId &&
          destinationType == other.destinationType &&
          errors == other.errors &&
          id == other.id &&
          includesDiscoveriesUntil == other.includesDiscoveriesUntil &&
          lastAttemptedUpdateAt == other.lastAttemptedUpdateAt &&
          lastSuccessfulUpdateAt == other.lastSuccessfulUpdateAt &&
          lastUserUpdateAt == other.lastUserUpdateAt &&
          name == other.name &&
          policy == other.policy &&
          updateMode == other.updateMode; } 
@override int get hashCode { return Object.hash(description, destinationId, destinationType, errors, id, includesDiscoveriesUntil, lastAttemptedUpdateAt, lastSuccessfulUpdateAt, lastUserUpdateAt, name, policy, updateMode); } 
@override String toString() { return 'McnCatalogSync(description: $description, destinationId: $destinationId, destinationType: $destinationType, errors: $errors, id: $id, includesDiscoveriesUntil: $includesDiscoveriesUntil, lastAttemptedUpdateAt: $lastAttemptedUpdateAt, lastSuccessfulUpdateAt: $lastSuccessfulUpdateAt, lastUserUpdateAt: $lastUserUpdateAt, name: $name, policy: $policy, updateMode: $updateMode)'; } 
 }
