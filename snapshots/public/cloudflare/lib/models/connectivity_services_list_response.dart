// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connectivity_services_list_response_result_info.dart';import 'infra_messages2.dart';import 'infra_service_config.dart';@immutable final class ConnectivityServicesListResponse {const ConnectivityServicesListResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory ConnectivityServicesListResponse.fromJson(Map<String, dynamic> json) { return ConnectivityServicesListResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ConnectivityServicesListResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => InfraServiceConfig.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<InfraMessages2> errors;

final List<InfraMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ConnectivityServicesListResponseResultInfo? resultInfo;

final List<InfraServiceConfig>? result;

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
ConnectivityServicesListResponse copyWith({List<InfraMessages2>? errors, List<InfraMessages2>? messages, bool? success, ConnectivityServicesListResponseResultInfo Function()? resultInfo, List<InfraServiceConfig> Function()? result, }) { return ConnectivityServicesListResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectivityServicesListResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'ConnectivityServicesListResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
