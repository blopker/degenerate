// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Defines a function in your own code the model can choose to call. Learn more about [function calling](https://platform.openai.com/docs/guides/function-calling).
@immutable final class FunctionTool {const FunctionTool({required this.name, required this.parameters, required this.strict, this.type = 'function', this.description, this.deferLoading, });

factory FunctionTool.fromJson(Map<String, dynamic> json) { return FunctionTool(
  type: json['type'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  parameters: json['parameters'] as Map<String, dynamic>?,
  strict: json['strict'] as bool?,
  deferLoading: json['defer_loading'] as bool?,
); }

/// The type of the function tool. Always `function`.
final String type;

/// The name of the function to call.
final String name;

/// A description of the function. Used by the model to determine whether or not to call the function.
final String? description;

/// A JSON schema object describing the parameters of the function.
final Map<String,dynamic>? parameters;

/// Whether to enforce strict parameter validation. Default `true`.
final bool? strict;

/// Whether this function is deferred and loaded via tool search.
final bool? deferLoading;

Map<String, dynamic> toJson() { return {
  'type': type,
  'name': name,
  'description': ?description,
  'parameters': ?parameters,
  'strict': ?strict,
  'defer_loading': ?deferLoading,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('parameters') &&
      json.containsKey('strict') && json['strict'] is bool; } 
FunctionTool copyWith({String? type, String? name, String? Function()? description, Map<String, dynamic>? Function()? parameters, bool? Function()? strict, bool Function()? deferLoading, }) { return FunctionTool(
  type: type ?? this.type,
  name: name ?? this.name,
  description: description != null ? description() : this.description,
  parameters: parameters != null ? parameters() : this.parameters,
  strict: strict != null ? strict() : this.strict,
  deferLoading: deferLoading != null ? deferLoading() : this.deferLoading,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FunctionTool &&
          type == other.type &&
          name == other.name &&
          description == other.description &&
          parameters == other.parameters &&
          strict == other.strict &&
          deferLoading == other.deferLoading; } 
@override int get hashCode { return Object.hash(type, name, description, parameters, strict, deferLoading); } 
@override String toString() { return 'FunctionTool(type: $type, name: $name, description: $description, parameters: $parameters, strict: $strict, deferLoading: $deferLoading)'; } 
 }
