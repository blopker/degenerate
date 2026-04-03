// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource {const AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource._(this.value);

factory AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource.fromJson(String json) { return switch (json) {
  'all' => all,
  'sitemaps' => sitemaps,
  'links' => links,
  _ => AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource._(json),
}; }

static const AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource all = AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource._('all');

static const AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource sitemaps = AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource._('sitemaps');

static const AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource links = AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource._('links');

static const List<AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource> values = [all, sitemaps, links];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource($value)'; } 
 }
@immutable final class AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptions {const AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptions({this.depth, this.includeExternalLinks = false, this.includeSubdomains = false, this.maxAge, this.source = AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource.all, });

factory AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptions.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptions(
  depth: json['depth'] != null ? (json['depth'] as num).toDouble() : null,
  includeExternalLinks: json.containsKey('include_external_links') ? json['include_external_links'] as bool : false,
  includeSubdomains: json.containsKey('include_subdomains') ? json['include_subdomains'] as bool : false,
  maxAge: json['max_age'] != null ? (json['max_age'] as num).toDouble() : null,
  source: json.containsKey('source') ? AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource.fromJson(json['source'] as String) : AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource.all,
); }

final double? depth;

final bool includeExternalLinks;

final bool includeSubdomains;

final double? maxAge;

final AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource source;

Map<String, dynamic> toJson() { return {
  'depth': ?depth,
  'include_external_links': includeExternalLinks,
  'include_subdomains': includeSubdomains,
  'max_age': ?maxAge,
  'source': source.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'depth', 'include_external_links', 'include_subdomains', 'max_age', 'source'}.contains(key)); } 
AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptions copyWith({double Function()? depth, bool Function()? includeExternalLinks, bool Function()? includeSubdomains, double Function()? maxAge, AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptionsSource Function()? source, }) { return AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptions(
  depth: depth != null ? depth() : this.depth,
  includeExternalLinks: includeExternalLinks != null ? includeExternalLinks() : this.includeExternalLinks,
  includeSubdomains: includeSubdomains != null ? includeSubdomains() : this.includeSubdomains,
  maxAge: maxAge != null ? maxAge() : this.maxAge,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptions &&
          depth == other.depth &&
          includeExternalLinks == other.includeExternalLinks &&
          includeSubdomains == other.includeSubdomains &&
          maxAge == other.maxAge &&
          source == other.source; } 
@override int get hashCode { return Object.hash(depth, includeExternalLinks, includeSubdomains, maxAge, source); } 
@override String toString() { return 'AiSearchUpdateInstancesRequestSourceParamsWebCrawlerCrawlOptions(depth: $depth, includeExternalLinks: $includeExternalLinks, includeSubdomains: $includeSubdomains, maxAge: $maxAge, source: $source)'; } 
 }
