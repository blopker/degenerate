// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
/// Verified search engine crawlers will not be tracked or counted by the waiting room system,
/// and will not appear in waiting room analytics.
/// 
extension type const WaitingroomSearchEngineCrawlerBypass(bool value) {
factory WaitingroomSearchEngineCrawlerBypass.fromJson(bool json) => WaitingroomSearchEngineCrawlerBypass(json);

bool toJson() => value;

}
final class WaitingroomZoneSettings {const WaitingroomZoneSettings({this.searchEngineCrawlerBypass});

factory WaitingroomZoneSettings.fromJson(Map<String, dynamic> json) { return WaitingroomZoneSettings(
  searchEngineCrawlerBypass: json['search_engine_crawler_bypass'] != null ? WaitingroomSearchEngineCrawlerBypass.fromJson(json['search_engine_crawler_bypass'] as bool) : null,
); }

/// Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
/// Verified search engine crawlers will not be tracked or counted by the waiting room system,
/// and will not appear in waiting room analytics.
/// 
final WaitingroomSearchEngineCrawlerBypass? searchEngineCrawlerBypass;

Map<String, dynamic> toJson() { return {
  if (searchEngineCrawlerBypass != null) 'search_engine_crawler_bypass': searchEngineCrawlerBypass?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'search_engine_crawler_bypass'}.contains(key)); } 
WaitingroomZoneSettings copyWith({WaitingroomSearchEngineCrawlerBypass Function()? searchEngineCrawlerBypass}) { return WaitingroomZoneSettings(
  searchEngineCrawlerBypass: searchEngineCrawlerBypass != null ? searchEngineCrawlerBypass() : this.searchEngineCrawlerBypass,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomZoneSettings &&
          searchEngineCrawlerBypass == other.searchEngineCrawlerBypass; } 
@override int get hashCode { return searchEngineCrawlerBypass.hashCode; } 
@override String toString() { return 'WaitingroomZoneSettings(searchEngineCrawlerBypass: $searchEngineCrawlerBypass)'; } 
 }
