// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The time that the latest Cache Reserve Clear operation completed.
extension type CacheRulesCacheReserveClearEndTs(DateTime value) {
factory CacheRulesCacheReserveClearEndTs.fromJson(String json) => CacheRulesCacheReserveClearEndTs(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// The time that the latest Cache Reserve Clear operation started.
extension type CacheRulesCacheReserveClearStartTs(DateTime value) {
factory CacheRulesCacheReserveClearStartTs.fromJson(String json) => CacheRulesCacheReserveClearStartTs(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// The current state of the Cache Reserve Clear operation.
@immutable final class CacheRulesCacheReserveClearState {const CacheRulesCacheReserveClearState._(this.value);

factory CacheRulesCacheReserveClearState.fromJson(String json) { return switch (json) {
  'In-progress' => inProgress,
  'Completed' => completed,
  _ => CacheRulesCacheReserveClearState._(json),
}; }

static const CacheRulesCacheReserveClearState inProgress = CacheRulesCacheReserveClearState._('In-progress');

static const CacheRulesCacheReserveClearState completed = CacheRulesCacheReserveClearState._('Completed');

static const List<CacheRulesCacheReserveClearState> values = [inProgress, completed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesCacheReserveClearState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesCacheReserveClearState($value)'; } 
 }
@immutable final class CacheRulesCacheReserveClearResponseValueResult {const CacheRulesCacheReserveClearResponseValueResult({required this.startTs, required this.state, this.endTs, });

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
