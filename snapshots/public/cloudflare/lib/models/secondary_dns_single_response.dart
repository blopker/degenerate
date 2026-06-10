// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_messages2.dart';import 'secondary_dns_tsig.dart';@immutable final class SecondaryDnsSingleResponse {const SecondaryDnsSingleResponse({required this.errors, required this.messages, required this.success, this.result, });

factory SecondaryDnsSingleResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? SecondaryDnsTsig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<SecondaryDnsMessages2> errors;

final List<SecondaryDnsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SecondaryDnsTsig? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SecondaryDnsSingleResponse copyWith({List<SecondaryDnsMessages2>? errors, List<SecondaryDnsMessages2>? messages, bool? success, SecondaryDnsTsig Function()? result, }) { return SecondaryDnsSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'SecondaryDnsSingleResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
