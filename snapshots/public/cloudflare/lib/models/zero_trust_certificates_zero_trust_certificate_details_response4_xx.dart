// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_messages2.dart';@immutable final class ZeroTrustCertificatesZeroTrustCertificateDetailsResponse4Xx {const ZeroTrustCertificatesZeroTrustCertificateDetailsResponse4Xx({required this.errors, required this.messages, required this.success, required this.result, });

factory ZeroTrustCertificatesZeroTrustCertificateDetailsResponse4Xx.fromJson(Map<String, dynamic> json) { return ZeroTrustCertificatesZeroTrustCertificateDetailsResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] as Map<String, dynamic>?,
); }

final List<ZeroTrustGatewayMessages2> errors;

final List<ZeroTrustGatewayMessages2> messages;

/// Indicate whether the API call was successful.
final bool success;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
ZeroTrustCertificatesZeroTrustCertificateDetailsResponse4Xx copyWith({List<ZeroTrustGatewayMessages2>? errors, List<ZeroTrustGatewayMessages2>? messages, bool? success, Map<String, dynamic>? Function()? result, }) { return ZeroTrustCertificatesZeroTrustCertificateDetailsResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustCertificatesZeroTrustCertificateDetailsResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ZeroTrustCertificatesZeroTrustCertificateDetailsResponse4Xx(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
