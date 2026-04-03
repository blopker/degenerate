// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TelemetryQueryRequestParametersGroupBysType {const TelemetryQueryRequestParametersGroupBysType._(this.value);

factory TelemetryQueryRequestParametersGroupBysType.fromJson(String json) { return switch (json) {
  'string' => string,
  'number' => number,
  'boolean' => boolean,
  _ => TelemetryQueryRequestParametersGroupBysType._(json),
}; }

static const TelemetryQueryRequestParametersGroupBysType string = TelemetryQueryRequestParametersGroupBysType._('string');

static const TelemetryQueryRequestParametersGroupBysType number = TelemetryQueryRequestParametersGroupBysType._('number');

static const TelemetryQueryRequestParametersGroupBysType boolean = TelemetryQueryRequestParametersGroupBysType._('boolean');

static const List<TelemetryQueryRequestParametersGroupBysType> values = [string, number, boolean];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryQueryRequestParametersGroupBysType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TelemetryQueryRequestParametersGroupBysType($value)'; } 
 }
@immutable final class TelemetryQueryRequestParametersGroupBys {const TelemetryQueryRequestParametersGroupBys({required this.type, required this.value, });

factory TelemetryQueryRequestParametersGroupBys.fromJson(Map<String, dynamic> json) { return TelemetryQueryRequestParametersGroupBys(
  type: TelemetryQueryRequestParametersGroupBysType.fromJson(json['type'] as String),
  value: json['value'] as String,
); }

final TelemetryQueryRequestParametersGroupBysType type;

final String value;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('value') && json['value'] is String; } 
TelemetryQueryRequestParametersGroupBys copyWith({TelemetryQueryRequestParametersGroupBysType? type, String? value, }) { return TelemetryQueryRequestParametersGroupBys(
  type: type ?? this.type,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryQueryRequestParametersGroupBys &&
          type == other.type &&
          value == other.value; } 
@override int get hashCode { return Object.hash(type, value); } 
@override String toString() { return 'TelemetryQueryRequestParametersGroupBys(type: $type, value: $value)'; } 
 }
