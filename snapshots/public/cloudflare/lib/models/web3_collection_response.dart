// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_messages2.dart';import 'web3_result_info.dart';import 'web3_web3_hostname.dart';@immutable final class Web3CollectionResponse {const Web3CollectionResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory Web3CollectionResponse.fromJson(Map<String, dynamic> json) { return Web3CollectionResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => Web3Web3Hostname.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? Web3ResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<Web3Messages2> errors;

final List<Web3Messages2> messages;

final List<Web3Web3Hostname> result;

/// Specifies whether the API call was successful.
final bool success;

final Web3ResultInfo? resultInfo;

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
Web3CollectionResponse copyWith({List<Web3Messages2>? errors, List<Web3Messages2>? messages, List<Web3Web3Hostname>? result, bool? success, Web3ResultInfo Function()? resultInfo, }) { return Web3CollectionResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3CollectionResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'Web3CollectionResponse(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
