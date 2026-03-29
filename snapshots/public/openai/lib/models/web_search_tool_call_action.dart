// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web_search_action_find.dart';import 'web_search_action_open_page.dart';import 'web_search_action_search.dart';/// An object describing the specific action taken in this web search call.
/// Includes details on how the model used the web (search, open_page, find_in_page).
/// 
sealed class WebSearchToolCallAction {const WebSearchToolCallAction();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory WebSearchToolCallAction.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'WebSearchActionSearch' => WebSearchToolCallActionWebSearchActionSearch.fromJson(json),
  'WebSearchActionOpenPage' => WebSearchToolCallActionWebSearchActionOpenPage.fromJson(json),
  'WebSearchActionFind' => WebSearchToolCallActionWebSearchActionFind.fromJson(json),
  _ => WebSearchToolCallAction$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is WebSearchToolCallAction$Unknown; } 
 }
final class WebSearchToolCallActionWebSearchActionSearch extends WebSearchToolCallAction {const WebSearchToolCallActionWebSearchActionSearch(this.webSearchActionSearch);

factory WebSearchToolCallActionWebSearchActionSearch.fromJson(Map<String, dynamic> json) { return WebSearchToolCallActionWebSearchActionSearch(WebSearchActionSearch.fromJson(json)); }

final WebSearchActionSearch webSearchActionSearch;

@override String get type { return 'WebSearchActionSearch'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...webSearchActionSearch.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolCallActionWebSearchActionSearch && webSearchActionSearch == other.webSearchActionSearch; } 
@override int get hashCode { return webSearchActionSearch.hashCode; } 
@override String toString() { return 'WebSearchToolCallActionWebSearchActionSearch(webSearchActionSearch: $webSearchActionSearch)'; } 
 }
final class WebSearchToolCallActionWebSearchActionOpenPage extends WebSearchToolCallAction {const WebSearchToolCallActionWebSearchActionOpenPage(this.webSearchActionOpenPage);

factory WebSearchToolCallActionWebSearchActionOpenPage.fromJson(Map<String, dynamic> json) { return WebSearchToolCallActionWebSearchActionOpenPage(WebSearchActionOpenPage.fromJson(json)); }

final WebSearchActionOpenPage webSearchActionOpenPage;

@override String get type { return 'WebSearchActionOpenPage'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...webSearchActionOpenPage.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolCallActionWebSearchActionOpenPage && webSearchActionOpenPage == other.webSearchActionOpenPage; } 
@override int get hashCode { return webSearchActionOpenPage.hashCode; } 
@override String toString() { return 'WebSearchToolCallActionWebSearchActionOpenPage(webSearchActionOpenPage: $webSearchActionOpenPage)'; } 
 }
final class WebSearchToolCallActionWebSearchActionFind extends WebSearchToolCallAction {const WebSearchToolCallActionWebSearchActionFind(this.webSearchActionFind);

factory WebSearchToolCallActionWebSearchActionFind.fromJson(Map<String, dynamic> json) { return WebSearchToolCallActionWebSearchActionFind(WebSearchActionFind.fromJson(json)); }

final WebSearchActionFind webSearchActionFind;

@override String get type { return 'WebSearchActionFind'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...webSearchActionFind.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolCallActionWebSearchActionFind && webSearchActionFind == other.webSearchActionFind; } 
@override int get hashCode { return webSearchActionFind.hashCode; } 
@override String toString() { return 'WebSearchToolCallActionWebSearchActionFind(webSearchActionFind: $webSearchActionFind)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class WebSearchToolCallAction$Unknown extends WebSearchToolCallAction {const WebSearchToolCallAction$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebSearchToolCallAction$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'WebSearchToolCallAction.unknown($json)'; } 
 }
