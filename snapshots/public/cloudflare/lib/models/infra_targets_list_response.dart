// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_messages2.dart';import 'infra_target.dart';import 'infra_targets_list_response_result_info.dart';@immutable final class InfraTargetsListResponse {const InfraTargetsListResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory InfraTargetsListResponse.fromJson(Map<String, dynamic> json) { return InfraTargetsListResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? InfraTargetsListResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => InfraTarget.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<InfraMessages2> errors;

final List<InfraMessages2> messages;

/// Whether the API call was successful.
final bool success;

final InfraTargetsListResponseResultInfo? resultInfo;

final List<InfraTarget>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
InfraTargetsListResponse copyWith({List<InfraMessages2>? errors, List<InfraMessages2>? messages, bool? success, InfraTargetsListResponseResultInfo Function()? resultInfo, List<InfraTarget> Function()? result, }) { return InfraTargetsListResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraTargetsListResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'InfraTargetsListResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
