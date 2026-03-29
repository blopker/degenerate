// GENERATED CODE - DO NOT MODIFY BY HAND

import 'brapi_post_scrape_response_result_results.dart';final class BrapiPostScrapeResponseResult {const BrapiPostScrapeResponseResult({required this.results, required this.selector, });

factory BrapiPostScrapeResponseResult.fromJson(Map<String, dynamic> json) { return BrapiPostScrapeResponseResult(
  results: BrapiPostScrapeResponseResultResults.fromJson(json['results'] as Map<String, dynamic>),
  selector: json['selector'] as String,
); }

final BrapiPostScrapeResponseResultResults results;

/// Selector
final String selector;

Map<String, dynamic> toJson() { return {
  'results': results.toJson(),
  'selector': selector,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('results') &&
      json.containsKey('selector') && json['selector'] is String; } 
BrapiPostScrapeResponseResult copyWith({BrapiPostScrapeResponseResultResults? results, String? selector, }) { return BrapiPostScrapeResponseResult(
  results: results ?? this.results,
  selector: selector ?? this.selector,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScrapeResponseResult &&
          results == other.results &&
          selector == other.selector; } 
@override int get hashCode { return Object.hash(results, selector); } 
@override String toString() { return 'BrapiPostScrapeResponseResult(results: $results, selector: $selector)'; } 
 }
