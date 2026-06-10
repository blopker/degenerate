// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_coded_message.dart';extension type const MconnControllerFetchCloudflaredTokenResult(String value) {
factory MconnControllerFetchCloudflaredTokenResult.fromJson(String json) => MconnControllerFetchCloudflaredTokenResult(json);

String toJson() => value;

}
@immutable final class MconnControllerFetchCloudflaredTokenResponse {const MconnControllerFetchCloudflaredTokenResponse({required this.messages, required this.success, required this.errors, required this.result, });

factory MconnControllerFetchCloudflaredTokenResponse.fromJson(Map<String, dynamic> json) { return MconnControllerFetchCloudflaredTokenResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: MconnControllerFetchCloudflaredTokenResult.fromJson(json['result'] as String),
); }

final List<MconnCodedMessage> messages;

final bool success;

final List<MconnCodedMessage> errors;

final MconnControllerFetchCloudflaredTokenResult result;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('errors') &&
      json.containsKey('result'); } 
MconnControllerFetchCloudflaredTokenResponse copyWith({List<MconnCodedMessage>? messages, bool? success, List<MconnCodedMessage>? errors, MconnControllerFetchCloudflaredTokenResult? result, }) { return MconnControllerFetchCloudflaredTokenResponse(
  messages: messages ?? this.messages,
  success: success ?? this.success,
  errors: errors ?? this.errors,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerFetchCloudflaredTokenResponse &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(errors, other.errors) &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), success, Object.hashAll(errors), result); } 
@override String toString() { return 'MconnControllerFetchCloudflaredTokenResponse(messages: $messages, success: $success, errors: $errors, result: $result)'; } 
 }
