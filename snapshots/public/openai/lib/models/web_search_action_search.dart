// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web_search_action_search_sources.dart';/// The action type.
/// 
final class WebSearchActionSearchType {const WebSearchActionSearchType._(this.value);

factory WebSearchActionSearchType.fromJson(String json) { return switch (json) {
  'search' => search,
  _ => WebSearchActionSearchType._(json),
}; }

static const WebSearchActionSearchType search = WebSearchActionSearchType._('search');

static const List<WebSearchActionSearchType> values = [search];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchActionSearchType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebSearchActionSearchType($value)'; } 
 }
/// Action type "search" - Performs a web search query.
/// 
final class WebSearchActionSearch {const WebSearchActionSearch({required this.type, required this.query, this.queries, this.sources, });

factory WebSearchActionSearch.fromJson(Map<String, dynamic> json) { return WebSearchActionSearch(
  type: WebSearchActionSearchType.fromJson(json['type'] as String),
  query: json['query'] as String,
  queries: (json['queries'] as List<dynamic>?)?.map((e) => e as String).toList(),
  sources: (json['sources'] as List<dynamic>?)?.map((e) => WebSearchActionSearchSources.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The action type.
/// 
final WebSearchActionSearchType type;

/// [DEPRECATED] The search query.
/// 
final String query;

/// The search queries.
/// 
final List<String>? queries;

/// The sources used in the search.
/// 
final List<WebSearchActionSearchSources>? sources;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'query': query,
  'queries': ?queries,
  if (sources != null) 'sources': sources?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('query') && json['query'] is String; } 
WebSearchActionSearch copyWith({WebSearchActionSearchType? type, String? query, List<String> Function()? queries, List<WebSearchActionSearchSources> Function()? sources, }) { return WebSearchActionSearch(
  type: type ?? this.type,
  query: query ?? this.query,
  queries: queries != null ? queries() : this.queries,
  sources: sources != null ? sources() : this.sources,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebSearchActionSearch &&
          type == other.type &&
          query == other.query &&
          listEquals(queries, other.queries) &&
          listEquals(sources, other.sources); } 
@override int get hashCode { return Object.hash(type, query, Object.hashAll(queries ?? const []), Object.hashAll(sources ?? const [])); } 
@override String toString() { return 'WebSearchActionSearch(type: $type, query: $query, queries: $queries, sources: $sources)'; } 
 }
