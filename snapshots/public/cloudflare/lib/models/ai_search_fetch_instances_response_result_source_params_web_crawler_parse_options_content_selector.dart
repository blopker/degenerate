// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchFetchInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector {const AiSearchFetchInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector({required this.path, required this.selector, });

factory AiSearchFetchInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector.fromJson(Map<String, dynamic> json) { return AiSearchFetchInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector(
  path: json['path'] as String,
  selector: json['selector'] as String,
); }

/// Glob pattern to match against the page URL path. Uses standard glob syntax: * matches within a segment, ** crosses directories.
final String path;

/// CSS selector to extract content from pages matching the path pattern. Supports standard CSS selectors including class, ID, element, and attribute selectors.
final String selector;

Map<String, dynamic> toJson() { return {
  'path': path,
  'selector': selector,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('path') && json['path'] is String &&
      json.containsKey('selector') && json['selector'] is String; } 
AiSearchFetchInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector copyWith({String? path, String? selector, }) { return AiSearchFetchInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector(
  path: path ?? this.path,
  selector: selector ?? this.selector,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchFetchInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector &&
          path == other.path &&
          selector == other.selector; } 
@override int get hashCode { return Object.hash(path, selector); } 
@override String toString() { return 'AiSearchFetchInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector(path: $path, selector: $selector)'; } 
 }
