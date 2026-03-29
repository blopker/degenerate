// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode {const Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode._(this.value);

factory Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'required' => $required,
  _ => Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode._(json),
}; }

static const Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode auto = Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode._('auto');

static const Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode $required = Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode._('required');

static const List<Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode> values = [auto, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode($value)'; } 
 }
final class Prompt43ToolChoiceVariant1AllowedToolsAllowedTools {const Prompt43ToolChoiceVariant1AllowedToolsAllowedTools({required this.mode, required this.tools, });

factory Prompt43ToolChoiceVariant1AllowedToolsAllowedTools.fromJson(Map<String, dynamic> json) { return Prompt43ToolChoiceVariant1AllowedToolsAllowedTools(
  mode: Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode.fromJson(json['mode'] as String),
  tools: (json['tools'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode mode;

final List<Map<String,dynamic>> tools;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
  'tools': tools.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode') &&
      json.containsKey('tools'); } 
Prompt43ToolChoiceVariant1AllowedToolsAllowedTools copyWith({Prompt43ToolChoiceVariant1AllowedToolsAllowedToolsMode? mode, List<Map<String,dynamic>>? tools, }) { return Prompt43ToolChoiceVariant1AllowedToolsAllowedTools(
  mode: mode ?? this.mode,
  tools: tools ?? this.tools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43ToolChoiceVariant1AllowedToolsAllowedTools &&
          mode == other.mode &&
          listEquals(tools, other.tools); } 
@override int get hashCode { return Object.hash(mode, Object.hashAll(tools)); } 
@override String toString() { return 'Prompt43ToolChoiceVariant1AllowedToolsAllowedTools(mode: $mode, tools: $tools)'; } 
 }
