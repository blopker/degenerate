// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logpush_instant_logs_job.dart';import 'logpush_messages2.dart';@immutable final class LogpushInstantLogsJobResponseCollection {const LogpushInstantLogsJobResponseCollection({required this.errors, required this.messages, required this.success, this.result, });

factory LogpushInstantLogsJobResponseCollection.fromJson(Map<String, dynamic> json) { return LogpushInstantLogsJobResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => LogpushMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LogpushMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => LogpushInstantLogsJob.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<LogpushMessages2> errors;

final List<LogpushMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<LogpushInstantLogsJob>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
LogpushInstantLogsJobResponseCollection copyWith({List<LogpushMessages2>? errors, List<LogpushMessages2>? messages, bool? success, List<LogpushInstantLogsJob> Function()? result, }) { return LogpushInstantLogsJobResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushInstantLogsJobResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'LogpushInstantLogsJobResponseCollection(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
