// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_result_info.dart';import 'iam_schemas_messages2.dart';final class ResponseCollection21 {const ResponseCollection21({required this.errors, required this.messages, required this.success, this.resultInfo, });

factory ResponseCollection21.fromJson(Map<String, dynamic> json) { return ResponseCollection21(
  errors: (json['errors'] as List<dynamic>).map((e) => IamSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => IamSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? IamResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<IamSchemasMessages2> errors;

final List<IamSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

final IamResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollection21 copyWith({List<IamSchemasMessages2>? errors, List<IamSchemasMessages2>? messages, bool? success, IamResultInfo Function()? resultInfo, }) { return ResponseCollection21(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection21 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo); } 
@override String toString() { return 'ResponseCollection21(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo)'; } 
 }
