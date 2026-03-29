// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_verdicts_overall_categories.dart';final class UrlscannerGetScanResponseResultScanVerdictsOverall {const UrlscannerGetScanResponseResultScanVerdictsOverall({required this.categories, required this.malicious, required this.phishing, });

factory UrlscannerGetScanResponseResultScanVerdictsOverall.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanVerdictsOverall(
  categories: (json['categories'] as List<dynamic>).map((e) => UrlscannerGetScanResponseResultScanVerdictsOverallCategories.fromJson(e as Map<String, dynamic>)).toList(),
  malicious: json['malicious'] as bool,
  phishing: (json['phishing'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<UrlscannerGetScanResponseResultScanVerdictsOverallCategories> categories;

/// At least one of our subsystems marked the site as potentially malicious at the time of the scan.
final bool malicious;

final List<String> phishing;

Map<String, dynamic> toJson() { return {
  'categories': categories.map((e) => e.toJson()).toList(),
  'malicious': malicious,
  'phishing': phishing,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('categories') &&
      json.containsKey('malicious') && json['malicious'] is bool &&
      json.containsKey('phishing'); } 
UrlscannerGetScanResponseResultScanVerdictsOverall copyWith({List<UrlscannerGetScanResponseResultScanVerdictsOverallCategories>? categories, bool? malicious, List<String>? phishing, }) { return UrlscannerGetScanResponseResultScanVerdictsOverall(
  categories: categories ?? this.categories,
  malicious: malicious ?? this.malicious,
  phishing: phishing ?? this.phishing,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanVerdictsOverall &&
          listEquals(categories, other.categories) &&
          malicious == other.malicious &&
          listEquals(phishing, other.phishing); } 
@override int get hashCode { return Object.hash(Object.hashAll(categories), malicious, Object.hashAll(phishing)); } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanVerdictsOverall(categories: $categories, malicious: $malicious, phishing: $phishing)'; } 
 }
