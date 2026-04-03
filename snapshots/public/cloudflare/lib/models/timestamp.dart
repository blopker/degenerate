// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_timestamp_unit.dart';@immutable final class TimestampType {const TimestampType._(this.value);

factory TimestampType.fromJson(String json) { return switch (json) {
  'timestamp' => timestamp,
  _ => TimestampType._(json),
}; }

static const TimestampType timestamp = TimestampType._('timestamp');

static const List<TimestampType> values = [timestamp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TimestampType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TimestampType($value)'; } 
 }
@immutable final class Timestamp {const Timestamp({required this.type, this.unit, });

factory Timestamp.fromJson(Map<String, dynamic> json) { return Timestamp(
  unit: json['unit'] != null ? CloudflarePipelinesTimestampUnit.fromJson(json['unit'] as String) : null,
  type: TimestampType.fromJson(json['type'] as String),
); }

final CloudflarePipelinesTimestampUnit? unit;

final TimestampType type;

Map<String, dynamic> toJson() { return {
  if (unit != null) 'unit': unit?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
Timestamp copyWith({CloudflarePipelinesTimestampUnit Function()? unit, TimestampType? type, }) { return Timestamp(
  unit: unit != null ? unit() : this.unit,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Timestamp &&
          unit == other.unit &&
          type == other.type; } 
@override int get hashCode { return Object.hash(unit, type); } 
@override String toString() { return 'Timestamp(unit: $unit, type: $type)'; } 
 }
