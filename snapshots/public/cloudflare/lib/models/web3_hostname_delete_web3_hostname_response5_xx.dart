// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_messages2.dart';@immutable final class Web3HostnameDeleteWeb3HostnameResponse5Xx {const Web3HostnameDeleteWeb3HostnameResponse5Xx({required this.errors, required this.messages, required this.result, required this.success, });

factory Web3HostnameDeleteWeb3HostnameResponse5Xx.fromJson(Map<String, dynamic> json) { return Web3HostnameDeleteWeb3HostnameResponse5Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
); }

final List<Web3Messages2> errors;

final List<Web3Messages2> messages;

final Map<String,dynamic>? result;

/// Specifies whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
Web3HostnameDeleteWeb3HostnameResponse5Xx copyWith({List<Web3Messages2>? errors, List<Web3Messages2>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return Web3HostnameDeleteWeb3HostnameResponse5Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3HostnameDeleteWeb3HostnameResponse5Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'Web3HostnameDeleteWeb3HostnameResponse5Xx(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
