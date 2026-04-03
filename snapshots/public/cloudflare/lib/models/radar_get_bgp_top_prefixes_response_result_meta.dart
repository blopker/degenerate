// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_top_prefixes_response_result_meta_date_range.dart';@immutable final class RadarGetBgpTopPrefixesResponseResultMeta {const RadarGetBgpTopPrefixesResponseResultMeta({required this.dateRange});

factory RadarGetBgpTopPrefixesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetBgpTopPrefixesResponseResultMeta(
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetBgpTopPrefixesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetBgpTopPrefixesResponseResultMetaDateRange> dateRange;

Map<String, dynamic> toJson() { return {
  'dateRange': dateRange.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dateRange'); } 
RadarGetBgpTopPrefixesResponseResultMeta copyWith({List<RadarGetBgpTopPrefixesResponseResultMetaDateRange>? dateRange}) { return RadarGetBgpTopPrefixesResponseResultMeta(
  dateRange: dateRange ?? this.dateRange,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpTopPrefixesResponseResultMeta &&
          listEquals(dateRange, other.dateRange); } 
@override int get hashCode { return Object.hashAll(dateRange).hashCode; } 
@override String toString() { return 'RadarGetBgpTopPrefixesResponseResultMeta(dateRange: $dateRange)'; } 
 }
