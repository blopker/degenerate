// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_origin_h2_max_streams_value.dart';final class ZoneCacheSettingsChangeOriginH2MaxStreamsSettingRequest {const ZoneCacheSettingsChangeOriginH2MaxStreamsSettingRequest({required this.value});

factory ZoneCacheSettingsChangeOriginH2MaxStreamsSettingRequest.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsChangeOriginH2MaxStreamsSettingRequest(
  value: CacheRulesOriginH2MaxStreamsValue.fromJson(json['value'] as num),
); }

/// Value of the Origin H2 Max Streams Setting.
final CacheRulesOriginH2MaxStreamsValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneCacheSettingsChangeOriginH2MaxStreamsSettingRequest copyWith({CacheRulesOriginH2MaxStreamsValue? value}) { return ZoneCacheSettingsChangeOriginH2MaxStreamsSettingRequest(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsChangeOriginH2MaxStreamsSettingRequest &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsChangeOriginH2MaxStreamsSettingRequest(value: $value)'; } 
 }
