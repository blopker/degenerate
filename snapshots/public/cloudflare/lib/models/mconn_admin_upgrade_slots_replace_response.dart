// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_upgrade_slot.dart';import 'mconn_coded_message.dart';@immutable final class MconnAdminUpgradeSlotsReplaceResponse {const MconnAdminUpgradeSlotsReplaceResponse({required this.messages, required this.success, required this.errors, required this.result, });

factory MconnAdminUpgradeSlotsReplaceResponse.fromJson(Map<String, dynamic> json) { return MconnAdminUpgradeSlotsReplaceResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => MconnAdminUpgradeSlot.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MconnCodedMessage> messages;

final bool success;

final List<MconnCodedMessage> errors;

final List<MconnAdminUpgradeSlot> result;

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
MconnAdminUpgradeSlotsReplaceResponse copyWith({List<MconnCodedMessage>? messages, bool? success, List<MconnCodedMessage>? errors, List<MconnAdminUpgradeSlot>? result, }) { return MconnAdminUpgradeSlotsReplaceResponse(
  messages: messages ?? this.messages,
  success: success ?? this.success,
  errors: errors ?? this.errors,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminUpgradeSlotsReplaceResponse &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(errors, other.errors) &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), success, Object.hashAll(errors), Object.hashAll(result)); } 
@override String toString() { return 'MconnAdminUpgradeSlotsReplaceResponse(messages: $messages, success: $success, errors: $errors, result: $result)'; } 
 }
