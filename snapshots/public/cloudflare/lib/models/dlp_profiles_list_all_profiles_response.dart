// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_profile.dart';import 'dlp_messages2.dart';import 'dlp_profile.dart';import 'integration_profile.dart';import 'predefined_profile.dart';@immutable final class DlpProfilesListAllProfilesResponse {const DlpProfilesListAllProfilesResponse({required this.errors, required this.messages, required this.success, this.result, });

factory DlpProfilesListAllProfilesResponse.fromJson(Map<String, dynamic> json) { return DlpProfilesListAllProfilesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DlpMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DlpMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<DlpMessages2> errors;

final List<DlpMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<DlpProfile>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DlpProfilesListAllProfilesResponse copyWith({List<DlpMessages2>? errors, List<DlpMessages2>? messages, bool? success, List<DlpProfile> Function()? result, }) { return DlpProfilesListAllProfilesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpProfilesListAllProfilesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'DlpProfilesListAllProfilesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
