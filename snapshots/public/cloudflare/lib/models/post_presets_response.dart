// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_presets_response_data.dart';@immutable final class PostPresetsResponse {const PostPresetsResponse({required this.data, this.success = true, });

factory PostPresetsResponse.fromJson(Map<String, dynamic> json) { return PostPresetsResponse(
  data: PostPresetsResponseData.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final PostPresetsResponseData data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('success') && json['success'] is bool; } 
PostPresetsResponse copyWith({PostPresetsResponseData? data, bool? success, }) { return PostPresetsResponse(
  data: data ?? this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'PostPresetsResponse(data: $data, success: $success)'; } 
 }
