// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class UrlscannerGetScanResponse2VerdictsOverall {const UrlscannerGetScanResponse2VerdictsOverall({required this.categories, required this.hasVerdicts, required this.malicious, required this.tags, });

factory UrlscannerGetScanResponse2VerdictsOverall.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2VerdictsOverall(
  categories: (json['categories'] as List<dynamic>).map((e) => e as String).toList(),
  hasVerdicts: json['hasVerdicts'] as bool,
  malicious: json['malicious'] as bool,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> categories;

final bool hasVerdicts;

final bool malicious;

final List<String> tags;

Map<String, dynamic> toJson() { return {
  'categories': categories,
  'hasVerdicts': hasVerdicts,
  'malicious': malicious,
  'tags': tags,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('categories') &&
      json.containsKey('hasVerdicts') && json['hasVerdicts'] is bool &&
      json.containsKey('malicious') && json['malicious'] is bool &&
      json.containsKey('tags'); } 
UrlscannerGetScanResponse2VerdictsOverall copyWith({List<String>? categories, bool? hasVerdicts, bool? malicious, List<String>? tags, }) { return UrlscannerGetScanResponse2VerdictsOverall(
  categories: categories ?? this.categories,
  hasVerdicts: hasVerdicts ?? this.hasVerdicts,
  malicious: malicious ?? this.malicious,
  tags: tags ?? this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2VerdictsOverall &&
          listEquals(categories, other.categories) &&
          hasVerdicts == other.hasVerdicts &&
          malicious == other.malicious &&
          listEquals(tags, other.tags); } 
@override int get hashCode { return Object.hash(Object.hashAll(categories), hasVerdicts, malicious, Object.hashAll(tags)); } 
@override String toString() { return 'UrlscannerGetScanResponse2VerdictsOverall(categories: $categories, hasVerdicts: $hasVerdicts, malicious: $malicious, tags: $tags)'; } 
 }
