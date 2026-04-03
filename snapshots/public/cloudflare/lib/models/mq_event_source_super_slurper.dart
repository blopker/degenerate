// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of source
@immutable final class MqEventSourceSuperSlurperType {const MqEventSourceSuperSlurperType._(this.value);

factory MqEventSourceSuperSlurperType.fromJson(String json) { return switch (json) {
  'superSlurper' => superSlurper,
  _ => MqEventSourceSuperSlurperType._(json),
}; }

static const MqEventSourceSuperSlurperType superSlurper = MqEventSourceSuperSlurperType._('superSlurper');

static const List<MqEventSourceSuperSlurperType> values = [superSlurper];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqEventSourceSuperSlurperType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MqEventSourceSuperSlurperType($value)'; } 
 }
@immutable final class MqEventSourceSuperSlurper {const MqEventSourceSuperSlurper({this.type});

factory MqEventSourceSuperSlurper.fromJson(Map<String, dynamic> json) { return MqEventSourceSuperSlurper(
  type: json['type'] != null ? MqEventSourceSuperSlurperType.fromJson(json['type'] as String) : null,
); }

/// Type of source
final MqEventSourceSuperSlurperType? type;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type'}.contains(key)); } 
MqEventSourceSuperSlurper copyWith({MqEventSourceSuperSlurperType Function()? type}) { return MqEventSourceSuperSlurper(
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqEventSourceSuperSlurper &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'MqEventSourceSuperSlurper(type: $type)'; } 
 }
