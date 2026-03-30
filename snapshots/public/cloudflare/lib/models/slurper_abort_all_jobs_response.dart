// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'error_model32.dart';final class SlurperAbortAllJobsResponse {const SlurperAbortAllJobsResponse({this.errors, this.messages, this.success, this.result, });

factory SlurperAbortAllJobsResponse.fromJson(Map<String, dynamic> json) { return SlurperAbortAllJobsResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => ErrorModel32.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  success: json['success'] as bool?,
  result: json['result'] as String?,
); }

final List<ErrorModel32>? errors;

final List<String>? messages;

/// Indicates if the API call was successful or not.
final bool? success;

final String? result;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'messages': ?messages,
  'success': ?success,
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'errors', 'messages', 'success', 'result'}.contains(key)); } 
SlurperAbortAllJobsResponse copyWith({List<ErrorModel32> Function()? errors, List<String> Function()? messages, bool Function()? success, String Function()? result, }) { return SlurperAbortAllJobsResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success != null ? success() : this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SlurperAbortAllJobsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success, result); } 
@override String toString() { return 'SlurperAbortAllJobsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
