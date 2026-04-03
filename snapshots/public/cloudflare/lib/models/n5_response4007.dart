// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'n5_response4007_errors.dart';@immutable final class $5Response4007 {const $5Response4007({required this.errors, required this.result, required this.success, });

factory $5Response4007.fromJson(Map<String, dynamic> json) { return $5Response4007(
  errors: (json['errors'] as List<dynamic>).map((e) => $5Response4007Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>,
  success: json['success'] as bool,
); }

final List<$5Response4007Errors> errors;

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
$5Response4007 copyWith({List<$5Response4007Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return $5Response4007(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is $5Response4007 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return '\$5Response4007(errors: $errors, result: $result, success: $success)'; } 
 }
