// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_event_list_get_response400_errors.dart';@immutable final class GetEventListGetResponse400 {const GetEventListGetResponse400({required this.errors, required this.result, required this.success, });

factory GetEventListGetResponse400.fromJson(Map<String, dynamic> json) { return GetEventListGetResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => GetEventListGetResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>,
  success: json['success'] as bool,
); }

final List<GetEventListGetResponse400Errors> errors;

final Map<String,dynamic> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
GetEventListGetResponse400 copyWith({List<GetEventListGetResponse400Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return GetEventListGetResponse400(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetEventListGetResponse400 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'GetEventListGetResponse400(errors: $errors, result: $result, success: $success)'; } 
 }
