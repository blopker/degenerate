// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'vector_store_search_result_content_object.dart';final class VectorStoreSearchResultItem {const VectorStoreSearchResultItem({required this.fileId, required this.filename, required this.score, required this.attributes, required this.content, });

factory VectorStoreSearchResultItem.fromJson(Map<String, dynamic> json) { return VectorStoreSearchResultItem(
  fileId: json['file_id'] as String,
  filename: json['filename'] as String,
  score: (json['score'] as num).toDouble(),
  attributes: (json['attributes'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  content: (json['content'] as List<dynamic>).map((e) => VectorStoreSearchResultContentObject.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The ID of the vector store file.
final String fileId;

/// The name of the vector store file.
final String filename;

/// The similarity score for the result.
final double score;

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard. Keys are strings
/// with a maximum length of 64 characters. Values are strings with a maximum
/// length of 512 characters, booleans, or numbers.
/// 
final Map<String,dynamic>? attributes;

/// Content chunks from the file.
final List<VectorStoreSearchResultContentObject> content;

Map<String, dynamic> toJson() { return {
  'file_id': fileId,
  'filename': filename,
  'score': score,
  'attributes': ?attributes,
  'content': content.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file_id') && json['file_id'] is String &&
      json.containsKey('filename') && json['filename'] is String &&
      json.containsKey('score') && json['score'] is num &&
      json.containsKey('attributes') &&
      json.containsKey('content'); } 
VectorStoreSearchResultItem copyWith({String? fileId, String? filename, double? score, Map<String, dynamic>? Function()? attributes, List<VectorStoreSearchResultContentObject>? content, }) { return VectorStoreSearchResultItem(
  fileId: fileId ?? this.fileId,
  filename: filename ?? this.filename,
  score: score ?? this.score,
  attributes: attributes != null ? attributes() : this.attributes,
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorStoreSearchResultItem &&
          fileId == other.fileId &&
          filename == other.filename &&
          score == other.score &&
          attributes == other.attributes &&
          listEquals(content, other.content); } 
@override int get hashCode { return Object.hash(fileId, filename, score, attributes, Object.hashAll(content)); } 
@override String toString() { return 'VectorStoreSearchResultItem(fileId: $fileId, filename: $filename, score: $score, attributes: $attributes, content: $content)'; } 
 }
