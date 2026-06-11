// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps_components_schemas_session_duration.dart';import 'access_schemas_aud.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_scim_config.dart';import 'access_timestamp.dart';import 'access_uuid.dart';@immutable final class DeviceEnrollmentPermissionsApplication3 {const DeviceEnrollmentPermissionsApplication3({required this.type, this.aud, this.createdAt, this.id, this.scimConfig, this.updatedAt, this.allowedIdps, this.autoRedirectToIdentity, this.domain, this.name, this.sessionDuration, });

factory DeviceEnrollmentPermissionsApplication3.fromJson(Map<String, dynamic> json) { return DeviceEnrollmentPermissionsApplication3(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  scimConfig: json['scim_config'] != null ? AccessSchemasScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  domain: json['domain'],
  name: json['name'],
  sessionDuration: json['session_duration'] != null ? AccessAppsComponentsSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  type: json['type'] as String,
); }

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessSchemasScimConfig? scimConfig;

final AccessTimestamp? updatedAt;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final dynamic domain;

final dynamic name;

final AccessAppsComponentsSchemasSessionDuration? sessionDuration;

/// The application type.
final String type;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  'allowed_idps': ?allowedIdps,
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  'domain': ?domain,
  'name': ?name,
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
DeviceEnrollmentPermissionsApplication3 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessSchemasScimConfig Function()? scimConfig, AccessTimestamp Function()? updatedAt, List<String> Function()? allowedIdps, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, dynamic Function()? domain, dynamic Function()? name, AccessAppsComponentsSchemasSessionDuration Function()? sessionDuration, String? type, }) { return DeviceEnrollmentPermissionsApplication3(
  aud: aud != null ? aud() : this.aud,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  domain: domain != null ? domain() : this.domain,
  name: name != null ? name() : this.name,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeviceEnrollmentPermissionsApplication3 &&
          aud == other.aud &&
          createdAt == other.createdAt &&
          id == other.id &&
          scimConfig == other.scimConfig &&
          updatedAt == other.updatedAt &&
          listEquals(allowedIdps, other.allowedIdps) &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          domain == other.domain &&
          name == other.name &&
          sessionDuration == other.sessionDuration &&
          type == other.type; } 
@override int get hashCode { return Object.hash(aud, createdAt, id, scimConfig, updatedAt, Object.hashAll(allowedIdps ?? const []), autoRedirectToIdentity, domain, name, sessionDuration, type); } 
@override String toString() { return 'DeviceEnrollmentPermissionsApplication3(aud: $aud, createdAt: $createdAt, id: $id, scimConfig: $scimConfig, updatedAt: $updatedAt, allowedIdps: $allowedIdps, autoRedirectToIdentity: $autoRedirectToIdentity, domain: $domain, name: $name, sessionDuration: $sessionDuration, type: $type)'; } 
 }
