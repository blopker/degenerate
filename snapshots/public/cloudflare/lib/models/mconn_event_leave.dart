// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Stopped process
@immutable final class MconnEventLeaveK {const MconnEventLeaveK._(this.value);

factory MconnEventLeaveK.fromJson(String json) { return switch (json) {
  'Leave' => leave,
  _ => MconnEventLeaveK._(json),
}; }

static const MconnEventLeaveK leave = MconnEventLeaveK._('Leave');

static const List<MconnEventLeaveK> values = [leave];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventLeaveK && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MconnEventLeaveK($value)'; } 
 }
@immutable final class MconnEventLeave {const MconnEventLeave({required this.k});

factory MconnEventLeave.fromJson(Map<String, dynamic> json) { return MconnEventLeave(
  k: MconnEventLeaveK.fromJson(json['k'] as String),
); }

/// Stopped process
final MconnEventLeaveK k;

Map<String, dynamic> toJson() { return {
  'k': k.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('k'); } 
MconnEventLeave copyWith({MconnEventLeaveK? k}) { return MconnEventLeave(
  k: k ?? this.k,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnEventLeave &&
          k == other.k; } 
@override int get hashCode { return k.hashCode; } 
@override String toString() { return 'MconnEventLeave(k: $k)'; } 
 }
