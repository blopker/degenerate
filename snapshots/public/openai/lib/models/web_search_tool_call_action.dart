// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web_search_action_find.dart';import 'web_search_action_open_page.dart';import 'web_search_action_search.dart';/// An object describing the specific action taken in this web search call.
/// Includes details on how the model used the web (search, open_page, find_in_page).
/// 
sealed class WebSearchToolCallAction {const WebSearchToolCallAction();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory WebSearchToolCallAction.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'search' => WebSearchToolCallActionSearch.fromJson(json),
  'open_page' => WebSearchToolCallActionOpenPage.fromJson(json),
  'find_in_page' => WebSearchToolCallActionFindInPage.fromJson(json),
  _ => WebSearchToolCallAction$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is WebSearchToolCallAction$Unknown; } 
 }
@immutable final class WebSearchToolCallActionSearch extends WebSearchToolCallAction {const WebSearchToolCallActionSearch(this.webSearchActionSearch);

factory WebSearchToolCallActionSearch.fromJson(Map<String, dynamic> json) { return WebSearchToolCallActionSearch(WebSearchActionSearch.fromJson(json)); }

final WebSearchActionSearch webSearchActionSearch;

@override String get type { return 'search'; } 
@override Map<String, dynamic> toJson() { return {...webSearchActionSearch.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolCallActionSearch && webSearchActionSearch == other.webSearchActionSearch; } 
@override int get hashCode { return webSearchActionSearch.hashCode; } 
@override String toString() { return 'WebSearchToolCallActionSearch(webSearchActionSearch: $webSearchActionSearch)'; } 
 }
@immutable final class WebSearchToolCallActionOpenPage extends WebSearchToolCallAction {const WebSearchToolCallActionOpenPage(this.webSearchActionOpenPage);

factory WebSearchToolCallActionOpenPage.fromJson(Map<String, dynamic> json) { return WebSearchToolCallActionOpenPage(WebSearchActionOpenPage.fromJson(json)); }

final WebSearchActionOpenPage webSearchActionOpenPage;

@override String get type { return 'open_page'; } 
@override Map<String, dynamic> toJson() { return {...webSearchActionOpenPage.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolCallActionOpenPage && webSearchActionOpenPage == other.webSearchActionOpenPage; } 
@override int get hashCode { return webSearchActionOpenPage.hashCode; } 
@override String toString() { return 'WebSearchToolCallActionOpenPage(webSearchActionOpenPage: $webSearchActionOpenPage)'; } 
 }
@immutable final class WebSearchToolCallActionFindInPage extends WebSearchToolCallAction {const WebSearchToolCallActionFindInPage(this.webSearchActionFind);

factory WebSearchToolCallActionFindInPage.fromJson(Map<String, dynamic> json) { return WebSearchToolCallActionFindInPage(WebSearchActionFind.fromJson(json)); }

final WebSearchActionFind webSearchActionFind;

@override String get type { return 'find_in_page'; } 
@override Map<String, dynamic> toJson() { return {...webSearchActionFind.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolCallActionFindInPage && webSearchActionFind == other.webSearchActionFind; } 
@override int get hashCode { return webSearchActionFind.hashCode; } 
@override String toString() { return 'WebSearchToolCallActionFindInPage(webSearchActionFind: $webSearchActionFind)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class WebSearchToolCallAction$Unknown extends WebSearchToolCallAction {const WebSearchToolCallAction$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolCallAction$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'WebSearchToolCallAction.unknown($json)'; } 
 }
