// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_tiered_cache_value.dart';/// ID of the zone setting.
@immutable final class CacheRulesTieredCacheResponseValueResultId {const CacheRulesTieredCacheResponseValueResultId._(this.value);

factory CacheRulesTieredCacheResponseValueResultId.fromJson(String json) { return switch (json) {
  'tiered_caching' => tieredCaching,
  _ => CacheRulesTieredCacheResponseValueResultId._(json),
}; }

static const CacheRulesTieredCacheResponseValueResultId tieredCaching = CacheRulesTieredCacheResponseValueResultId._('tiered_caching');

static const List<CacheRulesTieredCacheResponseValueResultId> values = [tieredCaching];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesTieredCacheResponseValueResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesTieredCacheResponseValueResultId($value)'; } 
 }
@immutable final class CacheRulesTieredCacheResponseValueResult {const CacheRulesTieredCacheResponseValueResult({required this.id, required this.value, this.modifiedOn, });

factory CacheRulesTieredCacheResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesTieredCacheResponseValueResult(
  id: CacheRulesTieredCacheResponseValueResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final CacheRulesTieredCacheResponseValueResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

final CacheRulesTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
CacheRulesTieredCacheResponseValueResult copyWith({CacheRulesTieredCacheResponseValueResultId? id, DateTime? Function()? modifiedOn, CacheRulesTieredCacheValue? value, }) { return CacheRulesTieredCacheResponseValueResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesTieredCacheResponseValueResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'CacheRulesTieredCacheResponseValueResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
