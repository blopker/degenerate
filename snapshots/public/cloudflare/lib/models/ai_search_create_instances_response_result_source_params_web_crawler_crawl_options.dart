// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource {const AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._(this.value);

factory AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource.fromJson(String json) { return switch (json) {
  'all' => all,
  'sitemaps' => sitemaps,
  'links' => links,
  _ => AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._(json),
}; }

static const AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource all = AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._('all');

static const AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource sitemaps = AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._('sitemaps');

static const AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource links = AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._('links');

static const List<AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource> values = [all, sitemaps, links];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource($value)'; } 
 }
@immutable final class AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions {const AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions({this.depth, this.includeExternalLinks, this.includeSubdomains, this.maxAge, this.source, });

factory AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions.fromJson(Map<String, dynamic> json) { return AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions(
  depth: json['depth'] != null ? (json['depth'] as num).toDouble() : null,
  includeExternalLinks: json['include_external_links'] as bool?,
  includeSubdomains: json['include_subdomains'] as bool?,
  maxAge: json['max_age'] != null ? (json['max_age'] as num).toDouble() : null,
  source: json['source'] != null ? AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource.fromJson(json['source'] as String) : null,
); }

final double? depth;

final bool? includeExternalLinks;

final bool? includeSubdomains;

final double? maxAge;

final AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource? source;

/// The value with the schema default applied when absent.
bool get includeExternalLinksOrDefault { return includeExternalLinks ?? false; } 
/// The value with the schema default applied when absent.
bool get includeSubdomainsOrDefault { return includeSubdomains ?? false; } 
/// The value with the schema default applied when absent.
AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource get sourceOrDefault { return source ?? AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource.fromJson('all'); } 
Map<String, dynamic> toJson() { return {
  'depth': ?depth,
  'include_external_links': ?includeExternalLinks,
  'include_subdomains': ?includeSubdomains,
  'max_age': ?maxAge,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'depth', 'include_external_links', 'include_subdomains', 'max_age', 'source'}.contains(key)); } 
AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions copyWith({double? Function()? depth, bool? Function()? includeExternalLinks, bool? Function()? includeSubdomains, double? Function()? maxAge, AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource? Function()? source, }) { return AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions(
  depth: depth != null ? depth() : this.depth,
  includeExternalLinks: includeExternalLinks != null ? includeExternalLinks() : this.includeExternalLinks,
  includeSubdomains: includeSubdomains != null ? includeSubdomains() : this.includeSubdomains,
  maxAge: maxAge != null ? maxAge() : this.maxAge,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions &&
          depth == other.depth &&
          includeExternalLinks == other.includeExternalLinks &&
          includeSubdomains == other.includeSubdomains &&
          maxAge == other.maxAge &&
          source == other.source; } 
@override int get hashCode { return Object.hash(depth, includeExternalLinks, includeSubdomains, maxAge, source); } 
@override String toString() { return 'AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions(depth: $depth, includeExternalLinks: $includeExternalLinks, includeSubdomains: $includeSubdomains, maxAge: $maxAge, source: $source)'; } 
 }
