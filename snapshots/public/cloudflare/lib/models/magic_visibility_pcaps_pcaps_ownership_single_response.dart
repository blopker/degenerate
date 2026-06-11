// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_pcaps_messages2.dart';import 'magic_visibility_pcaps_pcaps_ownership_response.dart';@immutable final class MagicVisibilityPcapsPcapsOwnershipSingleResponse {const MagicVisibilityPcapsPcapsOwnershipSingleResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory MagicVisibilityPcapsPcapsOwnershipSingleResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityPcapsPcapsOwnershipSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicVisibilityPcapsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicVisibilityPcapsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: MagicVisibilityPcapsPcapsOwnershipResponse.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<MagicVisibilityPcapsMessages2> errors;

final List<MagicVisibilityPcapsMessages2> messages;

final MagicVisibilityPcapsPcapsOwnershipResponse result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
MagicVisibilityPcapsPcapsOwnershipSingleResponse copyWith({List<MagicVisibilityPcapsMessages2>? errors, List<MagicVisibilityPcapsMessages2>? messages, MagicVisibilityPcapsPcapsOwnershipResponse? result, bool? success, }) { return MagicVisibilityPcapsPcapsOwnershipSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityPcapsPcapsOwnershipSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'MagicVisibilityPcapsPcapsOwnershipSingleResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
