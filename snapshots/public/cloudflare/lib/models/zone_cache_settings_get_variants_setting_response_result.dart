// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_variants_value.dart';/// ID of the zone setting.
@immutable final class ZoneCacheSettingsGetVariantsSettingResponseResultId {const ZoneCacheSettingsGetVariantsSettingResponseResultId._(this.value);

factory ZoneCacheSettingsGetVariantsSettingResponseResultId.fromJson(String json) { return switch (json) {
  'variants' => variants,
  _ => ZoneCacheSettingsGetVariantsSettingResponseResultId._(json),
}; }

static const ZoneCacheSettingsGetVariantsSettingResponseResultId variants = ZoneCacheSettingsGetVariantsSettingResponseResultId._('variants');

static const List<ZoneCacheSettingsGetVariantsSettingResponseResultId> values = [variants];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZoneCacheSettingsGetVariantsSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsGetVariantsSettingResponseResultId($value)'; } 
 }
@immutable final class ZoneCacheSettingsGetVariantsSettingResponseResult {const ZoneCacheSettingsGetVariantsSettingResponseResult({required this.id, required this.value, this.modifiedOn, });

factory ZoneCacheSettingsGetVariantsSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsGetVariantsSettingResponseResult(
  id: ZoneCacheSettingsGetVariantsSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesVariantsValue.fromJson(json['value'] as Map<String, dynamic>),
); }

/// ID of the zone setting.
final ZoneCacheSettingsGetVariantsSettingResponseResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

final CacheRulesVariantsValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZoneCacheSettingsGetVariantsSettingResponseResult copyWith({ZoneCacheSettingsGetVariantsSettingResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesVariantsValue? value, }) { return ZoneCacheSettingsGetVariantsSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsGetVariantsSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'ZoneCacheSettingsGetVariantsSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
