// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_messages2.dart';/// The zone transfer status of a primary zone.
extension type const SecondaryDnsEnableTransferResult(String value) {
factory SecondaryDnsEnableTransferResult.fromJson(String json) => SecondaryDnsEnableTransferResult(json);

String toJson() => value;

}
@immutable final class SecondaryDnsEnableTransferResponse {const SecondaryDnsEnableTransferResponse({required this.errors, required this.messages, required this.success, this.result, });

factory SecondaryDnsEnableTransferResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsEnableTransferResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecondaryDnsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? SecondaryDnsEnableTransferResult.fromJson(json['result'] as String) : null,
); }

final List<SecondaryDnsMessages2> errors;

final List<SecondaryDnsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SecondaryDnsEnableTransferResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SecondaryDnsEnableTransferResponse copyWith({List<SecondaryDnsMessages2>? errors, List<SecondaryDnsMessages2>? messages, bool? success, SecondaryDnsEnableTransferResult Function()? result, }) { return SecondaryDnsEnableTransferResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsEnableTransferResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'SecondaryDnsEnableTransferResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
