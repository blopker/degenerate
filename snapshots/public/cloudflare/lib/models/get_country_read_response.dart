// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_country_read_response_result.dart';@immutable final class GetCountryReadResponse {const GetCountryReadResponse({required this.result, required this.success, });

factory GetCountryReadResponse.fromJson(Map<String, dynamic> json) { return GetCountryReadResponse(
  result: (json['result'] as List<dynamic>).map((e) => GetCountryReadResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as String,
); }

final List<GetCountryReadResponseResult> result;

final String success;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is String; } 
GetCountryReadResponse copyWith({List<GetCountryReadResponseResult>? result, String? success, }) { return GetCountryReadResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCountryReadResponse &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), success); } 
@override String toString() { return 'GetCountryReadResponse(result: $result, success: $success)'; } 
 }
