// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'abuse_reports_message.dart';final class ListEmailsResponse400 {const ListEmailsResponse400({this.errors, this.messages, required this.success, });

factory ListEmailsResponse400.fromJson(Map<String, dynamic> json) { return ListEmailsResponse400(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => AbuseReportsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => AbuseReportsMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AbuseReportsMessage>? errors;

final List<AbuseReportsMessage>? messages;

final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  if (messages != null) 'messages': messages?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
ListEmailsResponse400 copyWith({List<AbuseReportsMessage> Function()? errors, List<AbuseReportsMessage> Function()? messages, bool? success, }) { return ListEmailsResponse400(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListEmailsResponse400 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success); } 
@override String toString() { return 'ListEmailsResponse400(errors: $errors, messages: $messages, success: $success)'; } 
 }
