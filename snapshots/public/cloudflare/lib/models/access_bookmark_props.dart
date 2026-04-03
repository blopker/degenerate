// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_launcher_visible.dart';import 'access_apps_components_schemas_name.dart';import 'access_logo_url.dart';import 'access_type.dart';@immutable final class AccessBookmarkProps {const AccessBookmarkProps({this.appLauncherVisible, this.domain, this.logoUrl, this.name, this.tags, this.type, });

factory AccessBookmarkProps.fromJson(Map<String, dynamic> json) { return AccessBookmarkProps(
  appLauncherVisible: json['app_launcher_visible'] != null ? AccessAppLauncherVisible.fromJson(json['app_launcher_visible'] as bool) : null,
  domain: json['domain'] as String?,
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: json['type'] != null ? AccessType.fromJson(json['type'] as String) : null,
); }

/// Displays the application in the App Launcher.
final AccessAppLauncherVisible? appLauncherVisible;

/// The URL or domain of the bookmark.
final String? domain;

final AccessLogoUrl? logoUrl;

/// The name of the application.
final AccessAppsComponentsSchemasName? name;

final List<String>? tags;

final AccessType? type;

Map<String, dynamic> toJson() { return {
  if (appLauncherVisible != null) 'app_launcher_visible': appLauncherVisible?.toJson(),
  'domain': ?domain,
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  'tags': ?tags,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'app_launcher_visible', 'domain', 'logo_url', 'name', 'tags', 'type'}.contains(key)); } 
AccessBookmarkProps copyWith({AccessAppLauncherVisible Function()? appLauncherVisible, String Function()? domain, AccessLogoUrl Function()? logoUrl, AccessAppsComponentsSchemasName Function()? name, List<String> Function()? tags, AccessType Function()? type, }) { return AccessBookmarkProps(
  appLauncherVisible: appLauncherVisible != null ? appLauncherVisible() : this.appLauncherVisible,
  domain: domain != null ? domain() : this.domain,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  name: name != null ? name() : this.name,
  tags: tags != null ? tags() : this.tags,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessBookmarkProps &&
          appLauncherVisible == other.appLauncherVisible &&
          domain == other.domain &&
          logoUrl == other.logoUrl &&
          name == other.name &&
          listEquals(tags, other.tags) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(appLauncherVisible, domain, logoUrl, name, Object.hashAll(tags ?? const []), type); } 
@override String toString() { return 'AccessBookmarkProps(appLauncherVisible: $appLauncherVisible, domain: $domain, logoUrl: $logoUrl, name: $name, tags: $tags, type: $type)'; } 
 }
