// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_error.dart';import 'mcn_result_info.dart';final class McnGoodResponseCollection {const McnGoodResponseCollection({required this.messages, this.resultInfo, required this.success, required this.errors, });

factory McnGoodResponseCollection.fromJson(Map<String, dynamic> json) { return McnGoodResponseCollection(
  messages: (json['messages'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? McnResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<McnError> messages;

final McnResultInfo? resultInfo;

final bool success;

final List<McnError> errors;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'success': success,
  'errors': errors.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('errors'); } 
McnGoodResponseCollection copyWith({List<McnError>? messages, McnResultInfo Function()? resultInfo, bool? success, List<McnError>? errors, }) { return McnGoodResponseCollection(
  messages: messages ?? this.messages,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  success: success ?? this.success,
  errors: errors ?? this.errors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnGoodResponseCollection &&
          listEquals(messages, other.messages) &&
          resultInfo == other.resultInfo &&
          success == other.success &&
          listEquals(errors, other.errors); } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), resultInfo, success, Object.hashAll(errors)); } 
@override String toString() { return 'McnGoodResponseCollection(messages: $messages, resultInfo: $resultInfo, success: $success, errors: $errors)'; } 
 }
