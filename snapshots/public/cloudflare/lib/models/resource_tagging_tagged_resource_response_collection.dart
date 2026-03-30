// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_tagging_cursor_result_info.dart';import 'resource_tagging_messages2.dart';import 'resource_tagging_tagged_resource_object.dart';final class ResourceTaggingTaggedResourceResponseCollection {const ResourceTaggingTaggedResourceResponseCollection({required this.errors, required this.messages, required this.success, this.result, this.resultInfo, });

factory ResourceTaggingTaggedResourceResponseCollection.fromJson(Map<String, dynamic> json) { return ResourceTaggingTaggedResourceResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => ResourceTaggingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ResourceTaggingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => ResourceTaggingTaggedResourceObject.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? ResourceTaggingCursorResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ResourceTaggingMessages2> errors;

final List<ResourceTaggingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<ResourceTaggingTaggedResourceObject>? result;

final ResourceTaggingCursorResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResourceTaggingTaggedResourceResponseCollection copyWith({List<ResourceTaggingMessages2>? errors, List<ResourceTaggingMessages2>? messages, bool? success, List<ResourceTaggingTaggedResourceObject> Function()? result, ResourceTaggingCursorResultInfo Function()? resultInfo, }) { return ResourceTaggingTaggedResourceResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceTaggingTaggedResourceResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'ResourceTaggingTaggedResourceResponseCollection(errors: $errors, messages: $messages, success: $success, result: $result, resultInfo: $resultInfo)'; } 
 }
