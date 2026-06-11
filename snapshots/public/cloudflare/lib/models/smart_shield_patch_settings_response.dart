// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_messages2.dart';import 'smartshield_smart_shield_settings_patch_response.dart';@immutable final class SmartShieldPatchSettingsResponse {const SmartShieldPatchSettingsResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory SmartShieldPatchSettingsResponse.fromJson(Map<String, dynamic> json) { return SmartShieldPatchSettingsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SmartshieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SmartshieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: SmartshieldSmartShieldSettingsPatchResponse.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<SmartshieldMessages2> errors;

final List<SmartshieldMessages2> messages;

final SmartshieldSmartShieldSettingsPatchResponse result;

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
SmartShieldPatchSettingsResponse copyWith({List<SmartshieldMessages2>? errors, List<SmartshieldMessages2>? messages, SmartshieldSmartShieldSettingsPatchResponse? result, bool? success, }) { return SmartShieldPatchSettingsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartShieldPatchSettingsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'SmartShieldPatchSettingsResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
