// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The function definition.
@immutable final class RunToolCallObjectFunction {const RunToolCallObjectFunction({required this.name, required this.arguments, });

factory RunToolCallObjectFunction.fromJson(Map<String, dynamic> json) { return RunToolCallObjectFunction(
  name: json['name'] as String,
  arguments: json['arguments'] as String,
); }

/// The name of the function.
final String name;

/// The arguments that the model expects you to pass to the function.
final String arguments;

Map<String, dynamic> toJson() { return {
  'name': name,
  'arguments': arguments,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('arguments') && json['arguments'] is String; } 
RunToolCallObjectFunction copyWith({String? name, String? arguments, }) { return RunToolCallObjectFunction(
  name: name ?? this.name,
  arguments: arguments ?? this.arguments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunToolCallObjectFunction &&
          name == other.name &&
          arguments == other.arguments; } 
@override int get hashCode { return Object.hash(name, arguments); } 
@override String toString() { return 'RunToolCallObjectFunction(name: $name, arguments: $arguments)'; } 
 }
