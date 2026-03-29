// GENERATED CODE - DO NOT MODIFY BY HAND

import 'd1_read_replication_mode.dart';/// Configuration for D1 read replication.
final class D1DatabaseUpdatePartialRequestBodyReadReplication {const D1DatabaseUpdatePartialRequestBodyReadReplication({required this.mode});

factory D1DatabaseUpdatePartialRequestBodyReadReplication.fromJson(Map<String, dynamic> json) { return D1DatabaseUpdatePartialRequestBodyReadReplication(
  mode: D1ReadReplicationMode.fromJson(json['mode'] as String),
); }

final D1ReadReplicationMode mode;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode'); } 
D1DatabaseUpdatePartialRequestBodyReadReplication copyWith({D1ReadReplicationMode? mode}) { return D1DatabaseUpdatePartialRequestBodyReadReplication(
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1DatabaseUpdatePartialRequestBodyReadReplication &&
          mode == other.mode; } 
@override int get hashCode { return mode.hashCode; } 
@override String toString() { return 'D1DatabaseUpdatePartialRequestBodyReadReplication(mode: $mode)'; } 
 }
