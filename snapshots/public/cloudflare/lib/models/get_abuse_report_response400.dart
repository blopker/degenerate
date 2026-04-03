// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'abuse_reports_abuse_report.dart';import 'abuse_reports_error_message.dart';import 'abuse_reports_message.dart';@immutable final class GetAbuseReportResponse400 {const GetAbuseReportResponse400({required this.errors, required this.success, this.messages, this.result, });

factory GetAbuseReportResponse400.fromJson(Map<String, dynamic> json) { return GetAbuseReportResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => AbuseReportsErrorMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => AbuseReportsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] != null ? AbuseReportsAbuseReport.fromJson(json['result'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<AbuseReportsErrorMessage> errors;

final List<AbuseReportsMessage>? messages;

final AbuseReportsAbuseReport? result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  if (messages != null) 'messages': messages?.map((e) => e.toJson()).toList(),
  if (result != null) 'result': result?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
GetAbuseReportResponse400 copyWith({List<AbuseReportsErrorMessage>? errors, List<AbuseReportsMessage> Function()? messages, AbuseReportsAbuseReport Function()? result, bool? success, }) { return GetAbuseReportResponse400(
  errors: errors ?? this.errors,
  messages: messages != null ? messages() : this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAbuseReportResponse400 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages ?? const []), result, success); } 
@override String toString() { return 'GetAbuseReportResponse400(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
