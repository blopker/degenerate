// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_config.dart';import 'hyperdrive_messages2.dart';@immutable final class GetHyperdriveResponse {const GetHyperdriveResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory GetHyperdriveResponse.fromJson(Map<String, dynamic> json) { return GetHyperdriveResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => HyperdriveMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => HyperdriveMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: HyperdriveHyperdriveConfig.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<HyperdriveMessages2> errors;

final List<HyperdriveMessages2> messages;

final HyperdriveHyperdriveConfig result;

/// Return the status of the API call success.
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
GetHyperdriveResponse copyWith({List<HyperdriveMessages2>? errors, List<HyperdriveMessages2>? messages, HyperdriveHyperdriveConfig? result, bool? success, }) { return GetHyperdriveResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetHyperdriveResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'GetHyperdriveResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
