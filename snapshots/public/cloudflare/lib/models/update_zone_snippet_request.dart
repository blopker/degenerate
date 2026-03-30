// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_zone_snippet_request_metadata.dart';/// Define a snippet object.
final class UpdateZoneSnippetRequest {const UpdateZoneSnippetRequest({required this.metadata, this.additionalProperties = const {}, });

factory UpdateZoneSnippetRequest.fromJson(Map<String, dynamic> json) { return UpdateZoneSnippetRequest(
  metadata: UpdateZoneSnippetRequestMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'metadata'}.contains(e.key)).map((e) => MapEntry(e.key, (e.value as List<dynamic>).map((e) => base64Decode(e as String)).toList()))),
); }

/// Provide metadata about the snippet.
final UpdateZoneSnippetRequestMetadata metadata;

final Map<String,List<Uint8List>> additionalProperties;

Map<String, dynamic> toJson() { return {
  'metadata': metadata.toJson(),
  ...additionalProperties.map((k, v) => MapEntry(k, v.map((e) => base64Encode(e)).toList())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('metadata'); } 
UpdateZoneSnippetRequest copyWith({UpdateZoneSnippetRequestMetadata? metadata, Map<String, List<Uint8List>>? additionalProperties, }) { return UpdateZoneSnippetRequest(
  metadata: metadata ?? this.metadata,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateZoneSnippetRequest &&
          metadata == other.metadata &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(metadata, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'UpdateZoneSnippetRequest(metadata: $metadata, additionalProperties: $additionalProperties)'; } 
 }
