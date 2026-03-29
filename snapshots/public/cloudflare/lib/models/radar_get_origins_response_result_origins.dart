// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_origins_response_result_origins_regions.dart';final class RadarGetOriginsResponseResultOrigins {const RadarGetOriginsResponseResultOrigins({required this.regions, required this.slug, });

factory RadarGetOriginsResponseResultOrigins.fromJson(Map<String, dynamic> json) { return RadarGetOriginsResponseResultOrigins(
  regions: (json['regions'] as List<dynamic>).map((e) => RadarGetOriginsResponseResultOriginsRegions.fromJson(e as Map<String, dynamic>)).toList(),
  slug: json['slug'] as String,
); }

final List<RadarGetOriginsResponseResultOriginsRegions> regions;

/// The origin slug.
final String slug;

Map<String, dynamic> toJson() { return {
  'regions': regions.map((e) => e.toJson()).toList(),
  'slug': slug,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('regions') &&
      json.containsKey('slug') && json['slug'] is String; } 
RadarGetOriginsResponseResultOrigins copyWith({List<RadarGetOriginsResponseResultOriginsRegions>? regions, String? slug, }) { return RadarGetOriginsResponseResultOrigins(
  regions: regions ?? this.regions,
  slug: slug ?? this.slug,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginsResponseResultOrigins &&
          listEquals(regions, other.regions) &&
          slug == other.slug; } 
@override int get hashCode { return Object.hash(Object.hashAll(regions), slug); } 
@override String toString() { return 'RadarGetOriginsResponseResultOrigins(regions: $regions, slug: $slug)'; } 
 }
