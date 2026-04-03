// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages51MessagesAssistantFunctionCallVariant1 {const Messages51MessagesAssistantFunctionCallVariant1({required this.arguments, required this.name, });

factory Messages51MessagesAssistantFunctionCallVariant1.fromJson(Map<String, dynamic> json) { return Messages51MessagesAssistantFunctionCallVariant1(
  arguments: json['arguments'] as String,
  name: json['name'] as String,
); }

final String arguments;

final String name;

Map<String, dynamic> toJson() { return {
  'arguments': arguments,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('arguments') && json['arguments'] is String &&
      json.containsKey('name') && json['name'] is String; } 
Messages51MessagesAssistantFunctionCallVariant1 copyWith({String? arguments, String? name, }) { return Messages51MessagesAssistantFunctionCallVariant1(
  arguments: arguments ?? this.arguments,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51MessagesAssistantFunctionCallVariant1 &&
          arguments == other.arguments &&
          name == other.name; } 
@override int get hashCode { return Object.hash(arguments, name); } 
@override String toString() { return 'Messages51MessagesAssistantFunctionCallVariant1(arguments: $arguments, name: $name)'; } 
 }
