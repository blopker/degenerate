// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_messages2.dart';import 'cache_rules_origin_h2_max_streams.dart';@immutable final class CacheRulesOriginH2MaxStreamsResponseValue {const CacheRulesOriginH2MaxStreamsResponseValue({required this.errors, required this.messages, required this.success, this.result, });

factory CacheRulesOriginH2MaxStreamsResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesOriginH2MaxStreamsResponseValue(
  errors: (json['errors'] as List<dynamic>).map((e) => CacheRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CacheRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? CacheRulesOriginH2MaxStreams.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<CacheRulesMessages2> errors;

final List<CacheRulesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CacheRulesOriginH2MaxStreams? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CacheRulesOriginH2MaxStreamsResponseValue copyWith({List<CacheRulesMessages2>? errors, List<CacheRulesMessages2>? messages, bool? success, CacheRulesOriginH2MaxStreams Function()? result, }) { return CacheRulesOriginH2MaxStreamsResponseValue(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesOriginH2MaxStreamsResponseValue &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'CacheRulesOriginH2MaxStreamsResponseValue(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
