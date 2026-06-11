// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_launcher_visible.dart';import 'access_app_policy_response.dart';import 'access_apps_components_schemas_name.dart';import 'access_logo_url.dart';import 'access_schemas_aud.dart';import 'access_timestamp.dart';import 'access_type.dart';import 'access_uuid.dart';/// The policies that Access applies to the application.
@immutable final class BookmarkApplication2 {const BookmarkApplication2({this.aud, this.createdAt, this.id, this.updatedAt, this.appLauncherVisible, this.domain, this.logoUrl, this.name, this.tags, this.type, this.policies, });

factory BookmarkApplication2.fromJson(Map<String, dynamic> json) { return BookmarkApplication2(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  appLauncherVisible: json['app_launcher_visible'] != null ? AccessAppLauncherVisible.fromJson(json['app_launcher_visible'] as bool) : null,
  domain: json['domain'] as String?,
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: json['type'] != null ? AccessType.fromJson(json['type'] as String) : null,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => AccessAppPolicyResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessTimestamp? updatedAt;

/// Displays the application in the App Launcher.
final AccessAppLauncherVisible? appLauncherVisible;

/// The URL or domain of the bookmark.
final String? domain;

final AccessLogoUrl? logoUrl;

final AccessAppsComponentsSchemasName? name;

final List<String>? tags;

final AccessType? type;

final List<AccessAppPolicyResponse>? policies;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (appLauncherVisible != null) 'app_launcher_visible': appLauncherVisible?.toJson(),
  'domain': ?domain,
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  'tags': ?tags,
  if (type != null) 'type': type?.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'aud', 'created_at', 'id', 'updated_at', 'app_launcher_visible', 'domain', 'logo_url', 'name', 'tags', 'type', 'policies'}.contains(key)); } 
BookmarkApplication2 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessTimestamp Function()? updatedAt, AccessAppLauncherVisible Function()? appLauncherVisible, String Function()? domain, AccessLogoUrl Function()? logoUrl, AccessAppsComponentsSchemasName Function()? name, List<String> Function()? tags, AccessType Function()? type, List<AccessAppPolicyResponse> Function()? policies, }) { return BookmarkApplication2(
  aud: aud != null ? aud() : this.aud,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  appLauncherVisible: appLauncherVisible != null ? appLauncherVisible() : this.appLauncherVisible,
  domain: domain != null ? domain() : this.domain,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  name: name != null ? name() : this.name,
  tags: tags != null ? tags() : this.tags,
  type: type != null ? type() : this.type,
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BookmarkApplication2 &&
          aud == other.aud &&
          createdAt == other.createdAt &&
          id == other.id &&
          updatedAt == other.updatedAt &&
          appLauncherVisible == other.appLauncherVisible &&
          domain == other.domain &&
          logoUrl == other.logoUrl &&
          name == other.name &&
          listEquals(tags, other.tags) &&
          type == other.type &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hash(aud, createdAt, id, updatedAt, appLauncherVisible, domain, logoUrl, name, Object.hashAll(tags ?? const []), type, Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'BookmarkApplication2(aud: $aud, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, appLauncherVisible: $appLauncherVisible, domain: $domain, logoUrl: $logoUrl, name: $name, tags: $tags, type: $type, policies: $policies)'; } 
 }
