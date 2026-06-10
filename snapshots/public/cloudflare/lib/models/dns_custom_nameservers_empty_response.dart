// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_custom_nameservers_empty_response_result_info.dart';import 'dns_custom_nameservers_messages2.dart';@immutable final class DnsCustomNameserversEmptyResponse {const DnsCustomNameserversEmptyResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory DnsCustomNameserversEmptyResponse.fromJson(Map<String, dynamic> json) { return DnsCustomNameserversEmptyResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsCustomNameserversMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsCustomNameserversMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? DnsCustomNameserversEmptyResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<DnsCustomNameserversMessages2> errors;

final List<DnsCustomNameserversMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DnsCustomNameserversEmptyResponseResultInfo? resultInfo;

final List<String>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DnsCustomNameserversEmptyResponse copyWith({List<DnsCustomNameserversMessages2>? errors, List<DnsCustomNameserversMessages2>? messages, bool? success, DnsCustomNameserversEmptyResponseResultInfo Function()? resultInfo, List<String> Function()? result, }) { return DnsCustomNameserversEmptyResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsCustomNameserversEmptyResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'DnsCustomNameserversEmptyResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
