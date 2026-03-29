// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Filters for the search.
/// 
final class WebSearchToolFilters {const WebSearchToolFilters({this.allowedDomains});

factory WebSearchToolFilters.fromJson(Map<String, dynamic> json) { return WebSearchToolFilters(
  allowedDomains: (json['allowed_domains'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Allowed domains for the search. If not provided, all domains are allowed.
/// Subdomains of the provided domains are allowed as well.
/// 
/// Example: `["pubmed.ncbi.nlm.nih.gov"]`
/// 
final List<String>? allowedDomains;

Map<String, dynamic> toJson() { return {
  'allowed_domains': ?allowedDomains,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowed_domains'}.contains(key)); } 
WebSearchToolFilters copyWith({List<String>? Function()? allowedDomains}) { return WebSearchToolFilters(
  allowedDomains: allowedDomains != null ? allowedDomains() : this.allowedDomains,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebSearchToolFilters &&
          listEquals(allowedDomains, other.allowedDomains); } 
@override int get hashCode { return Object.hashAll(allowedDomains ?? const []).hashCode; } 
@override String toString() { return 'WebSearchToolFilters(allowedDomains: $allowedDomains)'; } 
 }
