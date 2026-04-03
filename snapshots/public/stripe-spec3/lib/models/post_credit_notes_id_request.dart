// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCreditNotesIdRequest {const PostCreditNotesIdRequest({this.expand, this.memo, this.metadata, });

factory PostCreditNotesIdRequest.fromJson(Map<String, dynamic> json) { return PostCreditNotesIdRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  memo: json['memo'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Credit note memo.
final String? memo;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'memo': ?memo,
  'metadata': ?metadata,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'memo', 'metadata'}.contains(key)); } 
PostCreditNotesIdRequest copyWith({List<String> Function()? expand, String Function()? memo, Map<String, String> Function()? metadata, }) { return PostCreditNotesIdRequest(
  expand: expand != null ? expand() : this.expand,
  memo: memo != null ? memo() : this.memo,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCreditNotesIdRequest &&
          listEquals(expand, other.expand) &&
          memo == other.memo &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), memo, metadata); } 
@override String toString() { return 'PostCreditNotesIdRequest(expand: $expand, memo: $memo, metadata: $metadata)'; } 
 }
