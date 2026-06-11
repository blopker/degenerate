// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_cache_reserve_clear_end_ts.dart';import 'smartshield_cache_reserve_clear_start_ts.dart';import 'smartshield_cache_reserve_clear_state.dart';/// ID of the zone setting.
@immutable final class SmartShieldSettingsStartCacheReserveClearResponseResultId {const SmartShieldSettingsStartCacheReserveClearResponseResultId._(this.value);

factory SmartShieldSettingsStartCacheReserveClearResponseResultId.fromJson(String json) { return switch (json) {
  'cache_reserve_clear' => cacheReserveClear,
  _ => SmartShieldSettingsStartCacheReserveClearResponseResultId._(json),
}; }

static const SmartShieldSettingsStartCacheReserveClearResponseResultId cacheReserveClear = SmartShieldSettingsStartCacheReserveClearResponseResultId._('cache_reserve_clear');

static const List<SmartShieldSettingsStartCacheReserveClearResponseResultId> values = [cacheReserveClear];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartShieldSettingsStartCacheReserveClearResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartShieldSettingsStartCacheReserveClearResponseResultId($value)'; } 
 }
@immutable final class SmartShieldSettingsStartCacheReserveClearResponseResult {const SmartShieldSettingsStartCacheReserveClearResponseResult({required this.id, required this.startTs, required this.state, this.modifiedOn, this.endTs, });

factory SmartShieldSettingsStartCacheReserveClearResponseResult.fromJson(Map<String, dynamic> json) { return SmartShieldSettingsStartCacheReserveClearResponseResult(
  id: SmartShieldSettingsStartCacheReserveClearResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  endTs: json['end_ts'] != null ? SmartshieldCacheReserveClearEndTs.fromJson(json['end_ts'] as String) : null,
  startTs: SmartshieldCacheReserveClearStartTs.fromJson(json['start_ts'] as String),
  state: SmartshieldCacheReserveClearState.fromJson(json['state'] as String),
); }

/// ID of the zone setting.
final SmartShieldSettingsStartCacheReserveClearResponseResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

/// The time that the latest Cache Reserve Clear operation completed.
final SmartshieldCacheReserveClearEndTs? endTs;

/// The time that the latest Cache Reserve Clear operation started.
final SmartshieldCacheReserveClearStartTs startTs;

/// The current state of the Cache Reserve Clear operation.
final SmartshieldCacheReserveClearState state;

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
SmartShieldSettingsStartCacheReserveClearResponseResult copyWith({SmartShieldSettingsStartCacheReserveClearResponseResultId? id, DateTime? Function()? modifiedOn, SmartshieldCacheReserveClearEndTs Function()? endTs, SmartshieldCacheReserveClearStartTs? startTs, SmartshieldCacheReserveClearState? state, }) { return SmartShieldSettingsStartCacheReserveClearResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  endTs: endTs != null ? endTs() : this.endTs,
  startTs: startTs ?? this.startTs,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartShieldSettingsStartCacheReserveClearResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          endTs == other.endTs &&
          startTs == other.startTs &&
          state == other.state; } 
@override int get hashCode { return Object.hash(id, modifiedOn, endTs, startTs, state); } 
@override String toString() { return 'SmartShieldSettingsStartCacheReserveClearResponseResult(id: $id, modifiedOn: $modifiedOn, endTs: $endTs, startTs: $startTs, state: $state)'; } 
 }
