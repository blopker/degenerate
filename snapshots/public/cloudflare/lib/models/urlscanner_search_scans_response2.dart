// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_search_scans_response2_results.dart';final class UrlscannerSearchScansResponse2 {const UrlscannerSearchScansResponse2({required this.results});

factory UrlscannerSearchScansResponse2.fromJson(Map<String, dynamic> json) { return UrlscannerSearchScansResponse2(
  results: (json['results'] as List<dynamic>).map((e) => UrlscannerSearchScansResponse2Results.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UrlscannerSearchScansResponse2Results> results;

Map<String, dynamic> toJson() { return {
  'results': results.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('results'); } 
UrlscannerSearchScansResponse2 copyWith({List<UrlscannerSearchScansResponse2Results>? results}) { return UrlscannerSearchScansResponse2(
  results: results ?? this.results,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerSearchScansResponse2 &&
          listEquals(results, other.results); } 
@override int get hashCode { return Object.hashAll(results).hashCode; } 
@override String toString() { return 'UrlscannerSearchScansResponse2(results: $results)'; } 
 }
