// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bundle_custom_detection.dart';import 'bundle_messages2.dart';@immutable final class BundleResponseCustomDetectionCollection {const BundleResponseCustomDetectionCollection({required this.errors, required this.messages, required this.result, required this.success, });

factory BundleResponseCustomDetectionCollection.fromJson(Map<String, dynamic> json) { return BundleResponseCustomDetectionCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => BundleMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => BundleMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => BundleCustomDetection.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BundleMessages2> errors;

final List<BundleMessages2> messages;

final List<BundleCustomDetection> result;

/// Defines whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
BundleResponseCustomDetectionCollection copyWith({List<BundleMessages2>? errors, List<BundleMessages2>? messages, List<BundleCustomDetection>? result, bool? success, }) { return BundleResponseCustomDetectionCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BundleResponseCustomDetectionCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success); } 
@override String toString() { return 'BundleResponseCustomDetectionCollection(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
