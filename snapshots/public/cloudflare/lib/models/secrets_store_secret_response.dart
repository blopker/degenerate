// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secrets_store_messages2.dart';import 'secrets_store_secret_object.dart';import 'secrets_store_secret_response_result_info.dart';@immutable final class SecretsStoreSecretResponse {const SecretsStoreSecretResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory SecretsStoreSecretResponse.fromJson(Map<String, dynamic> json) { return SecretsStoreSecretResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => SecretsStoreMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecretsStoreMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? SecretsStoreSecretResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] != null ? SecretsStoreSecretObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<SecretsStoreMessages2> errors;

final List<SecretsStoreMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SecretsStoreSecretResponseResultInfo? resultInfo;

final SecretsStoreSecretObject? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SecretsStoreSecretResponse copyWith({List<SecretsStoreMessages2>? errors, List<SecretsStoreMessages2>? messages, bool? success, SecretsStoreSecretResponseResultInfo Function()? resultInfo, SecretsStoreSecretObject Function()? result, }) { return SecretsStoreSecretResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreSecretResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'SecretsStoreSecretResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
