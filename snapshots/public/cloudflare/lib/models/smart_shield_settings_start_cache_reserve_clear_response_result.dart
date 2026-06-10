// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_cache_reserve_clear_end_ts.dart';import 'smartshield_cache_reserve_clear_start_ts.dart';import 'smartshield_cache_reserve_clear_state.dart';@immutable final class SmartShieldSettingsStartCacheReserveClearResponseResult {const SmartShieldSettingsStartCacheReserveClearResponseResult({required this.startTs, required this.state, this.endTs, });

factory SmartShieldSettingsStartCacheReserveClearResponseResult.fromJson(Map<String, dynamic> json) { return SmartShieldSettingsStartCacheReserveClearResponseResult(
  endTs: json['end_ts'] != null ? SmartshieldCacheReserveClearEndTs.fromJson(json['end_ts'] as String) : null,
  startTs: SmartshieldCacheReserveClearStartTs.fromJson(json['start_ts'] as String),
  state: SmartshieldCacheReserveClearState.fromJson(json['state'] as String),
); }

/// The time that the latest Cache Reserve Clear operation completed.
final SmartshieldCacheReserveClearEndTs? endTs;

/// The time that the latest Cache Reserve Clear operation started.
final SmartshieldCacheReserveClearStartTs startTs;

/// The current state of the Cache Reserve Clear operation.
final SmartshieldCacheReserveClearState state;

Map<String, dynamic> toJson() { return {
  if (endTs != null) 'end_ts': endTs?.toJson(),
  'start_ts': startTs.toJson(),
  'state': state.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('start_ts') &&
      json.containsKey('state'); } 
SmartShieldSettingsStartCacheReserveClearResponseResult copyWith({SmartshieldCacheReserveClearEndTs Function()? endTs, SmartshieldCacheReserveClearStartTs? startTs, SmartshieldCacheReserveClearState? state, }) { return SmartShieldSettingsStartCacheReserveClearResponseResult(
  endTs: endTs != null ? endTs() : this.endTs,
  startTs: startTs ?? this.startTs,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartShieldSettingsStartCacheReserveClearResponseResult &&
          endTs == other.endTs &&
          startTs == other.startTs &&
          state == other.state; } 
@override int get hashCode { return Object.hash(endTs, startTs, state); } 
@override String toString() { return 'SmartShieldSettingsStartCacheReserveClearResponseResult(endTs: $endTs, startTs: $startTs, state: $state)'; } 
 }
