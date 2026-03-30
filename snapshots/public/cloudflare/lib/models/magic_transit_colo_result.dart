// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_transit_colo.dart';import 'magic_transit_hop_result.dart';/// Errors resulting from collecting traceroute from colo to target.
final class MagicTransitError {const MagicTransitError._(this.value);

factory MagicTransitError.fromJson(String json) { return switch (json) {
  '' => $empty,
  'Could not gather traceroute data: Code 1' => couldNotGatherTracerouteDataCode1,
  'Could not gather traceroute data: Code 2' => couldNotGatherTracerouteDataCode2,
  'Could not gather traceroute data: Code 3' => couldNotGatherTracerouteDataCode3,
  'Could not gather traceroute data: Code 4' => couldNotGatherTracerouteDataCode4,
  _ => MagicTransitError._(json),
}; }

static const MagicTransitError $empty = MagicTransitError._('');

static const MagicTransitError couldNotGatherTracerouteDataCode1 = MagicTransitError._('Could not gather traceroute data: Code 1');

static const MagicTransitError couldNotGatherTracerouteDataCode2 = MagicTransitError._('Could not gather traceroute data: Code 2');

static const MagicTransitError couldNotGatherTracerouteDataCode3 = MagicTransitError._('Could not gather traceroute data: Code 3');

static const MagicTransitError couldNotGatherTracerouteDataCode4 = MagicTransitError._('Could not gather traceroute data: Code 4');

static const List<MagicTransitError> values = [$empty, couldNotGatherTracerouteDataCode1, couldNotGatherTracerouteDataCode2, couldNotGatherTracerouteDataCode3, couldNotGatherTracerouteDataCode4];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicTransitError && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicTransitError($value)'; } 
 }
/// Total time of traceroute in ms.
extension type const MagicTransitTracerouteTimeMs(int value) {
factory MagicTransitTracerouteTimeMs.fromJson(num json) => MagicTransitTracerouteTimeMs(json.toInt());

num toJson() => value;

}
final class MagicTransitColoResult {const MagicTransitColoResult({this.colo, this.error, this.hops, this.targetSummary, this.tracerouteTimeMs, });

factory MagicTransitColoResult.fromJson(Map<String, dynamic> json) { return MagicTransitColoResult(
  colo: json['colo'] != null ? MagicTransitColo.fromJson(json['colo'] as Map<String, dynamic>) : null,
  error: json['error'] != null ? MagicTransitError.fromJson(json['error'] as String) : null,
  hops: (json['hops'] as List<dynamic>?)?.map((e) => MagicTransitHopResult.fromJson(e as Map<String, dynamic>)).toList(),
  targetSummary: (json['target_summary'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  tracerouteTimeMs: json['traceroute_time_ms'] != null ? MagicTransitTracerouteTimeMs.fromJson(json['traceroute_time_ms'] as num) : null,
); }

final MagicTransitColo? colo;

final MagicTransitError? error;

final List<MagicTransitHopResult>? hops;

final Map<String,dynamic>? targetSummary;

final MagicTransitTracerouteTimeMs? tracerouteTimeMs;

Map<String, dynamic> toJson() { return {
  if (colo != null) 'colo': colo?.toJson(),
  if (error != null) 'error': error?.toJson(),
  if (hops != null) 'hops': hops?.map((e) => e.toJson()).toList(),
  'target_summary': ?targetSummary,
  if (tracerouteTimeMs != null) 'traceroute_time_ms': tracerouteTimeMs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'colo', 'error', 'hops', 'target_summary', 'traceroute_time_ms'}.contains(key)); } 
MagicTransitColoResult copyWith({MagicTransitColo Function()? colo, MagicTransitError Function()? error, List<MagicTransitHopResult> Function()? hops, Map<String, dynamic> Function()? targetSummary, MagicTransitTracerouteTimeMs Function()? tracerouteTimeMs, }) { return MagicTransitColoResult(
  colo: colo != null ? colo() : this.colo,
  error: error != null ? error() : this.error,
  hops: hops != null ? hops() : this.hops,
  targetSummary: targetSummary != null ? targetSummary() : this.targetSummary,
  tracerouteTimeMs: tracerouteTimeMs != null ? tracerouteTimeMs() : this.tracerouteTimeMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTransitColoResult &&
          colo == other.colo &&
          error == other.error &&
          listEquals(hops, other.hops) &&
          targetSummary == other.targetSummary &&
          tracerouteTimeMs == other.tracerouteTimeMs; } 
@override int get hashCode { return Object.hash(colo, error, Object.hashAll(hops ?? const []), targetSummary, tracerouteTimeMs); } 
@override String toString() { return 'MagicTransitColoResult(colo: $colo, error: $error, hops: $hops, targetSummary: $targetSummary, tracerouteTimeMs: $tracerouteTimeMs)'; } 
 }
