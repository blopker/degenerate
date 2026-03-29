// GENERATED CODE - DO NOT MODIFY BY HAND

final class UpdateEvalRequest {const UpdateEvalRequest({this.name, this.metadata, });

factory UpdateEvalRequest.fromJson(Map<String, dynamic> json) { return UpdateEvalRequest(
  name: json['name'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// Rename the evaluation.
final String? name;

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Map<String,String>? metadata;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'metadata': ?metadata,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UpdateEvalRequest copyWith({String Function()? name, Map<String, String>? Function()? metadata, }) { return UpdateEvalRequest(
  name: name != null ? name() : this.name,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateEvalRequest &&
          name == other.name &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(name, metadata); } 
@override String toString() { return 'UpdateEvalRequest(name: $name, metadata: $metadata)'; } 
 }
