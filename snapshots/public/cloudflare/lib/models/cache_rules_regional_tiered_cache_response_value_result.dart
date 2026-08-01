// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_regional_tiered_cache_value.dart';/// ID of the zone setting.
@immutable final class CacheRulesRegionalTieredCacheResponseValueResultId {const CacheRulesRegionalTieredCacheResponseValueResultId._(this.value);

factory CacheRulesRegionalTieredCacheResponseValueResultId.fromJson(String json) { return switch (json) {
  'tc_regional' => tcRegional,
  _ => CacheRulesRegionalTieredCacheResponseValueResultId._(json),
}; }

static const CacheRulesRegionalTieredCacheResponseValueResultId tcRegional = CacheRulesRegionalTieredCacheResponseValueResultId._('tc_regional');

static const List<CacheRulesRegionalTieredCacheResponseValueResultId> values = [tcRegional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesRegionalTieredCacheResponseValueResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesRegionalTieredCacheResponseValueResultId($value)'; } 
 }
@immutable final class CacheRulesRegionalTieredCacheResponseValueResult {const CacheRulesRegionalTieredCacheResponseValueResult({required this.id, required this.value, this.modifiedOn = const Omittable.absent(), });

factory CacheRulesRegionalTieredCacheResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesRegionalTieredCacheResponseValueResult(
  id: CacheRulesRegionalTieredCacheResponseValueResultId.fromJson(json['id'] as String),
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: CacheRulesRegionalTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final CacheRulesRegionalTieredCacheResponseValueResultId id;

/// Last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final CacheRulesRegionalTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
CacheRulesRegionalTieredCacheResponseValueResult copyWith({CacheRulesRegionalTieredCacheResponseValueResultId? id, Omittable<DateTime?>? modifiedOn, CacheRulesRegionalTieredCacheValue? value, }) { return CacheRulesRegionalTieredCacheResponseValueResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesRegionalTieredCacheResponseValueResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'CacheRulesRegionalTieredCacheResponseValueResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
