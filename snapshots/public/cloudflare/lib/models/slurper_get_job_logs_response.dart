// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'error_model32.dart';import 'r2_slurper_job_log_response.dart';@immutable final class SlurperGetJobLogsResponse {const SlurperGetJobLogsResponse({this.errors, this.messages, this.success, this.result, });

factory SlurperGetJobLogsResponse.fromJson(Map<String, dynamic> json) { return SlurperGetJobLogsResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => ErrorModel32.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  success: json['success'] as bool?,
  result: (json['result'] as List<dynamic>?)?.map((e) => R2SlurperJobLogResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ErrorModel32>? errors;

final List<String>? messages;

/// Indicates if the API call was successful or not.
final bool? success;

final List<R2SlurperJobLogResponse>? result;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'messages': ?messages,
  'success': ?success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'errors', 'messages', 'success', 'result'}.contains(key)); } 
SlurperGetJobLogsResponse copyWith({List<ErrorModel32> Function()? errors, List<String> Function()? messages, bool Function()? success, List<R2SlurperJobLogResponse> Function()? result, }) { return SlurperGetJobLogsResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success != null ? success() : this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SlurperGetJobLogsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'SlurperGetJobLogsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
