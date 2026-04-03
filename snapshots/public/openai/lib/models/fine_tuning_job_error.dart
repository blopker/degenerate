// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// For fine-tuning jobs that have `failed`, this will contain more information on the cause of the failure.
@immutable final class FineTuningJobError {const FineTuningJobError({required this.code, required this.message, required this.param, });

factory FineTuningJobError.fromJson(Map<String, dynamic> json) { return FineTuningJobError(
  code: json['code'] as String,
  message: json['message'] as String,
  param: json['param'] as String?,
); }

/// A machine-readable error code.
final String code;

/// A human-readable error message.
final String message;

/// The parameter that was invalid, usually `training_file` or `validation_file`. This field will be null if the failure was not parameter-specific.
final String? param;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
  'param': ?param,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is String &&
      json.containsKey('message') && json['message'] is String &&
      json.containsKey('param') && json['param'] is String; } 
FineTuningJobError copyWith({String? code, String? message, String? Function()? param, }) { return FineTuningJobError(
  code: code ?? this.code,
  message: message ?? this.message,
  param: param != null ? param() : this.param,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FineTuningJobError &&
          code == other.code &&
          message == other.message &&
          param == other.param; } 
@override int get hashCode { return Object.hash(code, message, param); } 
@override String toString() { return 'FineTuningJobError(code: $code, message: $message, param: $param)'; } 
 }
