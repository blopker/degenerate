// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fetch_servers_response_result.dart';@immutable final class FetchServersResponse {const FetchServersResponse({required this.result, required this.success, });

factory FetchServersResponse.fromJson(Map<String, dynamic> json) { return FetchServersResponse(
  result: FetchServersResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final FetchServersResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
FetchServersResponse copyWith({FetchServersResponseResult? result, bool? success, }) { return FetchServersResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FetchServersResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'FetchServersResponse(result: $result, success: $success)'; } 
 }
