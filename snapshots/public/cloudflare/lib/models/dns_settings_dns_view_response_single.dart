// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_dns_view_response.dart';import 'dns_settings_messages2.dart';@immutable final class DnsSettingsDnsViewResponseSingle {const DnsSettingsDnsViewResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory DnsSettingsDnsViewResponseSingle.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsViewResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsSettingsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsSettingsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DnsSettingsDnsViewResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DnsSettingsMessages2> errors;

final List<DnsSettingsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DnsSettingsDnsViewResponse? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DnsSettingsDnsViewResponseSingle copyWith({List<DnsSettingsMessages2>? errors, List<DnsSettingsMessages2>? messages, bool? success, DnsSettingsDnsViewResponse Function()? result, }) { return DnsSettingsDnsViewResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsViewResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DnsSettingsDnsViewResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
