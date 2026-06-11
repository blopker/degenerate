// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'regenerate_token_response_data.dart';@immutable final class RegenerateTokenResponse {const RegenerateTokenResponse({required this.data, this.success = true, });

factory RegenerateTokenResponse.fromJson(Map<String, dynamic> json) { return RegenerateTokenResponse(
  data: RegenerateTokenResponseData.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RegenerateTokenResponseData data;

/// Success status of the operation
final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('success') && json['success'] is bool; } 
RegenerateTokenResponse copyWith({RegenerateTokenResponseData? data, bool? success, }) { return RegenerateTokenResponse(
  data: data ?? this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RegenerateTokenResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'RegenerateTokenResponse(data: $data, success: $success)'; } 
 }
