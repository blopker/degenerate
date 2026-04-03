// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the attribute by which to group the results.
@immutable final class RadarGetCrawlersTimeseriesGroupDimension {const RadarGetCrawlersTimeseriesGroupDimension._(this.value);

factory RadarGetCrawlersTimeseriesGroupDimension.fromJson(String json) { return switch (json) {
  'CLIENT_TYPE' => clientType,
  'USER_AGENT' => userAgent,
  'REFERER' => referer,
  'CRAWL_REFER_RATIO' => crawlReferRatio,
  'VERTICAL' => vertical,
  'INDUSTRY' => industry,
  _ => RadarGetCrawlersTimeseriesGroupDimension._(json),
}; }

static const RadarGetCrawlersTimeseriesGroupDimension clientType = RadarGetCrawlersTimeseriesGroupDimension._('CLIENT_TYPE');

static const RadarGetCrawlersTimeseriesGroupDimension userAgent = RadarGetCrawlersTimeseriesGroupDimension._('USER_AGENT');

static const RadarGetCrawlersTimeseriesGroupDimension referer = RadarGetCrawlersTimeseriesGroupDimension._('REFERER');

static const RadarGetCrawlersTimeseriesGroupDimension crawlReferRatio = RadarGetCrawlersTimeseriesGroupDimension._('CRAWL_REFER_RATIO');

static const RadarGetCrawlersTimeseriesGroupDimension vertical = RadarGetCrawlersTimeseriesGroupDimension._('VERTICAL');

static const RadarGetCrawlersTimeseriesGroupDimension industry = RadarGetCrawlersTimeseriesGroupDimension._('INDUSTRY');

static const List<RadarGetCrawlersTimeseriesGroupDimension> values = [clientType, userAgent, referer, crawlReferRatio, vertical, industry];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCrawlersTimeseriesGroupDimension && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCrawlersTimeseriesGroupDimension($value)'; } 
 }
