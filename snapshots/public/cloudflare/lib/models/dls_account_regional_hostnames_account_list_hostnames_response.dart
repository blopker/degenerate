// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dls_account_regional_hostnames_account_list_hostnames_response_result_info.dart';import 'dls_messages2.dart';import 'dls_regional_hostname_response.dart';@immutable final class DlsAccountRegionalHostnamesAccountListHostnamesResponse {const DlsAccountRegionalHostnamesAccountListHostnamesResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory DlsAccountRegionalHostnamesAccountListHostnamesResponse.fromJson(Map<String, dynamic> json) { return DlsAccountRegionalHostnamesAccountListHostnamesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DlsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DlsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? DlsAccountRegionalHostnamesAccountListHostnamesResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => DlsRegionalHostnameResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlsMessages2> errors;

final List<DlsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DlsAccountRegionalHostnamesAccountListHostnamesResponseResultInfo? resultInfo;

final List<DlsRegionalHostnameResponse>? result;

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
DlsAccountRegionalHostnamesAccountListHostnamesResponse copyWith({List<DlsMessages2>? errors, List<DlsMessages2>? messages, bool? success, DlsAccountRegionalHostnamesAccountListHostnamesResponseResultInfo Function()? resultInfo, List<DlsRegionalHostnameResponse> Function()? result, }) { return DlsAccountRegionalHostnamesAccountListHostnamesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlsAccountRegionalHostnamesAccountListHostnamesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'DlsAccountRegionalHostnamesAccountListHostnamesResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
