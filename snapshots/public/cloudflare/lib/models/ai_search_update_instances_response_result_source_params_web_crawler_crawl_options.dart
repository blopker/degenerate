// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource {const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._(this.value);

factory AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource.fromJson(String json) {return switch (json) {
  'all' => all,
  'sitemaps' => sitemaps,
  'links' => links,
  _ => AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._(json),
};}

static const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource all = AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._('all');

static const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource sitemaps = AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._('sitemaps');

static const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource links = AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._('links');

static const List<AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource> values = [all, sitemaps, links];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource($value)';}
}
@immutable final class AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions {const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions({this.depth, this.includeExternalLinks, this.includeSubdomains, this.maxAge, this.source, });

factory AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions.fromJson(Map<String, dynamic> json) {return AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions(
  depth: json['depth'] != null ? (json['depth'] as num).toDouble() : null,
  includeExternalLinks: json['include_external_links'] as bool?,
  includeSubdomains: json['include_subdomains'] as bool?,
  maxAge: json['max_age'] != null ? (json['max_age'] as num).toDouble() : null,
  source: json['source'] != null ? AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource.fromJson(json['source'] as String) : null,
);}

final double? depth;

final bool? includeExternalLinks;

final bool? includeSubdomains;

final double? maxAge;

final AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource? source;

/// The value with the schema default applied when absent.
bool get includeExternalLinksOrDefault {return includeExternalLinks ?? false;}
/// The value with the schema default applied when absent.
bool get includeSubdomainsOrDefault {return includeSubdomains ?? false;}
/// The value with the schema default applied when absent.
AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource get sourceOrDefault {return source ?? AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource.fromJson('all');}
Map<String, dynamic> toJson() {return {
  'depth': ?depth,
  'include_external_links': ?includeExternalLinks,
  'include_subdomains': ?includeSubdomains,
  'max_age': ?maxAge,
  if (source != null) 'source': source?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'depth', 'include_external_links', 'include_subdomains', 'max_age', 'source'}.contains(key));}
AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions copyWith({double? Function()? depth, bool? Function()? includeExternalLinks, bool? Function()? includeSubdomains, double? Function()? maxAge, AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource? Function()? source, }) {return AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions(
  depth: depth != null ? depth() : this.depth,
  includeExternalLinks: includeExternalLinks != null ? includeExternalLinks() : this.includeExternalLinks,
  includeSubdomains: includeSubdomains != null ? includeSubdomains() : this.includeSubdomains,
  maxAge: maxAge != null ? maxAge() : this.maxAge,
  source: source != null ? source() : this.source,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions &&
          depth == other.depth &&
          includeExternalLinks == other.includeExternalLinks &&
          includeSubdomains == other.includeSubdomains &&
          maxAge == other.maxAge &&
          source == other.source;}
@override int get hashCode {return Object.hash(depth, includeExternalLinks, includeSubdomains, maxAge, source);}
@override String toString() {return 'AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions(depth: $depth, includeExternalLinks: $includeExternalLinks, includeSubdomains: $includeSubdomains, maxAge: $maxAge, source: $source)';}
}
