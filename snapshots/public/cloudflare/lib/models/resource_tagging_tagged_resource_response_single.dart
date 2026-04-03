// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_tagging_messages2.dart';import 'resource_tagging_tagged_resource_object.dart';@immutable final class ResourceTaggingTaggedResourceResponseSingle {const ResourceTaggingTaggedResourceResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory ResourceTaggingTaggedResourceResponseSingle.fromJson(Map<String, dynamic> json) { return ResourceTaggingTaggedResourceResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => ResourceTaggingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ResourceTaggingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? ResourceTaggingTaggedResourceObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<ResourceTaggingMessages2> errors;

final List<ResourceTaggingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ResourceTaggingTaggedResourceObject? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResourceTaggingTaggedResourceResponseSingle copyWith({List<ResourceTaggingMessages2>? errors, List<ResourceTaggingMessages2>? messages, bool? success, ResourceTaggingTaggedResourceObject Function()? result, }) { return ResourceTaggingTaggedResourceResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceTaggingTaggedResourceResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ResourceTaggingTaggedResourceResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
