// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_error.dart';import 'mcn_result_info.dart';@immutable final class McnResponseCollection {const McnResponseCollection({required this.messages, required this.success, this.resultInfo, });

factory McnResponseCollection.fromJson(Map<String, dynamic> json) { return McnResponseCollection(
  messages: (json['messages'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? McnResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<McnError> messages;

final McnResultInfo? resultInfo;

final bool success;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
McnResponseCollection copyWith({List<McnError>? messages, McnResultInfo Function()? resultInfo, bool? success, }) { return McnResponseCollection(
  messages: messages ?? this.messages,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnResponseCollection &&
          listEquals(messages, other.messages) &&
          resultInfo == other.resultInfo &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), resultInfo, success); } 
@override String toString() { return 'McnResponseCollection(messages: $messages, resultInfo: $resultInfo, success: $success)'; } 
 }
