// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_messages2.dart';import 'firewall_result_info.dart';@immutable final class UserAgentBlockingRulesListUserAgentBlockingRulesResponse4Xx {const UserAgentBlockingRulesListUserAgentBlockingRulesResponse4Xx({required this.result, required this.errors, required this.messages, required this.success, this.resultInfo, });

factory UserAgentBlockingRulesListUserAgentBlockingRulesResponse4Xx.fromJson(Map<String, dynamic> json) { return UserAgentBlockingRulesListUserAgentBlockingRulesResponse4Xx(
  result: json['result'] as Map<String, dynamic>?,
  errors: (json['errors'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? FirewallResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final Map<String,dynamic>? result;

final List<FirewallMessages2> errors;

final List<FirewallMessages2> messages;

/// Defines whether the API call was successful.
final bool success;

final FirewallResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'result': ?result,
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
UserAgentBlockingRulesListUserAgentBlockingRulesResponse4Xx copyWith({Map<String, dynamic>? Function()? result, List<FirewallMessages2>? errors, List<FirewallMessages2>? messages, bool? success, FirewallResultInfo Function()? resultInfo, }) { return UserAgentBlockingRulesListUserAgentBlockingRulesResponse4Xx(
  result: result != null ? result() : this.result,
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserAgentBlockingRulesListUserAgentBlockingRulesResponse4Xx &&
          result == other.result &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(result, Object.hashAll(errors), Object.hashAll(messages), success, resultInfo); } 
@override String toString() { return 'UserAgentBlockingRulesListUserAgentBlockingRulesResponse4Xx(result: $result, errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo)'; } 
 }
