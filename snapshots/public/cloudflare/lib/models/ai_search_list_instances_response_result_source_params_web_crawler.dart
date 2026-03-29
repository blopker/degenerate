// GENERATED CODE - DO NOT MODIFY BY HAND

import 'ai_search_list_instances_response_result_source_params_web_crawler_crawl_options.dart';import 'ai_search_list_instances_response_result_source_params_web_crawler_parse_options.dart';import 'ai_search_list_instances_response_result_source_params_web_crawler_store_options.dart';final class AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType {const AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType._(this.value);

factory AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType.fromJson(String json) { return switch (json) {
  'sitemap' => sitemap,
  'feed-rss' => feedRss,
  'crawl' => crawl,
  _ => AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType._(json),
}; }

static const AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType sitemap = AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType._('sitemap');

static const AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType feedRss = AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType._('feed-rss');

static const AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType crawl = AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType._('crawl');

static const List<AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType> values = [sitemap, feedRss, crawl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType($value)'; } 
 }
final class AiSearchListInstancesResponseResultSourceParamsWebCrawler {const AiSearchListInstancesResponseResultSourceParamsWebCrawler({this.crawlOptions, this.parseOptions, this.parseType = AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType.sitemap, this.storeOptions, });

factory AiSearchListInstancesResponseResultSourceParamsWebCrawler.fromJson(Map<String, dynamic> json) { return AiSearchListInstancesResponseResultSourceParamsWebCrawler(
  crawlOptions: json['crawl_options'] != null ? AiSearchListInstancesResponseResultSourceParamsWebCrawlerCrawlOptions.fromJson(json['crawl_options'] as Map<String, dynamic>) : null,
  parseOptions: json['parse_options'] != null ? AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseOptions.fromJson(json['parse_options'] as Map<String, dynamic>) : null,
  parseType: json.containsKey('parse_type') ? AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType.fromJson(json['parse_type'] as String) : AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType.sitemap,
  storeOptions: json['store_options'] != null ? AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions.fromJson(json['store_options'] as Map<String, dynamic>) : null,
); }

final AiSearchListInstancesResponseResultSourceParamsWebCrawlerCrawlOptions? crawlOptions;

final AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseOptions? parseOptions;

final AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType parseType;

final AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions? storeOptions;

Map<String, dynamic> toJson() { return {
  if (crawlOptions != null) 'crawl_options': crawlOptions?.toJson(),
  if (parseOptions != null) 'parse_options': parseOptions?.toJson(),
  'parse_type': parseType.toJson(),
  if (storeOptions != null) 'store_options': storeOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AiSearchListInstancesResponseResultSourceParamsWebCrawler copyWith({AiSearchListInstancesResponseResultSourceParamsWebCrawlerCrawlOptions Function()? crawlOptions, AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseOptions Function()? parseOptions, AiSearchListInstancesResponseResultSourceParamsWebCrawlerParseType Function()? parseType, AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions Function()? storeOptions, }) { return AiSearchListInstancesResponseResultSourceParamsWebCrawler(
  crawlOptions: crawlOptions != null ? crawlOptions() : this.crawlOptions,
  parseOptions: parseOptions != null ? parseOptions() : this.parseOptions,
  parseType: parseType != null ? parseType() : this.parseType,
  storeOptions: storeOptions != null ? storeOptions() : this.storeOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchListInstancesResponseResultSourceParamsWebCrawler &&
          crawlOptions == other.crawlOptions &&
          parseOptions == other.parseOptions &&
          parseType == other.parseType &&
          storeOptions == other.storeOptions; } 
@override int get hashCode { return Object.hash(crawlOptions, parseOptions, parseType, storeOptions); } 
@override String toString() { return 'AiSearchListInstancesResponseResultSourceParamsWebCrawler(crawlOptions: $crawlOptions, parseOptions: $parseOptions, parseType: $parseType, storeOptions: $storeOptions)'; } 
 }
