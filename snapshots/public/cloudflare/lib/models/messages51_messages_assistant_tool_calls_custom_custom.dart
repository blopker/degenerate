// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages51MessagesAssistantToolCallsCustomCustom {const Messages51MessagesAssistantToolCallsCustomCustom({required this.input, required this.name, });

factory Messages51MessagesAssistantToolCallsCustomCustom.fromJson(Map<String, dynamic> json) { return Messages51MessagesAssistantToolCallsCustomCustom(
  input: json['input'] as String,
  name: json['name'] as String,
); }

final String input;

final String name;

Map<String, dynamic> toJson() { return {
  'input': input,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('input') && json['input'] is String &&
      json.containsKey('name') && json['name'] is String; } 
Messages51MessagesAssistantToolCallsCustomCustom copyWith({String? input, String? name, }) { return Messages51MessagesAssistantToolCallsCustomCustom(
  input: input ?? this.input,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51MessagesAssistantToolCallsCustomCustom &&
          input == other.input &&
          name == other.name; } 
@override int get hashCode { return Object.hash(input, name); } 
@override String toString() { return 'Messages51MessagesAssistantToolCallsCustomCustom(input: $input, name: $name)'; } 
 }
