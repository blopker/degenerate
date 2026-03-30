// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'volume_projection.dart';/// Represents a projected volume source
final class ProjectedVolumeSource {const ProjectedVolumeSource({this.defaultMode, this.sources, });

factory ProjectedVolumeSource.fromJson(Map<String, dynamic> json) { return ProjectedVolumeSource(
  defaultMode: json['defaultMode'] != null ? (json['defaultMode'] as num).toInt() : null,
  sources: (json['sources'] as List<dynamic>?)?.map((e) => VolumeProjection.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
final int? defaultMode;

/// sources is the list of volume projections. Each entry in this list handles one source.
final List<VolumeProjection>? sources;

Map<String, dynamic> toJson() { return {
  'defaultMode': ?defaultMode,
  if (sources != null) 'sources': sources?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'defaultMode', 'sources'}.contains(key)); } 
ProjectedVolumeSource copyWith({int Function()? defaultMode, List<VolumeProjection> Function()? sources, }) { return ProjectedVolumeSource(
  defaultMode: defaultMode != null ? defaultMode() : this.defaultMode,
  sources: sources != null ? sources() : this.sources,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProjectedVolumeSource &&
          defaultMode == other.defaultMode &&
          listEquals(sources, other.sources); } 
@override int get hashCode { return Object.hash(defaultMode, Object.hashAll(sources ?? const [])); } 
@override String toString() { return 'ProjectedVolumeSource(defaultMode: $defaultMode, sources: $sources)'; } 
 }
