// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps.dart';import 'access_messages2.dart';import 'app_launcher_application3.dart';import 'bookmark_application3.dart';import 'browser_isolation_permissions_application3.dart';import 'browser_ssh_application3.dart';import 'browser_vnc_application3.dart';import 'device_enrollment_permissions_application3.dart';import 'saa_s_application3.dart';import 'self_hosted_application3.dart';@immutable final class AccessAppsComponentsSchemasSingleResponse2 {const AccessAppsComponentsSchemasSingleResponse2({required this.errors, required this.messages, required this.success, this.result, });

factory AccessAppsComponentsSchemasSingleResponse2.fromJson(Map<String, dynamic> json) { return AccessAppsComponentsSchemasSingleResponse2(
  errors: (json['errors'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? OneOf8.parse(json['result'], fromA: (v) => SelfHostedApplication3.fromJson(v as Map<String, dynamic>), fromB: (v) => SaaSApplication3.fromJson(v as Map<String, dynamic>), fromC: (v) => BrowserSshApplication3.fromJson(v as Map<String, dynamic>), fromD: (v) => BrowserVncApplication3.fromJson(v as Map<String, dynamic>), fromE: (v) => AppLauncherApplication3.fromJson(v as Map<String, dynamic>), fromF: (v) => DeviceEnrollmentPermissionsApplication3.fromJson(v as Map<String, dynamic>), fromG: (v) => BrowserIsolationPermissionsApplication3.fromJson(v as Map<String, dynamic>), fromH: (v) => BookmarkApplication3.fromJson(v as Map<String, dynamic>),) : null,
); }

final List<AccessMessages2> errors;

final List<AccessMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccessApps? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AccessAppsComponentsSchemasSingleResponse2 copyWith({List<AccessMessages2>? errors, List<AccessMessages2>? messages, bool? success, AccessApps Function()? result, }) { return AccessAppsComponentsSchemasSingleResponse2(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppsComponentsSchemasSingleResponse2 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'AccessAppsComponentsSchemasSingleResponse2(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
