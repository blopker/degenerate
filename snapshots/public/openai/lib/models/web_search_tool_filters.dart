// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Filters for the search.
/// 
@immutable final class WebSearchToolFilters {const WebSearchToolFilters({this.allowedDomains = const Omittable.absent()});

factory WebSearchToolFilters.fromJson(Map<String, dynamic> json) { return WebSearchToolFilters(
  allowedDomains: json.containsKey('allowed_domains') ? Omittable((json['allowed_domains'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// Allowed domains for the search. If not provided, all domains are allowed.
/// Subdomains of the provided domains are allowed as well.
/// 
/// Example: `["pubmed.ncbi.nlm.nih.gov"]`
/// 
final Omittable<List<String>?> allowedDomains;

Map<String, dynamic> toJson() { return {
  if (allowedDomains.isPresent) 'allowed_domains': allowedDomains.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowed_domains'}.contains(key)); } 
WebSearchToolFilters copyWith({Omittable<List<String>?>? allowedDomains}) { return WebSearchToolFilters(
  allowedDomains: allowedDomains ?? this.allowedDomains,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebSearchToolFilters &&
          allowedDomains.isPresent == other.allowedDomains.isPresent &&
          listEquals(allowedDomains.value, other.allowedDomains.value); } 
@override int get hashCode { return Object.hashAll(allowedDomains.value ?? const []).hashCode; } 
@override String toString() { return 'WebSearchToolFilters(allowedDomains: $allowedDomains)'; } 
 }
