// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of source
@immutable final class MqEventSourceR2Type {const MqEventSourceR2Type._(this.value);

factory MqEventSourceR2Type.fromJson(String json) { return switch (json) {
  'r2' => r2,
  _ => MqEventSourceR2Type._(json),
}; }

static const MqEventSourceR2Type r2 = MqEventSourceR2Type._('r2');

static const List<MqEventSourceR2Type> values = [r2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqEventSourceR2Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MqEventSourceR2Type($value)'; } 
 }
@immutable final class MqEventSourceR2 {const MqEventSourceR2({this.type});

factory MqEventSourceR2.fromJson(Map<String, dynamic> json) { return MqEventSourceR2(
  type: json['type'] != null ? MqEventSourceR2Type.fromJson(json['type'] as String) : null,
); }

/// Type of source
final MqEventSourceR2Type? type;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type'}.contains(key)); } 
MqEventSourceR2 copyWith({MqEventSourceR2Type Function()? type}) { return MqEventSourceR2(
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqEventSourceR2 &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'MqEventSourceR2(type: $type)'; } 
 }
