// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages5.dart';import 'result_info.dart';import 'subscription2.dart';@immutable final class AccountSubscriptionResponseCollection {const AccountSubscriptionResponseCollection({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory AccountSubscriptionResponseCollection.fromJson(Map<String, dynamic> json) { return AccountSubscriptionResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => Messages5.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Messages5.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => Subscription2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<Messages5> errors;

final List<Messages5> messages;

final List<Subscription2> result;

/// Whether the API call was successful
final bool success;

final ResultInfo? resultInfo;

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
AccountSubscriptionResponseCollection copyWith({List<Messages5>? errors, List<Messages5>? messages, List<Subscription2>? result, bool? success, ResultInfo Function()? resultInfo, }) { return AccountSubscriptionResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSubscriptionResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'AccountSubscriptionResponseCollection(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
