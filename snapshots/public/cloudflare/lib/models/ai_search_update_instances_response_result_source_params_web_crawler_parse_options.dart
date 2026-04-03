// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_update_instances_response_result_source_params_web_crawler_parse_options_content_selector.dart';@immutable final class AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions {const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions({this.contentSelector, this.includeHeaders, this.includeImages = false, this.specificSitemaps, this.useBrowserRendering = false, });

factory AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions(
  contentSelector: (json['content_selector'] as List<dynamic>?)?.map((e) => AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector.fromJson(e as Map<String, dynamic>)).toList(),
  includeHeaders: (json['include_headers'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  includeImages: json.containsKey('include_images') ? json['include_images'] as bool : false,
  specificSitemaps: (json['specific_sitemaps'] as List<dynamic>?)?.map((e) => Uri.parse(e as String)).toList(),
  useBrowserRendering: json.containsKey('use_browser_rendering') ? json['use_browser_rendering'] as bool : false,
); }

/// List of path-to-selector mappings for extracting specific content from crawled pages. Each entry pairs a URL glob pattern with a CSS selector. The first matching path wins. Only the matched HTML fragment is stored and indexed.
final List<AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector>? contentSelector;

final Map<String,String>? includeHeaders;

final bool includeImages;

/// List of specific sitemap URLs to use for crawling. Only valid when parse_type is 'sitemap'.
final List<Uri>? specificSitemaps;

final bool useBrowserRendering;

Map<String, dynamic> toJson() { return {
  if (contentSelector != null) 'content_selector': contentSelector?.map((e) => e.toJson()).toList(),
  'include_headers': ?includeHeaders,
  'include_images': includeImages,
  if (specificSitemaps != null) 'specific_sitemaps': specificSitemaps?.map((e) => e.toString()).toList(),
  'use_browser_rendering': useBrowserRendering,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content_selector', 'include_headers', 'include_images', 'specific_sitemaps', 'use_browser_rendering'}.contains(key)); } 
AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions copyWith({List<AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptionsContentSelector> Function()? contentSelector, Map<String, String> Function()? includeHeaders, bool Function()? includeImages, List<Uri> Function()? specificSitemaps, bool Function()? useBrowserRendering, }) { return AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions(
  contentSelector: contentSelector != null ? contentSelector() : this.contentSelector,
  includeHeaders: includeHeaders != null ? includeHeaders() : this.includeHeaders,
  includeImages: includeImages != null ? includeImages() : this.includeImages,
  specificSitemaps: specificSitemaps != null ? specificSitemaps() : this.specificSitemaps,
  useBrowserRendering: useBrowserRendering != null ? useBrowserRendering() : this.useBrowserRendering,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions &&
          listEquals(contentSelector, other.contentSelector) &&
          includeHeaders == other.includeHeaders &&
          includeImages == other.includeImages &&
          listEquals(specificSitemaps, other.specificSitemaps) &&
          useBrowserRendering == other.useBrowserRendering; } 
@override int get hashCode { return Object.hash(Object.hashAll(contentSelector ?? const []), includeHeaders, includeImages, Object.hashAll(specificSitemaps ?? const []), useBrowserRendering); } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions(contentSelector: $contentSelector, includeHeaders: $includeHeaders, includeImages: $includeImages, specificSitemaps: $specificSitemaps, useBrowserRendering: $useBrowserRendering)'; } 
 }
