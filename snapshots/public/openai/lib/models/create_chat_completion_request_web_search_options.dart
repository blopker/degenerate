// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_chat_completion_request_web_search_options_user_location.dart';/// High level guidance for the amount of context window space to use for the
/// search. One of `low`, `medium`, or `high`. `medium` is the default.
/// 
@immutable final class WebSearchContextSize {const WebSearchContextSize._(this.value);

factory WebSearchContextSize.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  _ => WebSearchContextSize._(json),
}; }

static const WebSearchContextSize low = WebSearchContextSize._('low');

static const WebSearchContextSize medium = WebSearchContextSize._('medium');

static const WebSearchContextSize high = WebSearchContextSize._('high');

static const List<WebSearchContextSize> values = [low, medium, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchContextSize && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebSearchContextSize($value)'; } 
 }
/// This tool searches the web for relevant results to use in a response.
/// Learn more about the [web search tool](/docs/guides/tools-web-search?api-mode=chat).
/// 
@immutable final class CreateChatCompletionRequestWebSearchOptions {const CreateChatCompletionRequestWebSearchOptions({this.userLocation, this.searchContextSize, });

factory CreateChatCompletionRequestWebSearchOptions.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequestWebSearchOptions(
  userLocation: json['user_location'] != null ? CreateChatCompletionRequestWebSearchOptionsUserLocation.fromJson(json['user_location'] as Map<String, dynamic>) : null,
  searchContextSize: json['search_context_size'] != null ? WebSearchContextSize.fromJson(json['search_context_size'] as String) : null,
); }

/// Approximate location parameters for the search.
/// 
final CreateChatCompletionRequestWebSearchOptionsUserLocation? userLocation;

final WebSearchContextSize? searchContextSize;

Map<String, dynamic> toJson() { return {
  if (userLocation != null) 'user_location': userLocation?.toJson(),
  if (searchContextSize != null) 'search_context_size': searchContextSize?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'user_location', 'search_context_size'}.contains(key)); } 
CreateChatCompletionRequestWebSearchOptions copyWith({CreateChatCompletionRequestWebSearchOptionsUserLocation? Function()? userLocation, WebSearchContextSize Function()? searchContextSize, }) { return CreateChatCompletionRequestWebSearchOptions(
  userLocation: userLocation != null ? userLocation() : this.userLocation,
  searchContextSize: searchContextSize != null ? searchContextSize() : this.searchContextSize,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateChatCompletionRequestWebSearchOptions &&
          userLocation == other.userLocation &&
          searchContextSize == other.searchContextSize; } 
@override int get hashCode { return Object.hash(userLocation, searchContextSize); } 
@override String toString() { return 'CreateChatCompletionRequestWebSearchOptions(userLocation: $userLocation, searchContextSize: $searchContextSize)'; } 
 }
