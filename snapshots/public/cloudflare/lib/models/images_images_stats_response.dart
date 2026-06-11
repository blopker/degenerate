// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'images_images_stats.dart';import 'images_messages2.dart';@immutable final class ImagesImagesStatsResponse {const ImagesImagesStatsResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory ImagesImagesStatsResponse.fromJson(Map<String, dynamic> json) { return ImagesImagesStatsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ImagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ImagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: ImagesImagesStats.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<ImagesMessages2> errors;

final List<ImagesMessages2> messages;

final ImagesImagesStats result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ImagesImagesStatsResponse copyWith({List<ImagesMessages2>? errors, List<ImagesMessages2>? messages, ImagesImagesStats? result, bool? success, }) { return ImagesImagesStatsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImagesStatsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ImagesImagesStatsResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
