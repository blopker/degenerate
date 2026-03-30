// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_base.dart';import 'zones_cache_rules_aegis.dart';import 'zones_cache_rules_origin_h2_max_streams.dart';import 'zones_cache_rules_origin_max_http_version.dart';import 'zones_development_mode.dart';import 'zones_schemas_base.dart';import 'zones_ssl_recommender.dart';/// A value that is one of: `ZonesBase`, `ZonesBase`, `ZonesCacheRulesAegis`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesDevelopmentMode`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesCacheRulesOriginH2MaxStreams`, `ZonesCacheRulesOriginMaxHttpVersion`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesSchemasBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesSslRecommender`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`, `ZonesBase`.
sealed class ZonesSetting {const ZonesSetting();

factory ZonesSetting.fromJson(Map<String, dynamic> json) {   if (ZonesBase.canParse(json)) {
    return ZonesSettingZonesBase(ZonesBase.fromJson(json));
  }
  if (ZonesCacheRulesAegis.canParse(json)) {
    return ZonesSettingZonesCacheRulesAegis(ZonesCacheRulesAegis.fromJson(json));
  }
  if (ZonesDevelopmentMode.canParse(json)) {
    return ZonesSettingZonesDevelopmentMode(ZonesDevelopmentMode.fromJson(json));
  }
  if (ZonesCacheRulesOriginH2MaxStreams.canParse(json)) {
    return ZonesSettingZonesCacheRulesOriginH2MaxStreams(ZonesCacheRulesOriginH2MaxStreams.fromJson(json));
  }
  if (ZonesCacheRulesOriginMaxHttpVersion.canParse(json)) {
    return ZonesSettingZonesCacheRulesOriginMaxHttpVersion(ZonesCacheRulesOriginMaxHttpVersion.fromJson(json));
  }
  if (ZonesSchemasBase.canParse(json)) {
    return ZonesSettingZonesSchemasBase(ZonesSchemasBase.fromJson(json));
  }
  if (ZonesSslRecommender.canParse(json)) {
    return ZonesSettingZonesSslRecommender(ZonesSslRecommender.fromJson(json));
  }
  return ZonesSetting$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
final class ZonesSettingZonesBase extends ZonesSetting {const ZonesSettingZonesBase(this._value);

final ZonesBase _value;

@override ZonesBase get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesBase && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesBase($_value)'; } 
 }
final class ZonesSettingZonesCacheRulesAegis extends ZonesSetting {const ZonesSettingZonesCacheRulesAegis(this._value);

final ZonesCacheRulesAegis _value;

@override ZonesCacheRulesAegis get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesCacheRulesAegis && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesCacheRulesAegis($_value)'; } 
 }
final class ZonesSettingZonesDevelopmentMode extends ZonesSetting {const ZonesSettingZonesDevelopmentMode(this._value);

final ZonesDevelopmentMode _value;

@override ZonesDevelopmentMode get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesDevelopmentMode && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesDevelopmentMode($_value)'; } 
 }
final class ZonesSettingZonesCacheRulesOriginH2MaxStreams extends ZonesSetting {const ZonesSettingZonesCacheRulesOriginH2MaxStreams(this._value);

final ZonesCacheRulesOriginH2MaxStreams _value;

@override ZonesCacheRulesOriginH2MaxStreams get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesCacheRulesOriginH2MaxStreams && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesCacheRulesOriginH2MaxStreams($_value)'; } 
 }
final class ZonesSettingZonesCacheRulesOriginMaxHttpVersion extends ZonesSetting {const ZonesSettingZonesCacheRulesOriginMaxHttpVersion(this._value);

final ZonesCacheRulesOriginMaxHttpVersion _value;

@override ZonesCacheRulesOriginMaxHttpVersion get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesCacheRulesOriginMaxHttpVersion && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesCacheRulesOriginMaxHttpVersion($_value)'; } 
 }
final class ZonesSettingZonesSchemasBase extends ZonesSetting {const ZonesSettingZonesSchemasBase(this._value);

final ZonesSchemasBase _value;

@override ZonesSchemasBase get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasBase && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasBase($_value)'; } 
 }
final class ZonesSettingZonesSslRecommender extends ZonesSetting {const ZonesSettingZonesSslRecommender(this._value);

final ZonesSslRecommender _value;

@override ZonesSslRecommender get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSslRecommender && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSslRecommender($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
final class ZonesSetting$Unknown extends ZonesSetting {const ZonesSetting$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSetting$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.unknown($_value)'; } 
 }
