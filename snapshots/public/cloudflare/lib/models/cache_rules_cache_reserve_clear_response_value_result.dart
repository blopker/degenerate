// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_cache_reserve_clear_end_ts.dart';import 'cache_rules_cache_reserve_clear_start_ts.dart';import 'cache_rules_cache_reserve_clear_state.dart';@immutable final class CacheRulesCacheReserveClearResponseValueResult {const CacheRulesCacheReserveClearResponseValueResult({required this.startTs, required this.state, this.endTs, });

factory CacheRulesCacheReserveClearResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesCacheReserveClearResponseValueResult(
  endTs: json['end_ts'] != null ? CacheRulesCacheReserveClearEndTs.fromJson(json['end_ts'] as String) : null,
  startTs: CacheRulesCacheReserveClearStartTs.fromJson(json['start_ts'] as String),
  state: CacheRulesCacheReserveClearState.fromJson(json['state'] as String),
); }

/// The time that the latest Cache Reserve Clear operation completed.
final CacheRulesCacheReserveClearEndTs? endTs;

final CacheRulesCacheReserveClearStartTs startTs;

final CacheRulesCacheReserveClearState state;

Map<String, dynamic> toJson() { return {
  if (endTs != null) 'end_ts': endTs?.toJson(),
  'start_ts': startTs.toJson(),
  'state': state.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('start_ts') &&
      json.containsKey('state'); } 
CacheRulesCacheReserveClearResponseValueResult copyWith({CacheRulesCacheReserveClearEndTs Function()? endTs, CacheRulesCacheReserveClearStartTs? startTs, CacheRulesCacheReserveClearState? state, }) { return CacheRulesCacheReserveClearResponseValueResult(
  endTs: endTs != null ? endTs() : this.endTs,
  startTs: startTs ?? this.startTs,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesCacheReserveClearResponseValueResult &&
          endTs == other.endTs &&
          startTs == other.startTs &&
          state == other.state; } 
@override int get hashCode { return Object.hash(endTs, startTs, state); } 
@override String toString() { return 'CacheRulesCacheReserveClearResponseValueResult(endTs: $endTs, startTs: $startTs, state: $state)'; } 
 }
