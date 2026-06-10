// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_messages2.dart';import 'access_tag.dart';import 'access_tags_components_schemas_response_collection_result_info.dart';@immutable final class AccessTagsComponentsSchemasResponseCollection {const AccessTagsComponentsSchemasResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory AccessTagsComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessTagsComponentsSchemasResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? AccessTagsComponentsSchemasResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessTag.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessMessages2> errors;

final List<AccessMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccessTagsComponentsSchemasResponseCollectionResultInfo? resultInfo;

final List<AccessTag>? result;

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
AccessTagsComponentsSchemasResponseCollection copyWith({List<AccessMessages2>? errors, List<AccessMessages2>? messages, bool? success, AccessTagsComponentsSchemasResponseCollectionResultInfo Function()? resultInfo, List<AccessTag> Function()? result, }) { return AccessTagsComponentsSchemasResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessTagsComponentsSchemasResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AccessTagsComponentsSchemasResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
