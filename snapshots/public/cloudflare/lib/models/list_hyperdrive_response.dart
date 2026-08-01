// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_config.dart';import 'hyperdrive_messages2.dart';import 'hyperdrive_result_info.dart';@immutable final class ListHyperdriveResponse {const ListHyperdriveResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory ListHyperdriveResponse.fromJson(Map<String, dynamic> json) { return ListHyperdriveResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => HyperdriveMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => HyperdriveMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => HyperdriveHyperdriveConfig.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? HyperdriveResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<HyperdriveMessages2> errors;

final List<HyperdriveMessages2> messages;

final List<HyperdriveHyperdriveConfig> result;

/// Return the status of the API call success.
final bool success;

final HyperdriveResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ListHyperdriveResponse copyWith({List<HyperdriveMessages2>? errors, List<HyperdriveMessages2>? messages, List<HyperdriveHyperdriveConfig>? result, bool? success, HyperdriveResultInfo? Function()? resultInfo, }) { return ListHyperdriveResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListHyperdriveResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'ListHyperdriveResponse(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
