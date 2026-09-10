// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_messages2.dart';import 'firewall_result_info.dart';import 'firewall_schemas_rule.dart';@immutable final class FirewallResponseCollection {const FirewallResponseCollection({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory FirewallResponseCollection.fromJson(Map<String, dynamic> json) { return FirewallResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => FirewallSchemasRule.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? FirewallResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<FirewallMessages2> errors;

final List<FirewallMessages2> messages;

final List<FirewallSchemasRule> result;

/// Defines whether the API call was successful.
final bool success;

final FirewallResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
FirewallResponseCollection copyWith({List<FirewallMessages2>? errors, List<FirewallMessages2>? messages, List<FirewallSchemasRule>? result, bool? success, FirewallResultInfo? Function()? resultInfo, }) { return FirewallResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'FirewallResponseCollection(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
