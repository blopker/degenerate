// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_messages2.dart';import 'response_collection30_result_info.dart';final class ResponseCollection30 {const ResponseCollection30({required this.errors, required this.messages, required this.success, this.resultInfo, });

factory ResponseCollection30.fromJson(Map<String, dynamic> json) { return ResponseCollection30(
  errors: (json['errors'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ResponseCollection30ResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<PagesMessages2> errors;

final List<PagesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ResponseCollection30ResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollection30 copyWith({List<PagesMessages2>? errors, List<PagesMessages2>? messages, bool? success, ResponseCollection30ResultInfo Function()? resultInfo, }) { return ResponseCollection30(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection30 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo); } 
@override String toString() { return 'ResponseCollection30(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo)'; } 
 }
