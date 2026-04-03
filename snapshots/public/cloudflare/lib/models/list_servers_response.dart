// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'list_servers_response_result.dart';@immutable final class ListServersResponse {const ListServersResponse({required this.result, required this.success, });

factory ListServersResponse.fromJson(Map<String, dynamic> json) { return ListServersResponse(
  result: (json['result'] as List<dynamic>).map((e) => ListServersResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<ListServersResponseResult> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ListServersResponse copyWith({List<ListServersResponseResult>? result, bool? success, }) { return ListServersResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListServersResponse &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), success); } 
@override String toString() { return 'ListServersResponse(result: $result, success: $success)'; } 
 }
