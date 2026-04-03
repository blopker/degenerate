// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_messages2.dart';import 'shield_patch_discovery_response_result.dart';@immutable final class ShieldPatchDiscoveryResponse {const ShieldPatchDiscoveryResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory ShieldPatchDiscoveryResponse.fromJson(Map<String, dynamic> json) { return ShieldPatchDiscoveryResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: ShieldPatchDiscoveryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<ShieldMessages2> errors;

final List<ShieldMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ShieldPatchDiscoveryResponseResult result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
ShieldPatchDiscoveryResponse copyWith({List<ShieldMessages2>? errors, List<ShieldMessages2>? messages, bool? success, ShieldPatchDiscoveryResponseResult? result, }) { return ShieldPatchDiscoveryResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldPatchDiscoveryResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ShieldPatchDiscoveryResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
