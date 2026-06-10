// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_messages2.dart';import 'secondary_dns_response_collection_result_info.dart';import 'secondary_dns_tsig.dart';@immutable final class SecondaryDnsResponseCollection {const SecondaryDnsResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory SecondaryDnsResponseCollection.fromJson(Map<String, dynamic> json) { return SecondaryDnsResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? SecondaryDnsResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => SecondaryDnsTsig.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SecondaryDnsMessages2> errors;

final List<SecondaryDnsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SecondaryDnsResponseCollectionResultInfo? resultInfo;

final List<SecondaryDnsTsig>? result;

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
SecondaryDnsResponseCollection copyWith({List<SecondaryDnsMessages2>? errors, List<SecondaryDnsMessages2>? messages, bool? success, SecondaryDnsResponseCollectionResultInfo Function()? resultInfo, List<SecondaryDnsTsig> Function()? result, }) { return SecondaryDnsResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'SecondaryDnsResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
