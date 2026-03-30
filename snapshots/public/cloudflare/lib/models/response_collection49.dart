// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_messages2.dart';import 'zero_trust_gateway_result_info.dart';final class ResponseCollection49 {const ResponseCollection49({required this.errors, required this.messages, required this.success, this.resultInfo, });

factory ResponseCollection49.fromJson(Map<String, dynamic> json) { return ResponseCollection49(
  errors: (json['errors'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ZeroTrustGatewayResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ZeroTrustGatewayMessages2> errors;

final List<ZeroTrustGatewayMessages2> messages;

/// Indicate whether the API call was successful.
final bool success;

final ZeroTrustGatewayResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollection49 copyWith({List<ZeroTrustGatewayMessages2>? errors, List<ZeroTrustGatewayMessages2>? messages, bool? success, ZeroTrustGatewayResultInfo Function()? resultInfo, }) { return ResponseCollection49(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection49 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo); } 
@override String toString() { return 'ResponseCollection49(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo)'; } 
 }
