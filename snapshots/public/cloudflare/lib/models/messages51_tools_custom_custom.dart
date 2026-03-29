// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_tools_custom_custom_format.dart';import 'messages51_tools_custom_custom_format_grammar.dart';import 'messages51_tools_custom_custom_format_text.dart';final class Messages51ToolsCustomCustom {const Messages51ToolsCustomCustom({this.description, this.format, required this.name, });

factory Messages51ToolsCustomCustom.fromJson(Map<String, dynamic> json) { return Messages51ToolsCustomCustom(
  description: json['description'] as String?,
  format: json['format'] != null ? OneOf2.parse(json['format'], fromA: (v) => Messages51ToolsCustomCustomFormatText.fromJson(v as Map<String, dynamic>), fromB: (v) => Messages51ToolsCustomCustomFormatGrammar.fromJson(v as Map<String, dynamic>),) : null,
  name: json['name'] as String,
); }

final String? description;

final Messages51ToolsCustomCustomFormat? format;

final String name;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  if (format != null) 'format': format?.toJson(),
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
Messages51ToolsCustomCustom copyWith({String Function()? description, Messages51ToolsCustomCustomFormat Function()? format, String? name, }) { return Messages51ToolsCustomCustom(
  description: description != null ? description() : this.description,
  format: format != null ? format() : this.format,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51ToolsCustomCustom &&
          description == other.description &&
          format == other.format &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, format, name); } 
@override String toString() { return 'Messages51ToolsCustomCustom(description: $description, format: $format, name: $name)'; } 
 }
