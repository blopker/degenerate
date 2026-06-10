// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_tiered_cache_value.dart';/// ID of the zone setting.
@immutable final class TieredCachingGetTieredCachingSettingResponseResultId {const TieredCachingGetTieredCachingSettingResponseResultId._(this.value);

factory TieredCachingGetTieredCachingSettingResponseResultId.fromJson(String json) { return switch (json) {
  'tiered_caching' => tieredCaching,
  _ => TieredCachingGetTieredCachingSettingResponseResultId._(json),
}; }

static const TieredCachingGetTieredCachingSettingResponseResultId tieredCaching = TieredCachingGetTieredCachingSettingResponseResultId._('tiered_caching');

static const List<TieredCachingGetTieredCachingSettingResponseResultId> values = [tieredCaching];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TieredCachingGetTieredCachingSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TieredCachingGetTieredCachingSettingResponseResultId($value)'; } 
 }
@immutable final class TieredCachingGetTieredCachingSettingResponseResult {const TieredCachingGetTieredCachingSettingResponseResult({required this.id, required this.value, this.modifiedOn, });

factory TieredCachingGetTieredCachingSettingResponseResult.fromJson(Map<String, dynamic> json) { return TieredCachingGetTieredCachingSettingResponseResult(
  id: TieredCachingGetTieredCachingSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final TieredCachingGetTieredCachingSettingResponseResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

/// Value of the Tiered Cache zone setting.
final CacheRulesTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
TieredCachingGetTieredCachingSettingResponseResult copyWith({TieredCachingGetTieredCachingSettingResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesTieredCacheValue? value, }) { return TieredCachingGetTieredCachingSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TieredCachingGetTieredCachingSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'TieredCachingGetTieredCachingSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
