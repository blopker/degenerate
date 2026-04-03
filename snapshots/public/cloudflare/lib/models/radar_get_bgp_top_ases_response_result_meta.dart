// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_top_ases_response_result_meta_date_range.dart';@immutable final class RadarGetBgpTopAsesResponseResultMeta {const RadarGetBgpTopAsesResponseResultMeta({required this.dateRange});

factory RadarGetBgpTopAsesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetBgpTopAsesResponseResultMeta(
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetBgpTopAsesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetBgpTopAsesResponseResultMetaDateRange> dateRange;

Map<String, dynamic> toJson() { return {
  'dateRange': dateRange.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dateRange'); } 
RadarGetBgpTopAsesResponseResultMeta copyWith({List<RadarGetBgpTopAsesResponseResultMetaDateRange>? dateRange}) { return RadarGetBgpTopAsesResponseResultMeta(
  dateRange: dateRange ?? this.dateRange,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpTopAsesResponseResultMeta &&
          listEquals(dateRange, other.dateRange); } 
@override int get hashCode { return Object.hashAll(dateRange).hashCode; } 
@override String toString() { return 'RadarGetBgpTopAsesResponseResultMeta(dateRange: $dateRange)'; } 
 }
