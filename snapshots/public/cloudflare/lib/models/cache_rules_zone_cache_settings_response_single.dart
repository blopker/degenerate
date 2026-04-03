// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_messages2.dart';import 'cache_rules_result_object.dart';@immutable final class CacheRulesZoneCacheSettingsResponseSingle {const CacheRulesZoneCacheSettingsResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory CacheRulesZoneCacheSettingsResponseSingle.fromJson(Map<String, dynamic> json) { return CacheRulesZoneCacheSettingsResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => CacheRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CacheRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? CacheRulesResultObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<CacheRulesMessages2> errors;

final List<CacheRulesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CacheRulesResultObject? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CacheRulesZoneCacheSettingsResponseSingle copyWith({List<CacheRulesMessages2>? errors, List<CacheRulesMessages2>? messages, bool? success, CacheRulesResultObject Function()? result, }) { return CacheRulesZoneCacheSettingsResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesZoneCacheSettingsResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'CacheRulesZoneCacheSettingsResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
