// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'discovery_patch_multiple_request_entry.dart';import 'shield_messages2.dart';@immutable final class ShieldPatchDiscoveriesResponse {const ShieldPatchDiscoveriesResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory ShieldPatchDiscoveriesResponse.fromJson(Map<String, dynamic> json) { return ShieldPatchDiscoveriesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, DiscoveryPatchMultipleRequestEntry.fromJson(v as Map<String, dynamic>))),
); }

final List<ShieldMessages2> errors;

final List<ShieldMessages2> messages;

/// Whether the API call was successful.
final bool success;

final Map<String,DiscoveryPatchMultipleRequestEntry> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
ShieldPatchDiscoveriesResponse copyWith({List<ShieldMessages2>? errors, List<ShieldMessages2>? messages, bool? success, Map<String,DiscoveryPatchMultipleRequestEntry>? result, }) { return ShieldPatchDiscoveriesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldPatchDiscoveriesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ShieldPatchDiscoveriesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
