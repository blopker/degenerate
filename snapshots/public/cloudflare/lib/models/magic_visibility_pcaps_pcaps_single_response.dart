// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_pcaps_messages2.dart';import 'magic_visibility_pcaps_pcaps_response_full.dart';import 'magic_visibility_pcaps_pcaps_response_simple.dart';import 'magic_visibility_pcaps_pcaps_single_response_result.dart';@immutable final class MagicVisibilityPcapsPcapsSingleResponse {const MagicVisibilityPcapsPcapsSingleResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory MagicVisibilityPcapsPcapsSingleResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityPcapsPcapsSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicVisibilityPcapsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicVisibilityPcapsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: OneOf2.parse(json['result'], fromA: (v) => MagicVisibilityPcapsPcapsResponseSimple.fromJson(v as Map<String, dynamic>), fromB: (v) => MagicVisibilityPcapsPcapsResponseFull.fromJson(v as Map<String, dynamic>),),
  success: json['success'] as bool,
); }

final List<MagicVisibilityPcapsMessages2> errors;

final List<MagicVisibilityPcapsMessages2> messages;

final MagicVisibilityPcapsPcapsSingleResponseResult result;

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
MagicVisibilityPcapsPcapsSingleResponse copyWith({List<MagicVisibilityPcapsMessages2>? errors, List<MagicVisibilityPcapsMessages2>? messages, MagicVisibilityPcapsPcapsSingleResponseResult? result, bool? success, }) { return MagicVisibilityPcapsPcapsSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityPcapsPcapsSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'MagicVisibilityPcapsPcapsSingleResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
