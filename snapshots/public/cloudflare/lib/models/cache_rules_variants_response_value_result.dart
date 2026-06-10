// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_variants_value.dart';/// ID of the zone setting.
@immutable final class CacheRulesVariantsResponseValueResultId {const CacheRulesVariantsResponseValueResultId._(this.value);

factory CacheRulesVariantsResponseValueResultId.fromJson(String json) { return switch (json) {
  'variants' => variants,
  _ => CacheRulesVariantsResponseValueResultId._(json),
}; }

static const CacheRulesVariantsResponseValueResultId variants = CacheRulesVariantsResponseValueResultId._('variants');

static const List<CacheRulesVariantsResponseValueResultId> values = [variants];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesVariantsResponseValueResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesVariantsResponseValueResultId($value)'; } 
 }
@immutable final class CacheRulesVariantsResponseValueResult {const CacheRulesVariantsResponseValueResult({required this.id, required this.value, this.modifiedOn, });

factory CacheRulesVariantsResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesVariantsResponseValueResult(
  id: CacheRulesVariantsResponseValueResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesVariantsValue.fromJson(json['value'] as Map<String, dynamic>),
); }

/// ID of the zone setting.
final CacheRulesVariantsResponseValueResultId id;

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
CacheRulesVariantsResponseValueResult copyWith({CacheRulesVariantsResponseValueResultId? id, DateTime? Function()? modifiedOn, CacheRulesVariantsValue? value, }) { return CacheRulesVariantsResponseValueResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesVariantsResponseValueResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'CacheRulesVariantsResponseValueResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
