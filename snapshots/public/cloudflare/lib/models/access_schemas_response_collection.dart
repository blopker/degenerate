// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_messages2.dart';import 'access_schemas_groups.dart';import 'access_schemas_response_collection_result_info.dart';@immutable final class AccessSchemasResponseCollection {const AccessSchemasResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory AccessSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessSchemasResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? AccessSchemasResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasGroups.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessMessages2> errors;

final List<AccessMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccessSchemasResponseCollectionResultInfo? resultInfo;

final List<AccessSchemasGroups>? result;

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
AccessSchemasResponseCollection copyWith({List<AccessMessages2>? errors, List<AccessMessages2>? messages, bool? success, AccessSchemasResponseCollectionResultInfo Function()? resultInfo, List<AccessSchemasGroups> Function()? result, }) { return AccessSchemasResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AccessSchemasResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
