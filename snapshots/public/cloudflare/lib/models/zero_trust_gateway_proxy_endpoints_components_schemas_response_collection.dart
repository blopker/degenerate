// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_messages2.dart';import 'zero_trust_gateway_proxy_endpoints.dart';import 'zero_trust_gateway_result_info.dart';@immutable final class ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection {const ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZeroTrustGatewayMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ZeroTrustGatewayResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayProxyEndpoints.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZeroTrustGatewayMessages2> errors;

final List<ZeroTrustGatewayMessages2> messages;

/// Indicate whether the API call was successful.
final bool success;

final ZeroTrustGatewayResultInfo? resultInfo;

final List<ZeroTrustGatewayProxyEndpoints>? result;

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
ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection copyWith({List<ZeroTrustGatewayMessages2>? errors, List<ZeroTrustGatewayMessages2>? messages, bool? success, ZeroTrustGatewayResultInfo Function()? resultInfo, List<ZeroTrustGatewayProxyEndpoints> Function()? result, }) { return ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
