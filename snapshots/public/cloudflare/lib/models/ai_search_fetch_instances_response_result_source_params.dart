// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_fetch_instances_response_result_source_params_web_crawler.dart';@immutable final class AiSearchFetchInstancesResponseResultSourceParams {const AiSearchFetchInstancesResponseResultSourceParams({this.excludeItems, this.includeItems, this.prefix, this.r2Jurisdiction = 'default', this.webCrawler, });

factory AiSearchFetchInstancesResponseResultSourceParams.fromJson(Map<String, dynamic> json) { return AiSearchFetchInstancesResponseResultSourceParams(
  excludeItems: (json['exclude_items'] as List<dynamic>?)?.map((e) => e as String).toList(),
  includeItems: (json['include_items'] as List<dynamic>?)?.map((e) => e as String).toList(),
  prefix: json['prefix'] as String?,
  r2Jurisdiction: json.containsKey('r2_jurisdiction') ? json['r2_jurisdiction'] as String : 'default',
  webCrawler: json['web_crawler'] != null ? AiSearchFetchInstancesResponseResultSourceParamsWebCrawler.fromJson(json['web_crawler'] as Map<String, dynamic>) : null,
); }

/// List of path patterns to exclude. Uses micromatch glob syntax: * matches within a path segment, ** matches across path segments (e.g., /admin/** matches /admin/users and /admin/settings/advanced)
final List<String>? excludeItems;

/// List of path patterns to include. Uses micromatch glob syntax: * matches within a path segment, ** matches across path segments (e.g., /blog/** matches /blog/post and /blog/2024/post)
final List<String>? includeItems;

final String? prefix;

final String r2Jurisdiction;

final AiSearchFetchInstancesResponseResultSourceParamsWebCrawler? webCrawler;

Map<String, dynamic> toJson() { return {
  'exclude_items': ?excludeItems,
  'include_items': ?includeItems,
  'prefix': ?prefix,
  'r2_jurisdiction': r2Jurisdiction,
  if (webCrawler != null) 'web_crawler': webCrawler?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'exclude_items', 'include_items', 'prefix', 'r2_jurisdiction', 'web_crawler'}.contains(key)); } 
AiSearchFetchInstancesResponseResultSourceParams copyWith({List<String> Function()? excludeItems, List<String> Function()? includeItems, String Function()? prefix, String Function()? r2Jurisdiction, AiSearchFetchInstancesResponseResultSourceParamsWebCrawler Function()? webCrawler, }) { return AiSearchFetchInstancesResponseResultSourceParams(
  excludeItems: excludeItems != null ? excludeItems() : this.excludeItems,
  includeItems: includeItems != null ? includeItems() : this.includeItems,
  prefix: prefix != null ? prefix() : this.prefix,
  r2Jurisdiction: r2Jurisdiction != null ? r2Jurisdiction() : this.r2Jurisdiction,
  webCrawler: webCrawler != null ? webCrawler() : this.webCrawler,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchFetchInstancesResponseResultSourceParams &&
          listEquals(excludeItems, other.excludeItems) &&
          listEquals(includeItems, other.includeItems) &&
          prefix == other.prefix &&
          r2Jurisdiction == other.r2Jurisdiction &&
          webCrawler == other.webCrawler; } 
@override int get hashCode { return Object.hash(Object.hashAll(excludeItems ?? const []), Object.hashAll(includeItems ?? const []), prefix, r2Jurisdiction, webCrawler); } 
@override String toString() { return 'AiSearchFetchInstancesResponseResultSourceParams(excludeItems: $excludeItems, includeItems: $includeItems, prefix: $prefix, r2Jurisdiction: $r2Jurisdiction, webCrawler: $webCrawler)'; } 
 }
