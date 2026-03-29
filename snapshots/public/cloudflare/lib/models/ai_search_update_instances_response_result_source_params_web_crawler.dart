// GENERATED CODE - DO NOT MODIFY BY HAND

import 'ai_search_update_instances_response_result_source_params_web_crawler_crawl_options.dart';import 'ai_search_update_instances_response_result_source_params_web_crawler_parse_options.dart';import 'ai_search_update_instances_response_result_source_params_web_crawler_store_options.dart';final class AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType {const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType._(this.value);

factory AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType.fromJson(String json) { return switch (json) {
  'sitemap' => sitemap,
  'feed-rss' => feedRss,
  'crawl' => crawl,
  _ => AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType._(json),
}; }

static const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType sitemap = AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType._('sitemap');

static const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType feedRss = AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType._('feed-rss');

static const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType crawl = AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType._('crawl');

static const List<AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType> values = [sitemap, feedRss, crawl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType($value)'; } 
 }
final class AiSearchUpdateInstancesResponseResultSourceParamsWebCrawler {const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawler({this.crawlOptions, this.parseOptions, this.parseType = AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType.sitemap, this.storeOptions, });

factory AiSearchUpdateInstancesResponseResultSourceParamsWebCrawler.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesResponseResultSourceParamsWebCrawler(
  crawlOptions: json['crawl_options'] != null ? AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions.fromJson(json['crawl_options'] as Map<String, dynamic>) : null,
  parseOptions: json['parse_options'] != null ? AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions.fromJson(json['parse_options'] as Map<String, dynamic>) : null,
  parseType: json.containsKey('parse_type') ? AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType.fromJson(json['parse_type'] as String) : AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType.sitemap,
  storeOptions: json['store_options'] != null ? AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions.fromJson(json['store_options'] as Map<String, dynamic>) : null,
); }

final AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions? crawlOptions;

final AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions? parseOptions;

final AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType parseType;

final AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions? storeOptions;

Map<String, dynamic> toJson() { return {
  if (crawlOptions != null) 'crawl_options': crawlOptions?.toJson(),
  if (parseOptions != null) 'parse_options': parseOptions?.toJson(),
  'parse_type': parseType.toJson(),
  if (storeOptions != null) 'store_options': storeOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AiSearchUpdateInstancesResponseResultSourceParamsWebCrawler copyWith({AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions Function()? crawlOptions, AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseOptions Function()? parseOptions, AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerParseType Function()? parseType, AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions Function()? storeOptions, }) { return AiSearchUpdateInstancesResponseResultSourceParamsWebCrawler(
  crawlOptions: crawlOptions != null ? crawlOptions() : this.crawlOptions,
  parseOptions: parseOptions != null ? parseOptions() : this.parseOptions,
  parseType: parseType != null ? parseType() : this.parseType,
  storeOptions: storeOptions != null ? storeOptions() : this.storeOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesResponseResultSourceParamsWebCrawler &&
          crawlOptions == other.crawlOptions &&
          parseOptions == other.parseOptions &&
          parseType == other.parseType &&
          storeOptions == other.storeOptions; } 
@override int get hashCode { return Object.hash(crawlOptions, parseOptions, parseType, storeOptions); } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultSourceParamsWebCrawler(crawlOptions: $crawlOptions, parseOptions: $parseOptions, parseType: $parseType, storeOptions: $storeOptions)'; } 
 }
