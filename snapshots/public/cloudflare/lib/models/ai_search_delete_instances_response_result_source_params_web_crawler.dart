// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_delete_instances_response_result_source_params_web_crawler_crawl_options.dart';import 'ai_search_delete_instances_response_result_source_params_web_crawler_parse_options.dart';import 'ai_search_delete_instances_response_result_source_params_web_crawler_store_options.dart';@immutable final class AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType {const AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType._(this.value);

factory AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType.fromJson(String json) { return switch (json) {
  'sitemap' => sitemap,
  'feed-rss' => feedRss,
  'crawl' => crawl,
  _ => AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType._(json),
}; }

static const AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType sitemap = AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType._('sitemap');

static const AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType feedRss = AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType._('feed-rss');

static const AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType crawl = AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType._('crawl');

static const List<AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType> values = [sitemap, feedRss, crawl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType($value)'; } 
 }
@immutable final class AiSearchDeleteInstancesResponseResultSourceParamsWebCrawler {const AiSearchDeleteInstancesResponseResultSourceParamsWebCrawler({this.crawlOptions, this.parseOptions, this.parseType = AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType.sitemap, this.storeOptions, });

factory AiSearchDeleteInstancesResponseResultSourceParamsWebCrawler.fromJson(Map<String, dynamic> json) { return AiSearchDeleteInstancesResponseResultSourceParamsWebCrawler(
  crawlOptions: json['crawl_options'] != null ? AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerCrawlOptions.fromJson(json['crawl_options'] as Map<String, dynamic>) : null,
  parseOptions: json['parse_options'] != null ? AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseOptions.fromJson(json['parse_options'] as Map<String, dynamic>) : null,
  parseType: json.containsKey('parse_type') ? AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType.fromJson(json['parse_type'] as String) : AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType.sitemap,
  storeOptions: json['store_options'] != null ? AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerStoreOptions.fromJson(json['store_options'] as Map<String, dynamic>) : null,
); }

final AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerCrawlOptions? crawlOptions;

final AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseOptions? parseOptions;

final AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType parseType;

final AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerStoreOptions? storeOptions;

Map<String, dynamic> toJson() { return {
  if (crawlOptions != null) 'crawl_options': crawlOptions?.toJson(),
  if (parseOptions != null) 'parse_options': parseOptions?.toJson(),
  'parse_type': parseType.toJson(),
  if (storeOptions != null) 'store_options': storeOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'crawl_options', 'parse_options', 'parse_type', 'store_options'}.contains(key)); } 
AiSearchDeleteInstancesResponseResultSourceParamsWebCrawler copyWith({AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerCrawlOptions Function()? crawlOptions, AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseOptions Function()? parseOptions, AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerParseType Function()? parseType, AiSearchDeleteInstancesResponseResultSourceParamsWebCrawlerStoreOptions Function()? storeOptions, }) { return AiSearchDeleteInstancesResponseResultSourceParamsWebCrawler(
  crawlOptions: crawlOptions != null ? crawlOptions() : this.crawlOptions,
  parseOptions: parseOptions != null ? parseOptions() : this.parseOptions,
  parseType: parseType != null ? parseType() : this.parseType,
  storeOptions: storeOptions != null ? storeOptions() : this.storeOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchDeleteInstancesResponseResultSourceParamsWebCrawler &&
          crawlOptions == other.crawlOptions &&
          parseOptions == other.parseOptions &&
          parseType == other.parseType &&
          storeOptions == other.storeOptions; } 
@override int get hashCode { return Object.hash(crawlOptions, parseOptions, parseType, storeOptions); } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultSourceParamsWebCrawler(crawlOptions: $crawlOptions, parseOptions: $parseOptions, parseType: $parseType, storeOptions: $storeOptions)'; } 
 }
