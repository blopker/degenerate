// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configs for the project build process.
@immutable final class PagesBuildConfig {const PagesBuildConfig({required this.webAnalyticsTag, required this.webAnalyticsToken, this.buildCaching = const Omittable.absent(), this.buildCommand = const Omittable.absent(), this.destinationDir = const Omittable.absent(), this.rootDir = const Omittable.absent(), });

factory PagesBuildConfig.fromJson(Map<String, dynamic> json) { return PagesBuildConfig(
  buildCaching: json.containsKey('build_caching') ? Omittable(json['build_caching'] as bool?) : const Omittable.absent(),
  buildCommand: json.containsKey('build_command') ? Omittable(json['build_command'] as String?) : const Omittable.absent(),
  destinationDir: json.containsKey('destination_dir') ? Omittable(json['destination_dir'] as String?) : const Omittable.absent(),
  rootDir: json.containsKey('root_dir') ? Omittable(json['root_dir'] as String?) : const Omittable.absent(),
  webAnalyticsTag: json['web_analytics_tag'] as String?,
  webAnalyticsToken: json['web_analytics_token'] as String?,
); }

/// Enable build caching for the project.
final Omittable<bool?> buildCaching;

/// Command used to build project.
final Omittable<String?> buildCommand;

/// Assets output directory of the build.
final Omittable<String?> destinationDir;

/// Directory to run the command.
final Omittable<String?> rootDir;

/// The classifying tag for analytics.
final String? webAnalyticsTag;

/// The auth token for analytics.
final String? webAnalyticsToken;

Map<String, dynamic> toJson() { return {
  if (buildCaching.isPresent) 'build_caching': buildCaching.value,
  if (buildCommand.isPresent) 'build_command': buildCommand.value,
  if (destinationDir.isPresent) 'destination_dir': destinationDir.value,
  if (rootDir.isPresent) 'root_dir': rootDir.value,
  'web_analytics_tag': webAnalyticsTag,
  'web_analytics_token': webAnalyticsToken,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('web_analytics_tag') && (json['web_analytics_tag'] == null || json['web_analytics_tag'] is String) &&
      json.containsKey('web_analytics_token') && (json['web_analytics_token'] == null || json['web_analytics_token'] is String); } 
PagesBuildConfig copyWith({Omittable<bool?>? buildCaching, Omittable<String?>? buildCommand, Omittable<String?>? destinationDir, Omittable<String?>? rootDir, String? Function()? webAnalyticsTag, String? Function()? webAnalyticsToken, }) { return PagesBuildConfig(
  buildCaching: buildCaching ?? this.buildCaching,
  buildCommand: buildCommand ?? this.buildCommand,
  destinationDir: destinationDir ?? this.destinationDir,
  rootDir: rootDir ?? this.rootDir,
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
