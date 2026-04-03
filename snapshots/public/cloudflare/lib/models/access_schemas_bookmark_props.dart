// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps_components_schemas_name.dart';import 'access_logo_url.dart';@immutable final class AccessSchemasBookmarkProps {const AccessSchemasBookmarkProps({required this.domain, required this.type, this.appLauncherVisible, this.logoUrl, this.name, });

factory AccessSchemasBookmarkProps.fromJson(Map<String, dynamic> json) { return AccessSchemasBookmarkProps(
  appLauncherVisible: json['app_launcher_visible'],
  domain: json['domain'],
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  type: json['type'] as String,
); }

final dynamic appLauncherVisible;

/// The URL or domain of the bookmark.
final dynamic domain;

/// The image URL for the logo shown in the App Launcher dashboard.
final AccessLogoUrl? logoUrl;

/// The name of the application.
final AccessAppsComponentsSchemasName? name;

/// The application type.
final String type;

Map<String, dynamic> toJson() { return {
  'app_launcher_visible': ?appLauncherVisible,
  'domain': ?domain,
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('domain') &&
      json.containsKey('type') && json['type'] is String; } 
AccessSchemasBookmarkProps copyWith({dynamic Function()? appLauncherVisible, dynamic Function()? domain, AccessLogoUrl Function()? logoUrl, AccessAppsComponentsSchemasName Function()? name, String? type, }) { return AccessSchemasBookmarkProps(
  appLauncherVisible: appLauncherVisible != null ? appLauncherVisible() : this.appLauncherVisible,
  domain: domain != null ? domain() : this.domain,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  name: name != null ? name() : this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasBookmarkProps &&
          appLauncherVisible == other.appLauncherVisible &&
          domain == other.domain &&
          logoUrl == other.logoUrl &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(appLauncherVisible, domain, logoUrl, name, type); } 
@override String toString() { return 'AccessSchemasBookmarkProps(appLauncherVisible: $appLauncherVisible, domain: $domain, logoUrl: $logoUrl, name: $name, type: $type)'; } 
 }
