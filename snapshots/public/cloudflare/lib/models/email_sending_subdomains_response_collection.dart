// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_messages2.dart';import 'email_sending_subdomain_properties.dart';import 'email_sending_subdomains_response_collection_result_info.dart';@immutable final class EmailSendingSubdomainsResponseCollection {const EmailSendingSubdomainsResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory EmailSendingSubdomainsResponseCollection.fromJson(Map<String, dynamic> json) { return EmailSendingSubdomainsResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => EmailMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => EmailMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? EmailSendingSubdomainsResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => EmailSendingSubdomainProperties.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailMessages2> errors;

final List<EmailMessages2> messages;

/// Whether the API call was successful.
final bool success;

final EmailSendingSubdomainsResponseCollectionResultInfo? resultInfo;

final List<EmailSendingSubdomainProperties>? result;

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
EmailSendingSubdomainsResponseCollection copyWith({List<EmailMessages2>? errors, List<EmailMessages2>? messages, bool? success, EmailSendingSubdomainsResponseCollectionResultInfo Function()? resultInfo, List<EmailSendingSubdomainProperties> Function()? result, }) { return EmailSendingSubdomainsResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSendingSubdomainsResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'EmailSendingSubdomainsResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
