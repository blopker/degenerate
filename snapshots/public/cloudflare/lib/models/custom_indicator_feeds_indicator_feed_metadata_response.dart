// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_indicator_feeds_indicator_feed_metadata.dart';import 'custom_indicator_feeds_schemas_messages2.dart';@immutable final class CustomIndicatorFeedsIndicatorFeedMetadataResponse {const CustomIndicatorFeedsIndicatorFeedMetadataResponse({required this.errors, required this.messages, required this.success, this.result, });

factory CustomIndicatorFeedsIndicatorFeedMetadataResponse.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsIndicatorFeedMetadataResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => CustomIndicatorFeedsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CustomIndicatorFeedsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? CustomIndicatorFeedsIndicatorFeedMetadata.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<CustomIndicatorFeedsSchemasMessages2> errors;

final List<CustomIndicatorFeedsSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CustomIndicatorFeedsIndicatorFeedMetadata? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CustomIndicatorFeedsIndicatorFeedMetadataResponse copyWith({List<CustomIndicatorFeedsSchemasMessages2>? errors, List<CustomIndicatorFeedsSchemasMessages2>? messages, bool? success, CustomIndicatorFeedsIndicatorFeedMetadata Function()? result, }) { return CustomIndicatorFeedsIndicatorFeedMetadataResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsIndicatorFeedMetadataResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'CustomIndicatorFeedsIndicatorFeedMetadataResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
