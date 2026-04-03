// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The category of the bot.
@immutable final class RadarGetBotsTimeseriesBotCategory {const RadarGetBotsTimeseriesBotCategory._(this.value);

factory RadarGetBotsTimeseriesBotCategory.fromJson(String json) { return switch (json) {
  'SEARCH_ENGINE_CRAWLER' => searchEngineCrawler,
  'SEARCH_ENGINE_OPTIMIZATION' => searchEngineOptimization,
  'MONITORING_AND_ANALYTICS' => monitoringAndAnalytics,
  'ADVERTISING_AND_MARKETING' => advertisingAndMarketing,
  'SOCIAL_MEDIA_MARKETING' => socialMediaMarketing,
  'PAGE_PREVIEW' => pagePreview,
  'ACADEMIC_RESEARCH' => academicResearch,
  'SECURITY' => security,
  'ACCESSIBILITY' => accessibility,
  'WEBHOOKS' => webhooks,
  'FEED_FETCHER' => feedFetcher,
  'AI_CRAWLER' => aiCrawler,
  'AGGREGATOR' => aggregator,
  'AI_ASSISTANT' => aiAssistant,
  'AI_SEARCH' => aiSearch,
  'ARCHIVER' => archiver,
  _ => RadarGetBotsTimeseriesBotCategory._(json),
}; }

static const RadarGetBotsTimeseriesBotCategory searchEngineCrawler = RadarGetBotsTimeseriesBotCategory._('SEARCH_ENGINE_CRAWLER');

static const RadarGetBotsTimeseriesBotCategory searchEngineOptimization = RadarGetBotsTimeseriesBotCategory._('SEARCH_ENGINE_OPTIMIZATION');

static const RadarGetBotsTimeseriesBotCategory monitoringAndAnalytics = RadarGetBotsTimeseriesBotCategory._('MONITORING_AND_ANALYTICS');

static const RadarGetBotsTimeseriesBotCategory advertisingAndMarketing = RadarGetBotsTimeseriesBotCategory._('ADVERTISING_AND_MARKETING');

static const RadarGetBotsTimeseriesBotCategory socialMediaMarketing = RadarGetBotsTimeseriesBotCategory._('SOCIAL_MEDIA_MARKETING');

static const RadarGetBotsTimeseriesBotCategory pagePreview = RadarGetBotsTimeseriesBotCategory._('PAGE_PREVIEW');

static const RadarGetBotsTimeseriesBotCategory academicResearch = RadarGetBotsTimeseriesBotCategory._('ACADEMIC_RESEARCH');

static const RadarGetBotsTimeseriesBotCategory security = RadarGetBotsTimeseriesBotCategory._('SECURITY');

static const RadarGetBotsTimeseriesBotCategory accessibility = RadarGetBotsTimeseriesBotCategory._('ACCESSIBILITY');

static const RadarGetBotsTimeseriesBotCategory webhooks = RadarGetBotsTimeseriesBotCategory._('WEBHOOKS');

static const RadarGetBotsTimeseriesBotCategory feedFetcher = RadarGetBotsTimeseriesBotCategory._('FEED_FETCHER');

static const RadarGetBotsTimeseriesBotCategory aiCrawler = RadarGetBotsTimeseriesBotCategory._('AI_CRAWLER');

static const RadarGetBotsTimeseriesBotCategory aggregator = RadarGetBotsTimeseriesBotCategory._('AGGREGATOR');

static const RadarGetBotsTimeseriesBotCategory aiAssistant = RadarGetBotsTimeseriesBotCategory._('AI_ASSISTANT');

static const RadarGetBotsTimeseriesBotCategory aiSearch = RadarGetBotsTimeseriesBotCategory._('AI_SEARCH');

static const RadarGetBotsTimeseriesBotCategory archiver = RadarGetBotsTimeseriesBotCategory._('ARCHIVER');

static const List<RadarGetBotsTimeseriesBotCategory> values = [searchEngineCrawler, searchEngineOptimization, monitoringAndAnalytics, advertisingAndMarketing, socialMediaMarketing, pagePreview, academicResearch, security, accessibility, webhooks, feedFetcher, aiCrawler, aggregator, aiAssistant, aiSearch, archiver];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsTimeseriesBotCategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsTimeseriesBotCategory($value)'; } 
 }
