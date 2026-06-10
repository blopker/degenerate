// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_messages2.dart';/// The zone transfer status of a primary zone.
extension type const SecondaryDnsDisableTransferResult(String value) {
factory SecondaryDnsDisableTransferResult.fromJson(String json) => SecondaryDnsDisableTransferResult(json);

String toJson() => value;

}
@immutable final class SecondaryDnsDisableTransferResponse {const SecondaryDnsDisableTransferResponse({required this.errors, required this.messages, required this.success, this.result, });

factory SecondaryDnsDisableTransferResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsDisableTransferResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? SecondaryDnsDisableTransferResult.fromJson(json['result'] as String) : null,
); }

final List<SecondaryDnsMessages2> errors;

final List<SecondaryDnsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SecondaryDnsDisableTransferResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SecondaryDnsDisableTransferResponse copyWith({List<SecondaryDnsMessages2>? errors, List<SecondaryDnsMessages2>? messages, bool? success, SecondaryDnsDisableTransferResult Function()? result, }) { return SecondaryDnsDisableTransferResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsDisableTransferResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'SecondaryDnsDisableTransferResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
