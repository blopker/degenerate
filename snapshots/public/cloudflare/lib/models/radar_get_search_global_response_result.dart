// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_search_global_response_result_search.dart';final class RadarGetSearchGlobalResponseResult {const RadarGetSearchGlobalResponseResult({required this.search});

factory RadarGetSearchGlobalResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetSearchGlobalResponseResult(
  search: (json['search'] as List<dynamic>).map((e) => RadarGetSearchGlobalResponseResultSearch.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetSearchGlobalResponseResultSearch> search;

Map<String, dynamic> toJson() { return {
  'search': search.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('search'); } 
RadarGetSearchGlobalResponseResult copyWith({List<RadarGetSearchGlobalResponseResultSearch>? search}) { return RadarGetSearchGlobalResponseResult(
  search: search ?? this.search,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetSearchGlobalResponseResult &&
          listEquals(search, other.search); } 
@override int get hashCode { return Object.hashAll(search).hashCode; } 
@override String toString() { return 'RadarGetSearchGlobalResponseResult(search: $search)'; } 
 }
