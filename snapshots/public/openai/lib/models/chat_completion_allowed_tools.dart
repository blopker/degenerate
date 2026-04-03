// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Constrains the tools available to the model to a pre-defined set.
/// 
/// `auto` allows the model to pick from among the allowed tools and generate a
/// message.
/// 
/// `required` requires the model to call one or more of the allowed tools.
/// 
@immutable final class ChatCompletionAllowedToolsMode {const ChatCompletionAllowedToolsMode._(this.value);

factory ChatCompletionAllowedToolsMode.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'required' => $required,
  _ => ChatCompletionAllowedToolsMode._(json),
}; }

static const ChatCompletionAllowedToolsMode auto = ChatCompletionAllowedToolsMode._('auto');

static const ChatCompletionAllowedToolsMode $required = ChatCompletionAllowedToolsMode._('required');

static const List<ChatCompletionAllowedToolsMode> values = [auto, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionAllowedToolsMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChatCompletionAllowedToolsMode($value)'; } 
 }
/// Constrains the tools available to the model to a pre-defined set.
/// 
@immutable final class ChatCompletionAllowedTools {const ChatCompletionAllowedTools({required this.mode, required this.tools, });

factory ChatCompletionAllowedTools.fromJson(Map<String, dynamic> json) { return ChatCompletionAllowedTools(
  mode: ChatCompletionAllowedToolsMode.fromJson(json['mode'] as String),
  tools: (json['tools'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

/// Constrains the tools available to the model to a pre-defined set.
/// 
/// `auto` allows the model to pick from among the allowed tools and generate a
/// message.
/// 
/// `required` requires the model to call one or more of the allowed tools.
/// 
final ChatCompletionAllowedToolsMode mode;

/// A list of tool definitions that the model should be allowed to call.
/// 
/// For the Chat Completions API, the list of tool definitions might look like:
/// ```json`
/// [
///   { "type": "function", "function": { "name": "get_weather" } },
///   { "type": "function", "function": { "name": "get_time" } }
/// ]
/// ````
/// 
final List<Map<String,dynamic>> tools;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
  'tools': tools.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode') &&
      json.containsKey('tools'); } 
ChatCompletionAllowedTools copyWith({ChatCompletionAllowedToolsMode? mode, List<Map<String,dynamic>>? tools, }) { return ChatCompletionAllowedTools(
  mode: mode ?? this.mode,
  tools: tools ?? this.tools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionAllowedTools &&
          mode == other.mode &&
          listEquals(tools, other.tools); } 
@override int get hashCode { return Object.hash(mode, Object.hashAll(tools)); } 
@override String toString() { return 'ChatCompletionAllowedTools(mode: $mode, tools: $tools)'; } 
 }
