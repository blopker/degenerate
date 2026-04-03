// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configs for the project build process.
@immutable final class PagesBuildConfig {const PagesBuildConfig({required this.webAnalyticsTag, required this.webAnalyticsToken, this.buildCaching, this.buildCommand, this.destinationDir, this.rootDir, });

factory PagesBuildConfig.fromJson(Map<String, dynamic> json) { return PagesBuildConfig(
  buildCaching: json['build_caching'] as bool?,
  buildCommand: json['build_command'] as String?,
  destinationDir: json['destination_dir'] as String?,
  rootDir: json['root_dir'] as String?,
  webAnalyticsTag: json['web_analytics_tag'] as String?,
  webAnalyticsToken: json['web_analytics_token'] as String?,
); }

/// Enable build caching for the project.
final bool? buildCaching;

/// Command used to build project.
final String? buildCommand;

/// Assets output directory of the build.
final String? destinationDir;

/// Directory to run the command.
final String? rootDir;

/// The classifying tag for analytics.
final String? webAnalyticsTag;

/// The auth token for analytics.
final String? webAnalyticsToken;

Map<String, dynamic> toJson() { return {
  'build_caching': ?buildCaching,
  'build_command': ?buildCommand,
  'destination_dir': ?destinationDir,
  'root_dir': ?rootDir,
  'web_analytics_tag': ?webAnalyticsTag,
  'web_analytics_token': ?webAnalyticsToken,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('web_analytics_tag') && json['web_analytics_tag'] is String &&
      json.containsKey('web_analytics_token') && json['web_analytics_token'] is String; } 
PagesBuildConfig copyWith({bool? Function()? buildCaching, String? Function()? buildCommand, String? Function()? destinationDir, String? Function()? rootDir, String? Function()? webAnalyticsTag, String? Function()? webAnalyticsToken, }) { return PagesBuildConfig(
  buildCaching: buildCaching != null ? buildCaching() : this.buildCaching,
  buildCommand: buildCommand != null ? buildCommand() : this.buildCommand,
  destinationDir: destinationDir != null ? destinationDir() : this.destinationDir,
  rootDir: rootDir != null ? rootDir() : this.rootDir,
  webAnalyticsTag: webAnalyticsTag != null ? webAnalyticsTag() : this.webAnalyticsTag,
  webAnalyticsToken: webAnalyticsToken != null ? webAnalyticsToken() : this.webAnalyticsToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesBuildConfig &&
          buildCaching == other.buildCaching &&
          buildCommand == other.buildCommand &&
          destinationDir == other.destinationDir &&
          rootDir == other.rootDir &&
          webAnalyticsTag == other.webAnalyticsTag &&
          webAnalyticsToken == other.webAnalyticsToken; } 
@override int get hashCode { return Object.hash(buildCaching, buildCommand, destinationDir, rootDir, webAnalyticsTag, webAnalyticsToken); } 
@override String toString() { return 'PagesBuildConfig(buildCaching: $buildCaching, buildCommand: $buildCommand, destinationDir: $destinationDir, rootDir: $rootDir, webAnalyticsTag: $webAnalyticsTag, webAnalyticsToken: $webAnalyticsToken)'; } 
 }
