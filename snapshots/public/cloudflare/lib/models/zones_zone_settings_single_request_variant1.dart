// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_ssl_recommender_enabled.dart';@immutable final class ZonesZoneSettingsSingleRequestVariant1 {const ZonesZoneSettingsSingleRequestVariant1({this.enabled});

factory ZonesZoneSettingsSingleRequestVariant1.fromJson(Map<String, dynamic> json) { return ZonesZoneSettingsSingleRequestVariant1(
  enabled: json['enabled'] != null ? ZonesSslRecommenderEnabled.fromJson(json['enabled'] as bool) : null,
); }

/// ssl-recommender enrollment setting.
final ZonesSslRecommenderEnabled? enabled;

Map<String, dynamic> toJson() { return {
  if (enabled != null) 'enabled': enabled?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ZonesZoneSettingsSingleRequestVariant1 copyWith({ZonesSslRecommenderEnabled Function()? enabled}) { return ZonesZoneSettingsSingleRequestVariant1(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesZoneSettingsSingleRequestVariant1 &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZonesZoneSettingsSingleRequestVariant1(enabled: $enabled)'; } 
 }
