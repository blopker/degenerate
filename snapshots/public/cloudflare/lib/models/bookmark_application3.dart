// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps_components_schemas_name.dart';import 'access_logo_url.dart';import 'access_schemas_aud.dart';import 'access_schemas_scim_config.dart';import 'access_timestamp.dart';import 'access_uuid.dart';@immutable final class BookmarkApplication3 {const BookmarkApplication3({required this.domain, required this.type, this.aud, this.createdAt, this.id, this.scimConfig, this.updatedAt, this.appLauncherVisible, this.logoUrl, this.name, });

factory BookmarkApplication3.fromJson(Map<String, dynamic> json) { return BookmarkApplication3(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  scimConfig: json['scim_config'] != null ? AccessSchemasScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  appLauncherVisible: json['app_launcher_visible'],
  domain: json['domain'],
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  type: json['type'] as String,
); }

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessSchemasScimConfig? scimConfig;

final AccessTimestamp? updatedAt;

final dynamic appLauncherVisible;

/// The URL or domain of the bookmark.
final dynamic domain;

final AccessLogoUrl? logoUrl;

final AccessAppsComponentsSchemasName? name;

/// The application type.
final String type;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  'app_launcher_visible': ?appLauncherVisible,
  'domain': ?domain,
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('domain') &&
      json.containsKey('type') && json['type'] is String; } 
BookmarkApplication3 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessSchemasScimConfig Function()? scimConfig, AccessTimestamp Function()? updatedAt, dynamic Function()? appLauncherVisible, dynamic Function()? domain, AccessLogoUrl Function()? logoUrl, AccessAppsComponentsSchemasName Function()? name, String? type, }) { return BookmarkApplication3(
  aud: aud != null ? aud() : this.aud,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  appLauncherVisible: appLauncherVisible != null ? appLauncherVisible() : this.appLauncherVisible,
  domain: domain != null ? domain() : this.domain,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  name: name != null ? name() : this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BookmarkApplication3 &&
          aud == other.aud &&
          createdAt == other.createdAt &&
          id == other.id &&
          scimConfig == other.scimConfig &&
          updatedAt == other.updatedAt &&
          appLauncherVisible == other.appLauncherVisible &&
          domain == other.domain &&
          logoUrl == other.logoUrl &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(aud, createdAt, id, scimConfig, updatedAt, appLauncherVisible, domain, logoUrl, name, type); } 
@override String toString() { return 'BookmarkApplication3(aud: $aud, createdAt: $createdAt, id: $id, scimConfig: $scimConfig, updatedAt: $updatedAt, appLauncherVisible: $appLauncherVisible, domain: $domain, logoUrl: $logoUrl, name: $name, type: $type)'; } 
 }
