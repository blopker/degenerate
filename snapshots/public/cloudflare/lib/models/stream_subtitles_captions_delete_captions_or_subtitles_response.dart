// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_messages2.dart';final class StreamSubtitlesCaptionsDeleteCaptionsOrSubtitlesResponse {const StreamSubtitlesCaptionsDeleteCaptionsOrSubtitlesResponse({required this.errors, required this.messages, required this.success, this.result, });

factory StreamSubtitlesCaptionsDeleteCaptionsOrSubtitlesResponse.fromJson(Map<String, dynamic> json) { return StreamSubtitlesCaptionsDeleteCaptionsOrSubtitlesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => StreamMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => StreamMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] as String?,
); }

final List<StreamMessages2> errors;

final List<StreamMessages2> messages;

/// Whether the API call was successful.
final bool success;

final String? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
StreamSubtitlesCaptionsDeleteCaptionsOrSubtitlesResponse copyWith({List<StreamMessages2>? errors, List<StreamMessages2>? messages, bool? success, String Function()? result, }) { return StreamSubtitlesCaptionsDeleteCaptionsOrSubtitlesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamSubtitlesCaptionsDeleteCaptionsOrSubtitlesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'StreamSubtitlesCaptionsDeleteCaptionsOrSubtitlesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
