// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the content.
@immutable final class RunStepDetailsToolCallsFileSearchResultObjectContentType {const RunStepDetailsToolCallsFileSearchResultObjectContentType._(this.value);

factory RunStepDetailsToolCallsFileSearchResultObjectContentType.fromJson(String json) { return switch (json) {
  'text' => text,
  _ => RunStepDetailsToolCallsFileSearchResultObjectContentType._(json),
}; }

static const RunStepDetailsToolCallsFileSearchResultObjectContentType text = RunStepDetailsToolCallsFileSearchResultObjectContentType._('text');

static const List<RunStepDetailsToolCallsFileSearchResultObjectContentType> values = [text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepDetailsToolCallsFileSearchResultObjectContentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepDetailsToolCallsFileSearchResultObjectContentType($value)'; } 
 }
@immutable final class RunStepDetailsToolCallsFileSearchResultObjectContent {const RunStepDetailsToolCallsFileSearchResultObjectContent({this.type, this.text, });

factory RunStepDetailsToolCallsFileSearchResultObjectContent.fromJson(Map<String, dynamic> json) { return RunStepDetailsToolCallsFileSearchResultObjectContent(
  type: json['type'] != null ? RunStepDetailsToolCallsFileSearchResultObjectContentType.fromJson(json['type'] as String) : null,
  text: json['text'] as String?,
); }

/// The type of the content.
final RunStepDetailsToolCallsFileSearchResultObjectContentType? type;

/// The text content of the file.
final String? text;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'text'}.contains(key)); } 
RunStepDetailsToolCallsFileSearchResultObjectContent copyWith({RunStepDetailsToolCallsFileSearchResultObjectContentType Function()? type, String Function()? text, }) { return RunStepDetailsToolCallsFileSearchResultObjectContent(
  type: type != null ? type() : this.type,
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDetailsToolCallsFileSearchResultObjectContent &&
          type == other.type &&
          text == other.text; } 
@override int get hashCode { return Object.hash(type, text); } 
@override String toString() { return 'RunStepDetailsToolCallsFileSearchResultObjectContent(type: $type, text: $text)'; } 
 }
