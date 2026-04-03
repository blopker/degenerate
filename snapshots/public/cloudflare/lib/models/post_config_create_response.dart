// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages22.dart';import 'scan_config.dart';@immutable final class PostConfigCreateResponse {const PostConfigCreateResponse({required this.errors, required this.messages, required this.success, this.result, });

factory PostConfigCreateResponse.fromJson(Map<String, dynamic> json) { return PostConfigCreateResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => Messages22.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Messages22.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? ScanConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<Messages22> errors;

final List<Messages22> messages;

/// Whether the API call was successful.
final bool success;

final ScanConfig? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
PostConfigCreateResponse copyWith({List<Messages22>? errors, List<Messages22>? messages, bool? success, ScanConfig Function()? result, }) { return PostConfigCreateResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostConfigCreateResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'PostConfigCreateResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
