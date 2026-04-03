// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file_annotation_source.dart';/// Type discriminator that is always `file` for this annotation.
@immutable final class FileAnnotationType {const FileAnnotationType._(this.value);

factory FileAnnotationType.fromJson(String json) { return switch (json) {
  'file' => file,
  _ => FileAnnotationType._(json),
}; }

static const FileAnnotationType file = FileAnnotationType._('file');

static const List<FileAnnotationType> values = [file];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FileAnnotationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FileAnnotationType($value)'; } 
 }
/// Annotation that references an uploaded file.
@immutable final class FileAnnotation {const FileAnnotation({required this.source, this.type = FileAnnotationType.file, });

factory FileAnnotation.fromJson(Map<String, dynamic> json) { return FileAnnotation(
  type: FileAnnotationType.fromJson(json['type'] as String),
  source: FileAnnotationSource.fromJson(json['source'] as Map<String, dynamic>),
); }

/// Type discriminator that is always `file` for this annotation.
final FileAnnotationType type;

/// File attachment referenced by the annotation.
final FileAnnotationSource source;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'source': source.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('source'); } 
FileAnnotation copyWith({FileAnnotationType? type, FileAnnotationSource? source, }) { return FileAnnotation(
  type: type ?? this.type,
  source: source ?? this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FileAnnotation &&
          type == other.type &&
          source == other.source; } 
@override int get hashCode { return Object.hash(type, source); } 
@override String toString() { return 'FileAnnotation(type: $type, source: $source)'; } 
 }
