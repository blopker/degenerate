// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_interpreter_file_output_files.dart';/// The type of the code interpreter file output. Always `files`.
/// 
@immutable final class CodeInterpreterFileOutputType {const CodeInterpreterFileOutputType._(this.value);

factory CodeInterpreterFileOutputType.fromJson(String json) { return switch (json) {
  'files' => files,
  _ => CodeInterpreterFileOutputType._(json),
}; }

static const CodeInterpreterFileOutputType files = CodeInterpreterFileOutputType._('files');

static const List<CodeInterpreterFileOutputType> values = [files];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeInterpreterFileOutputType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeInterpreterFileOutputType($value)'; } 
 }
/// The output of a code interpreter tool call that is a file.
/// 
@immutable final class CodeInterpreterFileOutput {const CodeInterpreterFileOutput({required this.type, required this.files, });

factory CodeInterpreterFileOutput.fromJson(Map<String, dynamic> json) { return CodeInterpreterFileOutput(
  type: CodeInterpreterFileOutputType.fromJson(json['type'] as String),
  files: (json['files'] as List<dynamic>).map((e) => CodeInterpreterFileOutputFiles.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The type of the code interpreter file output. Always `files`.
/// 
final CodeInterpreterFileOutputType type;

final List<CodeInterpreterFileOutputFiles> files;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'files': files.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('files'); } 
CodeInterpreterFileOutput copyWith({CodeInterpreterFileOutputType? type, List<CodeInterpreterFileOutputFiles>? files, }) { return CodeInterpreterFileOutput(
  type: type ?? this.type,
  files: files ?? this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeInterpreterFileOutput &&
          type == other.type &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hash(type, Object.hashAll(files)); } 
@override String toString() { return 'CodeInterpreterFileOutput(type: $type, files: $files)'; } 
 }
