// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the attribute by which to group the results.
final class RadarGetAiBotsSummaryDimension {const RadarGetAiBotsSummaryDimension._(this.value);

factory RadarGetAiBotsSummaryDimension.fromJson(String json) { return switch (json) {
  'USER_AGENT' => userAgent,
  'CRAWL_PURPOSE' => crawlPurpose,
  'INDUSTRY' => industry,
  'VERTICAL' => vertical,
  'CONTENT_TYPE' => contentType,
  _ => RadarGetAiBotsSummaryDimension._(json),
}; }

static const RadarGetAiBotsSummaryDimension userAgent = RadarGetAiBotsSummaryDimension._('USER_AGENT');

static const RadarGetAiBotsSummaryDimension crawlPurpose = RadarGetAiBotsSummaryDimension._('CRAWL_PURPOSE');

static const RadarGetAiBotsSummaryDimension industry = RadarGetAiBotsSummaryDimension._('INDUSTRY');

static const RadarGetAiBotsSummaryDimension vertical = RadarGetAiBotsSummaryDimension._('VERTICAL');

static const RadarGetAiBotsSummaryDimension contentType = RadarGetAiBotsSummaryDimension._('CONTENT_TYPE');

static const List<RadarGetAiBotsSummaryDimension> values = [userAgent, crawlPurpose, industry, vertical, contentType];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiBotsSummaryDimension && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiBotsSummaryDimension($value)'; } 
 }
