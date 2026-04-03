// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of hosted tool the model should to use. Learn more about
/// [built-in tools](/docs/guides/tools).
/// 
/// Allowed values are:
/// - `file_search`
/// - `web_search_preview`
/// - `computer`
/// - `computer_use_preview`
/// - `computer_use`
/// - `code_interpreter`
/// - `image_generation`
/// 
@immutable final class ToolChoiceTypesType {const ToolChoiceTypesType._(this.value);

factory ToolChoiceTypesType.fromJson(String json) { return switch (json) {
  'file_search' => fileSearch,
  'web_search_preview' => webSearchPreview,
  'computer' => computer,
  'computer_use_preview' => computerUsePreview,
  'computer_use' => computerUse,
  'web_search_preview_2025_03_11' => webSearchPreview20250311,
  'image_generation' => imageGeneration,
  'code_interpreter' => codeInterpreter,
  _ => ToolChoiceTypesType._(json),
}; }

static const ToolChoiceTypesType fileSearch = ToolChoiceTypesType._('file_search');

static const ToolChoiceTypesType webSearchPreview = ToolChoiceTypesType._('web_search_preview');

static const ToolChoiceTypesType computer = ToolChoiceTypesType._('computer');

static const ToolChoiceTypesType computerUsePreview = ToolChoiceTypesType._('computer_use_preview');

static const ToolChoiceTypesType computerUse = ToolChoiceTypesType._('computer_use');

static const ToolChoiceTypesType webSearchPreview20250311 = ToolChoiceTypesType._('web_search_preview_2025_03_11');

static const ToolChoiceTypesType imageGeneration = ToolChoiceTypesType._('image_generation');

static const ToolChoiceTypesType codeInterpreter = ToolChoiceTypesType._('code_interpreter');

static const List<ToolChoiceTypesType> values = [fileSearch, webSearchPreview, computer, computerUsePreview, computerUse, webSearchPreview20250311, imageGeneration, codeInterpreter];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolChoiceTypesType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ToolChoiceTypesType($value)'; } 
 }
/// Indicates that the model should use a built-in tool to generate a response.
/// [Learn more about built-in tools](/docs/guides/tools).
/// 
@immutable final class ToolChoiceTypes {const ToolChoiceTypes({required this.type});

factory ToolChoiceTypes.fromJson(Map<String, dynamic> json) { return ToolChoiceTypes(
  type: ToolChoiceTypesType.fromJson(json['type'] as String),
); }

/// The type of hosted tool the model should to use. Learn more about
/// [built-in tools](/docs/guides/tools).
/// 
/// Allowed values are:
/// - `file_search`
/// - `web_search_preview`
/// - `computer`
/// - `computer_use_preview`
/// - `computer_use`
/// - `code_interpreter`
/// - `image_generation`
/// 
final ToolChoiceTypesType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
ToolChoiceTypes copyWith({ToolChoiceTypesType? type}) { return ToolChoiceTypes(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ToolChoiceTypes &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'ToolChoiceTypes(type: $type)'; } 
 }
