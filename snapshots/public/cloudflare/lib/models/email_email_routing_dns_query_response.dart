// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_email_routing_dns_query_response_result.dart';import 'email_email_routing_dns_query_response_result_info.dart';import 'email_messages2.dart';@immutable final class EmailEmailRoutingDnsQueryResponse {const EmailEmailRoutingDnsQueryResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory EmailEmailRoutingDnsQueryResponse.fromJson(Map<String, dynamic> json) { return EmailEmailRoutingDnsQueryResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => EmailMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => EmailMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? EmailEmailRoutingDnsQueryResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] != null ? EmailEmailRoutingDnsQueryResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<EmailMessages2> errors;

final List<EmailMessages2> messages;

/// Whether the API call was successful.
final bool success;

final EmailEmailRoutingDnsQueryResponseResultInfo? resultInfo;

final EmailEmailRoutingDnsQueryResponseResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
EmailEmailRoutingDnsQueryResponse copyWith({List<EmailMessages2>? errors, List<EmailMessages2>? messages, bool? success, EmailEmailRoutingDnsQueryResponseResultInfo Function()? resultInfo, EmailEmailRoutingDnsQueryResponseResult Function()? result, }) { return EmailEmailRoutingDnsQueryResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailEmailRoutingDnsQueryResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'EmailEmailRoutingDnsQueryResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
