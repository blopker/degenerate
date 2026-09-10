// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web_search_approximate_location.dart';import 'web_search_tool_filters.dart';/// High level guidance for the amount of context window space to use for the search. One of `low`, `medium`, or `high`. `medium` is the default.
@immutable final class WebSearchToolSearchContextSize {const WebSearchToolSearchContextSize._(this.value);

factory WebSearchToolSearchContextSize.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  _ => WebSearchToolSearchContextSize._(json),
}; }

static const WebSearchToolSearchContextSize low = WebSearchToolSearchContextSize._('low');

static const WebSearchToolSearchContextSize medium = WebSearchToolSearchContextSize._('medium');

static const WebSearchToolSearchContextSize high = WebSearchToolSearchContextSize._('high');

static const List<WebSearchToolSearchContextSize> values = [low, medium, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolSearchContextSize && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebSearchToolSearchContextSize($value)'; } 
 }
/// Search the Internet for sources related to the prompt. Learn more about the
/// [web search tool](/docs/guides/tools-web-search).
/// 
@immutable final class WebSearchTool {const WebSearchTool({required this.type, this.filters = const Omittable.absent(), this.userLocation = const Omittable.absent(), this.searchContextSize, });

factory WebSearchTool.fromJson(Map<String, dynamic> json) { return WebSearchTool(
  type: json['type'] as String,
  filters: json.containsKey('filters') ? Omittable(json['filters'] != null ? WebSearchToolFilters.fromJson(json['filters'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  userLocation: json.containsKey('user_location') ? Omittable(json['user_location'] != null ? WebSearchApproximateLocation.fromJson(json['user_location'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  searchContextSize: json['search_context_size'] != null ? WebSearchToolSearchContextSize.fromJson(json['search_context_size'] as String) : null,
); }

/// The type of the web search tool. One of `web_search` or `web_search_2025_08_26`.
final String type;

/// Filters for the search.
/// 
final Omittable<WebSearchToolFilters?> filters;

final Omittable<WebSearchApproximateLocation?> userLocation;

/// High level guidance for the amount of context window space to use for the search. One of `low`, `medium`, or `high`. `medium` is the default.
final WebSearchToolSearchContextSize? searchContextSize;

/// The value with the schema default applied when absent.
WebSearchToolSearchContextSize get searchContextSizeOrDefault { return searchContextSize ?? WebSearchToolSearchContextSize.fromJson('medium'); } 
Map<String, dynamic> toJson() { return {
  'type': type,
  if (filters.isPresent) 'filters': filters.value?.toJson(),
  if (userLocation.isPresent) 'user_location': userLocation.value?.toJson(),
  if (searchContextSize != null) 'search_context_size': searchContextSize?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
WebSearchTool copyWith({String? type, Omittable<WebSearchToolFilters?>? filters, Omittable<WebSearchApproximateLocation?>? userLocation, WebSearchToolSearchContextSize? Function()? searchContextSize, }) { return WebSearchTool(
  type: type ?? this.type,
  filters: filters ?? this.filters,
  userLocation: userLocation ?? this.userLocation,
  searchContextSize: searchContextSize != null ? searchContextSize() : this.searchContextSize,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebSearchTool &&
          type == other.type &&
          filters == other.filters &&
          userLocation == other.userLocation &&
          searchContextSize == other.searchContextSize; } 
@override int get hashCode { return Object.hash(type, filters, userLocation, searchContextSize); } 
@override String toString() { return 'WebSearchTool(type: $type, filters: $filters, userLocation: $userLocation, searchContextSize: $searchContextSize)'; } 
 }
