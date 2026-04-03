// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPayoutsPayoutReverseRequest {const PostPayoutsPayoutReverseRequest({this.expand, this.metadata, });

factory PostPayoutsPayoutReverseRequest.fromJson(Map<String, dynamic> json) { return PostPayoutsPayoutReverseRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'metadata': ?metadata,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'metadata'}.contains(key)); } 
PostPayoutsPayoutReverseRequest copyWith({List<String> Function()? expand, Map<String, String> Function()? metadata, }) { return PostPayoutsPayoutReverseRequest(
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPayoutsPayoutReverseRequest &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), metadata); } 
@override String toString() { return 'PostPayoutsPayoutReverseRequest(expand: $expand, metadata: $metadata)'; } 
 }
