// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_get_zone_settings_response.dart';import 'page_shield_messages2.dart';@immutable final class PageShieldGetSettingsResponse {const PageShieldGetSettingsResponse({required this.success, this.errors, this.messages, this.result, });

factory PageShieldGetSettingsResponse.fromJson(Map<String, dynamic> json) { return PageShieldGetSettingsResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => PageShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => PageShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? PageShieldGetZoneSettingsResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<PageShieldMessages2>? errors;

final List<PageShieldMessages2>? messages;

/// Whether the API call was successful
final bool success;

final PageShieldGetZoneSettingsResponse? result;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  if (messages != null) 'messages': messages?.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
PageShieldGetSettingsResponse copyWith({List<PageShieldMessages2>? Function()? errors, List<PageShieldMessages2>? Function()? messages, bool? success, PageShieldGetZoneSettingsResponse? Function()? result, }) { return PageShieldGetSettingsResponse(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldGetSettingsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success, result); } 
@override String toString() { return 'PageShieldGetSettingsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
