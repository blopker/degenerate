// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The tool to call. Always `shell`.
@immutable final class SpecificFunctionShellParamType {const SpecificFunctionShellParamType._(this.value);

factory SpecificFunctionShellParamType.fromJson(String json) { return switch (json) {
  'shell' => shell,
  _ => SpecificFunctionShellParamType._(json),
}; }

static const SpecificFunctionShellParamType shell = SpecificFunctionShellParamType._('shell');

static const List<SpecificFunctionShellParamType> values = [shell];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpecificFunctionShellParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpecificFunctionShellParamType($value)'; } 
 }
/// Forces the model to call the shell tool when a tool call is required.
@immutable final class SpecificFunctionShellParam {const SpecificFunctionShellParam({this.type = SpecificFunctionShellParamType.shell});

factory SpecificFunctionShellParam.fromJson(Map<String, dynamic> json) { return SpecificFunctionShellParam(
  type: SpecificFunctionShellParamType.fromJson(json['type'] as String),
); }

/// The tool to call. Always `shell`.
final SpecificFunctionShellParamType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
SpecificFunctionShellParam copyWith({SpecificFunctionShellParamType? type}) { return SpecificFunctionShellParam(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpecificFunctionShellParam &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'SpecificFunctionShellParam(type: $type)'; } 
 }
