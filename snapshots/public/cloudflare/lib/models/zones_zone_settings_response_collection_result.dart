// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_base.dart';import 'zones_cache_rules_aegis.dart';import 'zones_cache_rules_origin_h2_max_streams.dart';import 'zones_cache_rules_origin_max_http_version.dart';import 'zones_development_mode.dart';import 'zones_schemas_base.dart';import 'zones_ssl_recommender.dart';final class ZonesZoneSettingsResponseCollectionResult {const ZonesZoneSettingsResponseCollectionResult({this.zonesBase, this.zonesCacheRulesAegis, this.zonesDevelopmentMode, this.zonesCacheRulesOriginH2MaxStreams, this.zonesCacheRulesOriginMaxHttpVersion, this.zonesSchemasBase, this.zonesSslRecommender, });

factory ZonesZoneSettingsResponseCollectionResult.fromJson(Map<String, dynamic> json) { return ZonesZoneSettingsResponseCollectionResult(
  zonesBase: ZonesBase.canParse(json) ? ZonesBase.fromJson(json) : null,
  zonesCacheRulesAegis: ZonesCacheRulesAegis.canParse(json) ? ZonesCacheRulesAegis.fromJson(json) : null,
  zonesDevelopmentMode: ZonesDevelopmentMode.canParse(json) ? ZonesDevelopmentMode.fromJson(json) : null,
  zonesCacheRulesOriginH2MaxStreams: ZonesCacheRulesOriginH2MaxStreams.canParse(json) ? ZonesCacheRulesOriginH2MaxStreams.fromJson(json) : null,
  zonesCacheRulesOriginMaxHttpVersion: ZonesCacheRulesOriginMaxHttpVersion.canParse(json) ? ZonesCacheRulesOriginMaxHttpVersion.fromJson(json) : null,
  zonesSchemasBase: ZonesSchemasBase.canParse(json) ? ZonesSchemasBase.fromJson(json) : null,
  zonesSslRecommender: ZonesSslRecommender.canParse(json) ? ZonesSslRecommender.fromJson(json) : null,
); }

final ZonesBase? zonesBase;

final ZonesCacheRulesAegis? zonesCacheRulesAegis;

final ZonesDevelopmentMode? zonesDevelopmentMode;

final ZonesCacheRulesOriginH2MaxStreams? zonesCacheRulesOriginH2MaxStreams;

final ZonesCacheRulesOriginMaxHttpVersion? zonesCacheRulesOriginMaxHttpVersion;

final ZonesSchemasBase? zonesSchemasBase;

final ZonesSslRecommender? zonesSslRecommender;

/// At least one variant must be present.
bool get isValid { return zonesBase != null || zonesCacheRulesAegis != null || zonesDevelopmentMode != null || zonesCacheRulesOriginH2MaxStreams != null || zonesCacheRulesOriginMaxHttpVersion != null || zonesSchemasBase != null || zonesSslRecommender != null; } 
Map<String, dynamic> toJson() { return {
  ...?zonesBase?.toJson(),
  ...?zonesCacheRulesAegis?.toJson(),
  ...?zonesDevelopmentMode?.toJson(),
  ...?zonesCacheRulesOriginH2MaxStreams?.toJson(),
  ...?zonesCacheRulesOriginMaxHttpVersion?.toJson(),
  ...?zonesSchemasBase?.toJson(),
  ...?zonesSslRecommender?.toJson(),
}; } 
 }
