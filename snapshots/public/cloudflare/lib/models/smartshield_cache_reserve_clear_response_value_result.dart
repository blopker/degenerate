// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_cache_reserve_clear_end_ts.dart';import 'smartshield_cache_reserve_clear_start_ts.dart';import 'smartshield_cache_reserve_clear_state.dart';@immutable final class SmartshieldCacheReserveClearResponseValueResult {const SmartshieldCacheReserveClearResponseValueResult({required this.startTs, required this.state, this.endTs, });

factory SmartshieldCacheReserveClearResponseValueResult.fromJson(Map<String, dynamic> json) { return SmartshieldCacheReserveClearResponseValueResult(
  endTs: json['end_ts'] != null ? SmartshieldCacheReserveClearEndTs.fromJson(json['end_ts'] as String) : null,
  startTs: SmartshieldCacheReserveClearStartTs.fromJson(json['start_ts'] as String),
  state: SmartshieldCacheReserveClearState.fromJson(json['state'] as String),
); }

/// The time that the latest Cache Reserve Clear operation completed.
final SmartshieldCacheReserveClearEndTs? endTs;

final SmartshieldCacheReserveClearStartTs startTs;

final SmartshieldCacheReserveClearState state;

Map<String, dynamic> toJson() { return {
  if (endTs != null) 'end_ts': endTs?.toJson(),
  'start_ts': startTs.toJson(),
  'state': state.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('start_ts') &&
      json.containsKey('state'); } 
SmartshieldCacheReserveClearResponseValueResult copyWith({SmartshieldCacheReserveClearEndTs Function()? endTs, SmartshieldCacheReserveClearStartTs? startTs, SmartshieldCacheReserveClearState? state, }) { return SmartshieldCacheReserveClearResponseValueResult(
  endTs: endTs != null ? endTs() : this.endTs,
  startTs: startTs ?? this.startTs,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldCacheReserveClearResponseValueResult &&
          endTs == other.endTs &&
          startTs == other.startTs &&
          state == other.state; } 
@override int get hashCode { return Object.hash(endTs, startTs, state); } 
@override String toString() { return 'SmartshieldCacheReserveClearResponseValueResult(endTs: $endTs, startTs: $startTs, state: $state)'; } 
 }
