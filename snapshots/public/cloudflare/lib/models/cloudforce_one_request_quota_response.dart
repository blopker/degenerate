// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudforce_one_requests_messages2.dart';import 'cloudforce_one_requests_quota.dart';@immutable final class CloudforceOneRequestQuotaResponse {const CloudforceOneRequestQuotaResponse({required this.errors, required this.messages, required this.success, this.result, });

factory CloudforceOneRequestQuotaResponse.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestQuotaResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => CloudforceOneRequestsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CloudforceOneRequestsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? CloudforceOneRequestsQuota.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<CloudforceOneRequestsMessages2> errors;

final List<CloudforceOneRequestsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CloudforceOneRequestsQuota? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CloudforceOneRequestQuotaResponse copyWith({List<CloudforceOneRequestsMessages2>? errors, List<CloudforceOneRequestsMessages2>? messages, bool? success, CloudforceOneRequestsQuota Function()? result, }) { return CloudforceOneRequestQuotaResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestQuotaResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'CloudforceOneRequestQuotaResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
