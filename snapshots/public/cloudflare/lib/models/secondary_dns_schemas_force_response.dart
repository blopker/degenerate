// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_messages2.dart';/// When force_notify query parameter is set to true, the response is a simple string.
extension type const SecondaryDnsSchemasForceResult(String value) {
factory SecondaryDnsSchemasForceResult.fromJson(String json) => SecondaryDnsSchemasForceResult(json);

String toJson() => value;

}
@immutable final class SecondaryDnsSchemasForceResponse {const SecondaryDnsSchemasForceResponse({required this.errors, required this.messages, required this.success, this.result, });

factory SecondaryDnsSchemasForceResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsSchemasForceResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? SecondaryDnsSchemasForceResult.fromJson(json['result'] as String) : null,
); }

final List<SecondaryDnsMessages2> errors;

final List<SecondaryDnsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SecondaryDnsSchemasForceResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SecondaryDnsSchemasForceResponse copyWith({List<SecondaryDnsMessages2>? errors, List<SecondaryDnsMessages2>? messages, bool? success, SecondaryDnsSchemasForceResult Function()? result, }) { return SecondaryDnsSchemasForceResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSchemasForceResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'SecondaryDnsSchemasForceResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
