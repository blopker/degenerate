// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ID of the zone setting.
@immutable final class CacheRulesCacheReserveClearId {const CacheRulesCacheReserveClearId._(this.value);

factory CacheRulesCacheReserveClearId.fromJson(String json) { return switch (json) {
  'cache_reserve_clear' => cacheReserveClear,
  _ => CacheRulesCacheReserveClearId._(json),
}; }

static const CacheRulesCacheReserveClearId cacheReserveClear = CacheRulesCacheReserveClearId._('cache_reserve_clear');

static const List<CacheRulesCacheReserveClearId> values = [cacheReserveClear];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesCacheReserveClearId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesCacheReserveClearId($value)'; } 
 }
/// You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.
@immutable final class CacheRulesCacheReserveClear {const CacheRulesCacheReserveClear({required this.id, this.modifiedOn, });

factory CacheRulesCacheReserveClear.fromJson(Map<String, dynamic> json) { return CacheRulesCacheReserveClear(
  id: CacheRulesCacheReserveClearId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
); }

/// ID of the zone setting.
final CacheRulesCacheReserveClearId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
CacheRulesCacheReserveClear copyWith({CacheRulesCacheReserveClearId? id, DateTime? Function()? modifiedOn, }) { return CacheRulesCacheReserveClear(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesCacheReserveClear &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'CacheRulesCacheReserveClear(id: $id, modifiedOn: $modifiedOn)'; } 
 }
