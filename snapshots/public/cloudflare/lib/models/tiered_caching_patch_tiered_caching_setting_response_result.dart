// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_tiered_cache_value.dart';/// ID of the zone setting.
@immutable final class TieredCachingPatchTieredCachingSettingResponseResultId {const TieredCachingPatchTieredCachingSettingResponseResultId._(this.value);

factory TieredCachingPatchTieredCachingSettingResponseResultId.fromJson(String json) { return switch (json) {
  'tiered_caching' => tieredCaching,
  _ => TieredCachingPatchTieredCachingSettingResponseResultId._(json),
}; }

static const TieredCachingPatchTieredCachingSettingResponseResultId tieredCaching = TieredCachingPatchTieredCachingSettingResponseResultId._('tiered_caching');

static const List<TieredCachingPatchTieredCachingSettingResponseResultId> values = [tieredCaching];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TieredCachingPatchTieredCachingSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TieredCachingPatchTieredCachingSettingResponseResultId($value)'; } 
 }
@immutable final class TieredCachingPatchTieredCachingSettingResponseResult {const TieredCachingPatchTieredCachingSettingResponseResult({required this.id, required this.value, this.modifiedOn = const Omittable.absent(), });

factory TieredCachingPatchTieredCachingSettingResponseResult.fromJson(Map<String, dynamic> json) { return TieredCachingPatchTieredCachingSettingResponseResult(
  id: TieredCachingPatchTieredCachingSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: CacheRulesTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final TieredCachingPatchTieredCachingSettingResponseResultId id;

/// Last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

/// Value of the Tiered Cache zone setting.
final CacheRulesTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
TieredCachingPatchTieredCachingSettingResponseResult copyWith({TieredCachingPatchTieredCachingSettingResponseResultId? id, Omittable<DateTime?>? modifiedOn, CacheRulesTieredCacheValue? value, }) { return TieredCachingPatchTieredCachingSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TieredCachingPatchTieredCachingSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'TieredCachingPatchTieredCachingSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
