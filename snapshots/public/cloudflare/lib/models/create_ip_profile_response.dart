// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_message.dart';import 'teams_devices_ip_profile.dart';final class CreateIpProfileResponse {const CreateIpProfileResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory CreateIpProfileResponse.fromJson(Map<String, dynamic> json) { return CreateIpProfileResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: TeamsDevicesIpProfile.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<ResponseMessage> errors;

final List<ResponseMessage> messages;

final TeamsDevicesIpProfile result;

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
CreateIpProfileResponse copyWith({List<ResponseMessage>? errors, List<ResponseMessage>? messages, TeamsDevicesIpProfile? result, bool? success, }) { return CreateIpProfileResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateIpProfileResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'CreateIpProfileResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
