// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_model_param.dart';@immutable final class FunctionToolParamType {const FunctionToolParamType._(this.value);

factory FunctionToolParamType.fromJson(String json) { return switch (json) {
  'function' => function,
  _ => FunctionToolParamType._(json),
}; }

static const FunctionToolParamType function = FunctionToolParamType._('function');

static const List<FunctionToolParamType> values = [function];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionToolParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FunctionToolParamType($value)'; } 
 }
@immutable final class FunctionToolParam {const FunctionToolParam({required this.name, this.description = const Omittable.absent(), this.parameters = const Omittable.absent(), this.strict = const Omittable.absent(), this.type = FunctionToolParamType.function, });

factory FunctionToolParam.fromJson(Map<String, dynamic> json) { return FunctionToolParam(
  name: json['name'] as String,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  parameters: json.containsKey('parameters') ? Omittable(json['parameters'] != null ? EmptyModelParam.fromJson(json['parameters'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  strict: json.containsKey('strict') ? Omittable(json['strict'] as bool?) : const Omittable.absent(),
  type: FunctionToolParamType.fromJson(json['type'] as String),
); }

final String name;

final Omittable<String?> description;

final Omittable<EmptyModelParam?> parameters;

final Omittable<bool?> strict;

final FunctionToolParamType type;

Map<String, dynamic> toJson() { return {
  'name': name,
  if (description.isPresent) 'description': description.value,
  if (parameters.isPresent) 'parameters': parameters.value?.toJson(),
  if (strict.isPresent) 'strict': strict.value,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('type'); } 
FunctionToolParam copyWith({String? name, Omittable<String?>? description, Omittable<EmptyModelParam?>? parameters, Omittable<bool?>? strict, FunctionToolParamType? type, }) { return FunctionToolParam(
  name: name ?? this.name,
  description: description ?? this.description,
  parameters: parameters ?? this.parameters,
  strict: strict ?? this.strict,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FunctionToolParam &&
          name == other.name &&
          description == other.description &&
          parameters == other.parameters &&
          strict == other.strict &&
          type == other.type; } 
@override int get hashCode { return Object.hash(name, description, parameters, strict, type); } 
@override String toString() { return 'FunctionToolParam(name: $name, description: $description, parameters: $parameters, strict: $strict, type: $type)'; } 
 }
