// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the attribute by which to group the results.
@immutable final class RadarGetCrawlersSummaryDimension {const RadarGetCrawlersSummaryDimension._(this.value);

factory RadarGetCrawlersSummaryDimension.fromJson(String json) { return switch (json) {
  'CLIENT_TYPE' => clientType,
  'USER_AGENT' => userAgent,
  'REFERER' => referer,
  'CRAWL_REFER_RATIO' => crawlReferRatio,
  'VERTICAL' => vertical,
  'INDUSTRY' => industry,
  _ => RadarGetCrawlersSummaryDimension._(json),
}; }

static const RadarGetCrawlersSummaryDimension clientType = RadarGetCrawlersSummaryDimension._('CLIENT_TYPE');

static const RadarGetCrawlersSummaryDimension userAgent = RadarGetCrawlersSummaryDimension._('USER_AGENT');

static const RadarGetCrawlersSummaryDimension referer = RadarGetCrawlersSummaryDimension._('REFERER');

static const RadarGetCrawlersSummaryDimension crawlReferRatio = RadarGetCrawlersSummaryDimension._('CRAWL_REFER_RATIO');

static const RadarGetCrawlersSummaryDimension vertical = RadarGetCrawlersSummaryDimension._('VERTICAL');

static const RadarGetCrawlersSummaryDimension industry = RadarGetCrawlersSummaryDimension._('INDUSTRY');

static const List<RadarGetCrawlersSummaryDimension> values = [clientType, userAgent, referer, crawlReferRatio, vertical, industry];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCrawlersSummaryDimension && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCrawlersSummaryDimension($value)'; } 
 }
