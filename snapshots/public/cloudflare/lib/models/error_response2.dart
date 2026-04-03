// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pay_per_crawl_rest_error.dart';@immutable final class ErrorResponse2 {const ErrorResponse2({this.errors, this.result, this.success, });

factory ErrorResponse2.fromJson(Map<String, dynamic> json) { return ErrorResponse2(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => PayPerCrawlRestError.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'],
  success: json['success'] as bool?,
); }

final List<PayPerCrawlRestError>? errors;

final dynamic result;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'errors', 'result', 'success'}.contains(key)); } 
ErrorResponse2 copyWith({List<PayPerCrawlRestError> Function()? errors, dynamic Function()? result, bool Function()? success, }) { return ErrorResponse2(
  errors: errors != null ? errors() : this.errors,
  result: result != null ? result() : this.result,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ErrorResponse2 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), result, success); } 
@override String toString() { return 'ErrorResponse2(errors: $errors, result: $result, success: $success)'; } 
 }
