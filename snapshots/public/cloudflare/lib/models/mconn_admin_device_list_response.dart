// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_device.dart';import 'mconn_coded_message.dart';@immutable final class MconnAdminDeviceListResponse {const MconnAdminDeviceListResponse({required this.messages, required this.success, required this.errors, required this.result, });

factory MconnAdminDeviceListResponse.fromJson(Map<String, dynamic> json) { return MconnAdminDeviceListResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => MconnAdminDevice.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MconnCodedMessage> messages;

final bool success;

final List<MconnCodedMessage> errors;

final List<MconnAdminDevice> result;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('errors') &&
      json.containsKey('result'); } 
MconnAdminDeviceListResponse copyWith({List<MconnCodedMessage>? messages, bool? success, List<MconnCodedMessage>? errors, List<MconnAdminDevice>? result, }) { return MconnAdminDeviceListResponse(
  messages: messages ?? this.messages,
  success: success ?? this.success,
  errors: errors ?? this.errors,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminDeviceListResponse &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(errors, other.errors) &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), success, Object.hashAll(errors), Object.hashAll(result)); } 
@override String toString() { return 'MconnAdminDeviceListResponse(messages: $messages, success: $success, errors: $errors, result: $result)'; } 
 }
