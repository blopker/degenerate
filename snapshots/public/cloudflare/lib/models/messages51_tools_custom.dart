// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_tools_custom_custom.dart';@immutable final class Messages51ToolsCustomType {const Messages51ToolsCustomType._(this.value);

factory Messages51ToolsCustomType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  _ => Messages51ToolsCustomType._(json),
}; }

static const Messages51ToolsCustomType custom = Messages51ToolsCustomType._('custom');

static const List<Messages51ToolsCustomType> values = [custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51ToolsCustomType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51ToolsCustomType($value)'; } 
 }
@immutable final class Messages51ToolsCustom {const Messages51ToolsCustom({required this.custom, required this.type, });

factory Messages51ToolsCustom.fromJson(Map<String, dynamic> json) { return Messages51ToolsCustom(
  custom: Messages51ToolsCustomCustom.fromJson(json['custom'] as Map<String, dynamic>),
  type: Messages51ToolsCustomType.fromJson(json['type'] as String),
); }

final Messages51ToolsCustomCustom custom;

final Messages51ToolsCustomType type;

Map<String, dynamic> toJson() { return {
  'custom': custom.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('custom') &&
      json.containsKey('type'); } 
Messages51ToolsCustom copyWith({Messages51ToolsCustomCustom? custom, Messages51ToolsCustomType? type, }) { return Messages51ToolsCustom(
  custom: custom ?? this.custom,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51ToolsCustom &&
          custom == other.custom &&
          type == other.type; } 
@override int get hashCode { return Object.hash(custom, type); } 
@override String toString() { return 'Messages51ToolsCustom(custom: $custom, type: $type)'; } 
 }
