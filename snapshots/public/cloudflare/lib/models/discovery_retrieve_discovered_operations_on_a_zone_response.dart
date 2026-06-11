// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'discovery_retrieve_discovered_operations_on_a_zone_response_result_info.dart';import 'shield_discovery_operation.dart';import 'shield_messages2.dart';@immutable final class DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse {const DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse.fromJson(Map<String, dynamic> json) { return DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? DiscoveryRetrieveDiscoveredOperationsOnAZoneResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>).map((e) => ShieldDiscoveryOperation.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ShieldMessages2> errors;

final List<ShieldMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DiscoveryRetrieveDiscoveredOperationsOnAZoneResponseResultInfo? resultInfo;

final List<ShieldDiscoveryOperation> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse copyWith({List<ShieldMessages2>? errors, List<ShieldMessages2>? messages, bool? success, DiscoveryRetrieveDiscoveredOperationsOnAZoneResponseResultInfo Function()? resultInfo, List<ShieldDiscoveryOperation>? result, }) { return DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result)); } 
@override String toString() { return 'DiscoveryRetrieveDiscoveredOperationsOnAZoneResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
