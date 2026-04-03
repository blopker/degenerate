// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages51ToolChoiceVariant1CustomCustom {const Messages51ToolChoiceVariant1CustomCustom({required this.name});

factory Messages51ToolChoiceVariant1CustomCustom.fromJson(Map<String, dynamic> json) { return Messages51ToolChoiceVariant1CustomCustom(
  name: json['name'] as String,
); }

final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
Messages51ToolChoiceVariant1CustomCustom copyWith({String? name}) { return Messages51ToolChoiceVariant1CustomCustom(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51ToolChoiceVariant1CustomCustom &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'Messages51ToolChoiceVariant1CustomCustom(name: $name)'; } 
 }
