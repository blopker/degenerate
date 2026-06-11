// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_filter.dart';import 'firewall_messages2.dart';@immutable final class FirewallFilterResponseSingle {const FirewallFilterResponseSingle({required this.errors, required this.messages, required this.result, required this.success, });

factory FirewallFilterResponseSingle.fromJson(Map<String, dynamic> json) { return FirewallFilterResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: FirewallFilter.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<FirewallMessages2> errors;

final List<FirewallMessages2> messages;

final FirewallFilter result;

/// Defines whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
FirewallFilterResponseSingle copyWith({List<FirewallMessages2>? errors, List<FirewallMessages2>? messages, FirewallFilter? result, bool? success, }) { return FirewallFilterResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'FirewallFilterResponseSingle(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
