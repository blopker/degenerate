// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ModifyMessageRequest {const ModifyMessageRequest({this.metadata});

factory ModifyMessageRequest.fromJson(Map<String, dynamic> json) { return ModifyMessageRequest(
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Map<String,String>? metadata;

Map<String, dynamic> toJson() { return {
  'metadata': ?metadata,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'metadata'}.contains(key)); } 
ModifyMessageRequest copyWith({Map<String, String>? Function()? metadata}) { return ModifyMessageRequest(
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ModifyMessageRequest &&
          metadata == other.metadata; } 
@override int get hashCode { return metadata.hashCode; } 
@override String toString() { return 'ModifyMessageRequest(metadata: $metadata)'; } 
 }
