// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bundle_custom_detection.dart';import 'bundle_messages2.dart';@immutable final class BundleResponseCustomDetection {const BundleResponseCustomDetection({required this.errors, required this.messages, required this.result, required this.success, });

factory BundleResponseCustomDetection.fromJson(Map<String, dynamic> json) { return BundleResponseCustomDetection(
  errors: (json['errors'] as List<dynamic>).map((e) => BundleMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => BundleMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: BundleCustomDetection.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<BundleMessages2> errors;

final List<BundleMessages2> messages;

final BundleCustomDetection result;

/// Defines whether the API call was successful.
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
BundleResponseCustomDetection copyWith({List<BundleMessages2>? errors, List<BundleMessages2>? messages, BundleCustomDetection? result, bool? success, }) { return BundleResponseCustomDetection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BundleResponseCustomDetection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'BundleResponseCustomDetection(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
