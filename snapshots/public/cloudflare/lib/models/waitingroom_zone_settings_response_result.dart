// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waitingroom_search_engine_crawler_bypass.dart';final class WaitingroomZoneSettingsResponseResult {const WaitingroomZoneSettingsResponseResult({required this.searchEngineCrawlerBypass});

factory WaitingroomZoneSettingsResponseResult.fromJson(Map<String, dynamic> json) { return WaitingroomZoneSettingsResponseResult(
  searchEngineCrawlerBypass: WaitingroomSearchEngineCrawlerBypass.fromJson(json['search_engine_crawler_bypass'] as bool),
); }

/// Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
/// Verified search engine crawlers will not be tracked or counted by the waiting room system,
/// and will not appear in waiting room analytics.
/// 
final WaitingroomSearchEngineCrawlerBypass searchEngineCrawlerBypass;

Map<String, dynamic> toJson() { return {
  'search_engine_crawler_bypass': searchEngineCrawlerBypass.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('search_engine_crawler_bypass'); } 
WaitingroomZoneSettingsResponseResult copyWith({WaitingroomSearchEngineCrawlerBypass? searchEngineCrawlerBypass}) { return WaitingroomZoneSettingsResponseResult(
  searchEngineCrawlerBypass: searchEngineCrawlerBypass ?? this.searchEngineCrawlerBypass,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomZoneSettingsResponseResult &&
          searchEngineCrawlerBypass == other.searchEngineCrawlerBypass; } 
@override int get hashCode { return searchEngineCrawlerBypass.hashCode; } 
@override String toString() { return 'WaitingroomZoneSettingsResponseResult(searchEngineCrawlerBypass: $searchEngineCrawlerBypass)'; } 
 }
