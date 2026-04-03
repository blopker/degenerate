// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Finished PKI rotation
@immutable final class MconnEventFinishRotatePkiSuccessK {const MconnEventFinishRotatePkiSuccessK._(this.value);

factory MconnEventFinishRotatePkiSuccessK.fromJson(String json) { return switch (json) {
  'FinishRotatePkiSuccess' => finishRotatePkiSuccess,
  _ => MconnEventFinishRotatePkiSuccessK._(json),
}; }

static const MconnEventFinishRotatePkiSuccessK finishRotatePkiSuccess = MconnEventFinishRotatePkiSuccessK._('FinishRotatePkiSuccess');

static const List<MconnEventFinishRotatePkiSuccessK> values = [finishRotatePkiSuccess];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventFinishRotatePkiSuccessK && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MconnEventFinishRotatePkiSuccessK($value)'; } 
 }
@immutable final class MconnEventFinishRotatePkiSuccess {const MconnEventFinishRotatePkiSuccess({required this.k});

factory MconnEventFinishRotatePkiSuccess.fromJson(Map<String, dynamic> json) { return MconnEventFinishRotatePkiSuccess(
  k: MconnEventFinishRotatePkiSuccessK.fromJson(json['k'] as String),
); }

/// Finished PKI rotation
final MconnEventFinishRotatePkiSuccessK k;

Map<String, dynamic> toJson() { return {
  'k': k.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('k'); } 
MconnEventFinishRotatePkiSuccess copyWith({MconnEventFinishRotatePkiSuccessK? k}) { return MconnEventFinishRotatePkiSuccess(
  k: k ?? this.k,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnEventFinishRotatePkiSuccess &&
          k == other.k; } 
@override int get hashCode { return k.hashCode; } 
@override String toString() { return 'MconnEventFinishRotatePkiSuccess(k: $k)'; } 
 }
