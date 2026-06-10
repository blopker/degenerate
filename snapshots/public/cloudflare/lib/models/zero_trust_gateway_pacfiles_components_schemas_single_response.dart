// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_messages2.dart';import 'zero_trust_gateway_pacfile.dart';@immutable final class ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse {const ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse({required this.errors, required this.messages, required this.success, this.result, });

factory ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? ZeroTrustGatewayPacfile.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<ZeroTrustGatewayMessages2> errors;

final List<ZeroTrustGatewayMessages2> messages;

/// Indicate whether the API call was successful.
final bool success;

final ZeroTrustGatewayPacfile? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse copyWith({List<ZeroTrustGatewayMessages2>? errors, List<ZeroTrustGatewayMessages2>? messages, bool? success, ZeroTrustGatewayPacfile Function()? result, }) { return ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ZeroTrustGatewayPacfilesComponentsSchemasSingleResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
