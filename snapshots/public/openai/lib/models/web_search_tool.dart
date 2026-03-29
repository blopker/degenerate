// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web_search_approximate_location.dart';import 'web_search_tool_filters.dart';/// High level guidance for the amount of context window space to use for the search. One of `low`, `medium`, or `high`. `medium` is the default.
final class WebSearchToolSearchContextSize {const WebSearchToolSearchContextSize._(this.value);

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
final class WebSearchTool {const WebSearchTool({this.type = 'web_search', this.filters, this.userLocation, this.searchContextSize = WebSearchToolSearchContextSize.medium, });

factory WebSearchTool.fromJson(Map<String, dynamic> json) { return WebSearchTool(
  type: json['type'] as String,
  filters: json['filters'] != null ? WebSearchToolFilters.fromJson(json['filters'] as Map<String, dynamic>) : null,
  userLocation: json['user_location'] != null ? WebSearchApproximateLocation.fromJson(json['user_location'] as Map<String, dynamic>) : null,
  searchContextSize: json.containsKey('search_context_size') ? WebSearchToolSearchContextSize.fromJson(json['search_context_size'] as String) : WebSearchToolSearchContextSize.medium,
); }

/// The type of the web search tool. One of `web_search` or `web_search_2025_08_26`.
final String type;

/// Filters for the search.
/// 
final WebSearchToolFilters? filters;

final WebSearchApproximateLocation? userLocation;

/// High level guidance for the amount of context window space to use for the search. One of `low`, `medium`, or `high`. `medium` is the default.
final WebSearchToolSearchContextSize searchContextSize;

Map<String, dynamic> toJson() { return {
  'type': type,
  if (filters != null) 'filters': filters?.toJson(),
  if (userLocation != null) 'user_location': userLocation?.toJson(),
  'search_context_size': searchContextSize.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
WebSearchTool copyWith({String? type, WebSearchToolFilters? Function()? filters, WebSearchApproximateLocation Function()? userLocation, WebSearchToolSearchContextSize Function()? searchContextSize, }) { return WebSearchTool(
  type: type ?? this.type,
  filters: filters != null ? filters() : this.filters,
  userLocation: userLocation != null ? userLocation() : this.userLocation,
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
