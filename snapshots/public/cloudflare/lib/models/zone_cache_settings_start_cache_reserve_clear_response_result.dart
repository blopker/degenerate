// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_cache_reserve_clear_end_ts.dart';import 'cache_rules_cache_reserve_clear_start_ts.dart';import 'cache_rules_cache_reserve_clear_state.dart';/// ID of the zone setting.
@immutable final class ZoneCacheSettingsStartCacheReserveClearResponseResultId {const ZoneCacheSettingsStartCacheReserveClearResponseResultId._(this.value);

factory ZoneCacheSettingsStartCacheReserveClearResponseResultId.fromJson(String json) { return switch (json) {
  'cache_reserve_clear' => cacheReserveClear,
  _ => ZoneCacheSettingsStartCacheReserveClearResponseResultId._(json),
}; }

static const ZoneCacheSettingsStartCacheReserveClearResponseResultId cacheReserveClear = ZoneCacheSettingsStartCacheReserveClearResponseResultId._('cache_reserve_clear');

static const List<ZoneCacheSettingsStartCacheReserveClearResponseResultId> values = [cacheReserveClear];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZoneCacheSettingsStartCacheReserveClearResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsStartCacheReserveClearResponseResultId($value)'; } 
 }
@immutable final class ZoneCacheSettingsStartCacheReserveClearResponseResult {const ZoneCacheSettingsStartCacheReserveClearResponseResult({required this.id, required this.startTs, required this.state, this.modifiedOn, this.endTs, });

factory ZoneCacheSettingsStartCacheReserveClearResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsStartCacheReserveClearResponseResult(
  id: ZoneCacheSettingsStartCacheReserveClearResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  endTs: json['end_ts'] != null ? CacheRulesCacheReserveClearEndTs.fromJson(json['end_ts'] as String) : null,
  startTs: CacheRulesCacheReserveClearStartTs.fromJson(json['start_ts'] as String),
  state: CacheRulesCacheReserveClearState.fromJson(json['state'] as String),
); }

/// ID of the zone setting.
final ZoneCacheSettingsStartCacheReserveClearResponseResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

/// The time that the latest Cache Reserve Clear operation completed.
final CacheRulesCacheReserveClearEndTs? endTs;

/// The time that the latest Cache Reserve Clear operation started.
final CacheRulesCacheReserveClearStartTs startTs;

/// The current state of the Cache Reserve Clear operation.
final CacheRulesCacheReserveClearState state;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (endTs != null) 'end_ts': endTs?.toJson(),
  'start_ts': startTs.toJson(),
  'state': state.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('start_ts') &&
      json.containsKey('state'); } 
ZoneCacheSettingsStartCacheReserveClearResponseResult copyWith({ZoneCacheSettingsStartCacheReserveClearResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesCacheReserveClearEndTs Function()? endTs, CacheRulesCacheReserveClearStartTs? startTs, CacheRulesCacheReserveClearState? state, }) { return ZoneCacheSettingsStartCacheReserveClearResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  endTs: endTs != null ? endTs() : this.endTs,
  startTs: startTs ?? this.startTs,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsStartCacheReserveClearResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          endTs == other.endTs &&
          startTs == other.startTs &&
          state == other.state; } 
@override int get hashCode { return Object.hash(id, modifiedOn, endTs, startTs, state); } 
@override String toString() { return 'ZoneCacheSettingsStartCacheReserveClearResponseResult(id: $id, modifiedOn: $modifiedOn, endTs: $endTs, startTs: $startTs, state: $state)'; } 
 }
