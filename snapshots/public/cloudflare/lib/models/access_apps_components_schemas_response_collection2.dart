// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps.dart';import 'access_apps_components_schemas_response_collection2_result_info.dart';import 'access_messages2.dart';import 'app_launcher_application3.dart';import 'bookmark_application3.dart';import 'browser_isolation_permissions_application3.dart';import 'browser_ssh_application3.dart';import 'browser_vnc_application3.dart';import 'device_enrollment_permissions_application3.dart';import 'saa_s_application3.dart';import 'self_hosted_application3.dart';@immutable final class AccessAppsComponentsSchemasResponseCollection2 {const AccessAppsComponentsSchemasResponseCollection2({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory AccessAppsComponentsSchemasResponseCollection2.fromJson(Map<String, dynamic> json) { return AccessAppsComponentsSchemasResponseCollection2(
  errors: (json['errors'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? AccessAppsComponentsSchemasResponseCollection2ResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf8.parse(e, fromA: (v) => SelfHostedApplication3.fromJson(v as Map<String, dynamic>), fromB: (v) => SaaSApplication3.fromJson(v as Map<String, dynamic>), fromC: (v) => BrowserSshApplication3.fromJson(v as Map<String, dynamic>), fromD: (v) => BrowserVncApplication3.fromJson(v as Map<String, dynamic>), fromE: (v) => AppLauncherApplication3.fromJson(v as Map<String, dynamic>), fromF: (v) => DeviceEnrollmentPermissionsApplication3.fromJson(v as Map<String, dynamic>), fromG: (v) => BrowserIsolationPermissionsApplication3.fromJson(v as Map<String, dynamic>), fromH: (v) => BookmarkApplication3.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<AccessMessages2> errors;

final List<AccessMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccessAppsComponentsSchemasResponseCollection2ResultInfo? resultInfo;

final List<AccessApps>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AccessAppsComponentsSchemasResponseCollection2 copyWith({List<AccessMessages2>? errors, List<AccessMessages2>? messages, bool? success, AccessAppsComponentsSchemasResponseCollection2ResultInfo Function()? resultInfo, List<AccessApps> Function()? result, }) { return AccessAppsComponentsSchemasResponseCollection2(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppsComponentsSchemasResponseCollection2 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AccessAppsComponentsSchemasResponseCollection2(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
