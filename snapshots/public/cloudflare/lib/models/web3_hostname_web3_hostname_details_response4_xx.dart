// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_messages2.dart';import 'web3_result_info.dart';@immutable final class Web3HostnameWeb3HostnameDetailsResponse4Xx {const Web3HostnameWeb3HostnameDetailsResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory Web3HostnameWeb3HostnameDetailsResponse4Xx.fromJson(Map<String, dynamic> json) { return Web3HostnameWeb3HostnameDetailsResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? Web3ResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<Web3Messages2> errors;

final List<Web3Messages2> messages;

final Map<String,dynamic>? result;

/// Specifies whether the API call was successful.
final bool success;

final Web3ResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
Web3HostnameWeb3HostnameDetailsResponse4Xx copyWith({List<Web3Messages2>? errors, List<Web3Messages2>? messages, Map<String, dynamic>? Function()? result, bool? success, Web3ResultInfo Function()? resultInfo, }) { return Web3HostnameWeb3HostnameDetailsResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3HostnameWeb3HostnameDetailsResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, resultInfo); } 
@override String toString() { return 'Web3HostnameWeb3HostnameDetailsResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
