// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_cache_reserve_value.dart';/// ID of the zone setting.
@immutable final class CacheRulesCacheReserveResponseValueResultId {const CacheRulesCacheReserveResponseValueResultId._(this.value);

factory CacheRulesCacheReserveResponseValueResultId.fromJson(String json) { return switch (json) {
  'cache_reserve' => cacheReserve,
  _ => CacheRulesCacheReserveResponseValueResultId._(json),
}; }

static const CacheRulesCacheReserveResponseValueResultId cacheReserve = CacheRulesCacheReserveResponseValueResultId._('cache_reserve');

static const List<CacheRulesCacheReserveResponseValueResultId> values = [cacheReserve];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesCacheReserveResponseValueResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesCacheReserveResponseValueResultId($value)'; } 
 }
@immutable final class CacheRulesCacheReserveResponseValueResult {const CacheRulesCacheReserveResponseValueResult({required this.id, required this.value, this.modifiedOn, });

factory CacheRulesCacheReserveResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesCacheReserveResponseValueResult(
  id: CacheRulesCacheReserveResponseValueResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesCacheReserveValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final CacheRulesCacheReserveResponseValueResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

final CacheRulesCacheReserveValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
CacheRulesCacheReserveResponseValueResult copyWith({CacheRulesCacheReserveResponseValueResultId? id, DateTime? Function()? modifiedOn, CacheRulesCacheReserveValue? value, }) { return CacheRulesCacheReserveResponseValueResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesCacheReserveResponseValueResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'CacheRulesCacheReserveResponseValueResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
