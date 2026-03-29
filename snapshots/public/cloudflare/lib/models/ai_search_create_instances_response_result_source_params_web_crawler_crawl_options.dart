// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource {const AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource._(this.value);

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
final class AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions {const AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions({this.depth, this.includeExternalLinks = false, this.includeSubdomains = false, this.maxAge, this.source = AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource.all, });

factory AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions.fromJson(Map<String, dynamic> json) { return AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions(
  depth: json['depth'] != null ? (json['depth'] as num).toDouble() : null,
  includeExternalLinks: json.containsKey('include_external_links') ? json['include_external_links'] as bool : false,
  includeSubdomains: json.containsKey('include_subdomains') ? json['include_subdomains'] as bool : false,
  maxAge: json['max_age'] != null ? (json['max_age'] as num).toDouble() : null,
  source: json.containsKey('source') ? AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource.fromJson(json['source'] as String) : AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource.all,
); }

final double? depth;

final bool includeExternalLinks;

final bool includeSubdomains;

final double? maxAge;

final AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource source;

Map<String, dynamic> toJson() { return {
  'depth': ?depth,
  'include_external_links': includeExternalLinks,
  'include_subdomains': includeSubdomains,
  'max_age': ?maxAge,
  'source': source.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'depth', 'include_external_links', 'include_subdomains', 'max_age', 'source'}.contains(key)); } 
AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions copyWith({double Function()? depth, bool Function()? includeExternalLinks, bool Function()? includeSubdomains, double Function()? maxAge, AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptionsSource Function()? source, }) { return AiSearchCreateInstancesResponseResultSourceParamsWebCrawlerCrawlOptions(
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
