// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'eval_jsonl_file_content_source_content.dart';/// The type of jsonl source. Always `file_content`.
final class EvalJsonlFileContentSourceType {const EvalJsonlFileContentSourceType._(this.value);

factory EvalJsonlFileContentSourceType.fromJson(String json) { return switch (json) {
  'file_content' => fileContent,
  _ => EvalJsonlFileContentSourceType._(json),
}; }

static const EvalJsonlFileContentSourceType fileContent = EvalJsonlFileContentSourceType._('file_content');

static const List<EvalJsonlFileContentSourceType> values = [fileContent];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalJsonlFileContentSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalJsonlFileContentSourceType($value)'; } 
 }
final class EvalJsonlFileContentSource {const EvalJsonlFileContentSource({this.type = EvalJsonlFileContentSourceType.fileContent, required this.content, });

factory EvalJsonlFileContentSource.fromJson(Map<String, dynamic> json) { return EvalJsonlFileContentSource(
  type: EvalJsonlFileContentSourceType.fromJson(json['type'] as String),
  content: (json['content'] as List<dynamic>).map((e) => EvalJsonlFileContentSourceContent.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The type of jsonl source. Always `file_content`.
final EvalJsonlFileContentSourceType type;

/// The content of the jsonl file.
final List<EvalJsonlFileContentSourceContent> content;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'content': content.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('content'); } 
EvalJsonlFileContentSource copyWith({EvalJsonlFileContentSourceType? type, List<EvalJsonlFileContentSourceContent>? content, }) { return EvalJsonlFileContentSource(
  type: type ?? this.type,
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalJsonlFileContentSource &&
          type == other.type &&
          listEquals(content, other.content); } 
@override int get hashCode { return Object.hash(type, Object.hashAll(content)); } 
@override String toString() { return 'EvalJsonlFileContentSource(type: $type, content: $content)'; } 
 }
