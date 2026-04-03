// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'speed_base.dart';import 'speed_messages2.dart';@immutable final class ZoneSettingsGetSpeedBrainSettingResponse {const ZoneSettingsGetSpeedBrainSettingResponse({required this.errors, required this.messages, required this.success, this.result, });

factory ZoneSettingsGetSpeedBrainSettingResponse.fromJson(Map<String, dynamic> json) { return ZoneSettingsGetSpeedBrainSettingResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SpeedMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SpeedMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? SpeedBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<SpeedMessages2> errors;

final List<SpeedMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SpeedBase? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ZoneSettingsGetSpeedBrainSettingResponse copyWith({List<SpeedMessages2>? errors, List<SpeedMessages2>? messages, bool? success, SpeedBase Function()? result, }) { return ZoneSettingsGetSpeedBrainSettingResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneSettingsGetSpeedBrainSettingResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ZoneSettingsGetSpeedBrainSettingResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
