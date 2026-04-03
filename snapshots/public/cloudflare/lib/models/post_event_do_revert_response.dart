// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_event_do_revert_response_properties.dart';@immutable final class PostEventDoRevertResponse {const PostEventDoRevertResponse({required this.properties, required this.$required, required this.type, });

factory PostEventDoRevertResponse.fromJson(Map<String, dynamic> json) { return PostEventDoRevertResponse(
  properties: PostEventDoRevertResponseProperties.fromJson(json['properties'] as Map<String, dynamic>),
  $required: (json['required'] as List<dynamic>).map((e) => e as String).toList(),
  type: json['type'] as String,
); }

final PostEventDoRevertResponseProperties properties;

final List<String> $required;

final String type;

Map<String, dynamic> toJson() { return {
  'properties': properties.toJson(),
  'required': $required,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('properties') &&
      json.containsKey('required') &&
      json.containsKey('type') && json['type'] is String; } 
PostEventDoRevertResponse copyWith({PostEventDoRevertResponseProperties? properties, List<String>? $required, String? type, }) { return PostEventDoRevertResponse(
  properties: properties ?? this.properties,
  $required: $required ?? this.$required,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventDoRevertResponse &&
          properties == other.properties &&
          listEquals($required, other.$required) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(properties, Object.hashAll($required), type); } 
@override String toString() { return 'PostEventDoRevertResponse(properties: $properties, \$required: ${$required}, type: $type)'; } 
 }
