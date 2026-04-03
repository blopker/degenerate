// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Failed crypt key rotation
@immutable final class MconnEventFinishRotateCryptKeyFailureK {const MconnEventFinishRotateCryptKeyFailureK._(this.value);

factory MconnEventFinishRotateCryptKeyFailureK.fromJson(String json) { return switch (json) {
  'FinishRotateCryptKeyFailure' => finishRotateCryptKeyFailure,
  _ => MconnEventFinishRotateCryptKeyFailureK._(json),
}; }

static const MconnEventFinishRotateCryptKeyFailureK finishRotateCryptKeyFailure = MconnEventFinishRotateCryptKeyFailureK._('FinishRotateCryptKeyFailure');

static const List<MconnEventFinishRotateCryptKeyFailureK> values = [finishRotateCryptKeyFailure];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventFinishRotateCryptKeyFailureK && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MconnEventFinishRotateCryptKeyFailureK($value)'; } 
 }
@immutable final class MconnEventFinishRotateCryptKeyFailure {const MconnEventFinishRotateCryptKeyFailure({required this.k});

factory MconnEventFinishRotateCryptKeyFailure.fromJson(Map<String, dynamic> json) { return MconnEventFinishRotateCryptKeyFailure(
  k: MconnEventFinishRotateCryptKeyFailureK.fromJson(json['k'] as String),
); }

/// Failed crypt key rotation
final MconnEventFinishRotateCryptKeyFailureK k;

Map<String, dynamic> toJson() { return {
  'k': k.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('k'); } 
MconnEventFinishRotateCryptKeyFailure copyWith({MconnEventFinishRotateCryptKeyFailureK? k}) { return MconnEventFinishRotateCryptKeyFailure(
  k: k ?? this.k,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnEventFinishRotateCryptKeyFailure &&
          k == other.k; } 
@override int get hashCode { return k.hashCode; } 
@override String toString() { return 'MconnEventFinishRotateCryptKeyFailure(k: $k)'; } 
 }
