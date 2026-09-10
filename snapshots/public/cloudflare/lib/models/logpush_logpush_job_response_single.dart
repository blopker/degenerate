// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logpush_logpush_job.dart';import 'logpush_messages2.dart';@immutable final class LogpushLogpushJobResponseSingle {const LogpushLogpushJobResponseSingle({required this.errors, required this.messages, required this.success, this.result = const Omittable.absent(), });

factory LogpushLogpushJobResponseSingle.fromJson(Map<String, dynamic> json) { return LogpushLogpushJobResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => LogpushMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LogpushMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json.containsKey('result') ? Omittable(json['result'] != null ? LogpushLogpushJob.fromJson(json['result'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final List<LogpushMessages2> errors;

final List<LogpushMessages2> messages;

/// Whether the API call was successful.
final bool success;

final Omittable<LogpushLogpushJob?> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result.isPresent) 'result': result.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
LogpushLogpushJobResponseSingle copyWith({List<LogpushMessages2>? errors, List<LogpushMessages2>? messages, bool? success, Omittable<LogpushLogpushJob?>? result, }) { return LogpushLogpushJobResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushLogpushJobResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'LogpushLogpushJobResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
