// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logcontrol_cmb_config.dart';import 'logcontrol_messages2.dart';@immutable final class LogcontrolCmbConfigResponseSingle {const LogcontrolCmbConfigResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory LogcontrolCmbConfigResponseSingle.fromJson(Map<String, dynamic> json) { return LogcontrolCmbConfigResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => LogcontrolMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => LogcontrolMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? LogcontrolCmbConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<LogcontrolMessages2> errors;

final List<LogcontrolMessages2> messages;

/// Whether the API call was successful.
final bool success;

final LogcontrolCmbConfig? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
LogcontrolCmbConfigResponseSingle copyWith({List<LogcontrolMessages2>? errors, List<LogcontrolMessages2>? messages, bool? success, LogcontrolCmbConfig Function()? result, }) { return LogcontrolCmbConfigResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogcontrolCmbConfigResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'LogcontrolCmbConfigResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
