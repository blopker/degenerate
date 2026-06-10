// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secrets_store_messages2.dart';import 'secrets_store_store_object.dart';import 'secrets_store_stores_response_collection_result_info.dart';@immutable final class SecretsStoreStoresResponseCollection {const SecretsStoreStoresResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory SecretsStoreStoresResponseCollection.fromJson(Map<String, dynamic> json) { return SecretsStoreStoresResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => SecretsStoreMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SecretsStoreMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? SecretsStoreStoresResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => SecretsStoreStoreObject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SecretsStoreMessages2> errors;

final List<SecretsStoreMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SecretsStoreStoresResponseCollectionResultInfo? resultInfo;

final List<SecretsStoreStoreObject>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SecretsStoreStoresResponseCollection copyWith({List<SecretsStoreMessages2>? errors, List<SecretsStoreMessages2>? messages, bool? success, SecretsStoreStoresResponseCollectionResultInfo Function()? resultInfo, List<SecretsStoreStoreObject> Function()? result, }) { return SecretsStoreStoresResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreStoresResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'SecretsStoreStoresResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
