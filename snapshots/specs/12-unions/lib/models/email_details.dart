// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailDetails {const EmailDetails({required this.emailAddress, required this.subject, this.body, });

factory EmailDetails.fromJson(Map<String, dynamic> json) { return EmailDetails(
  emailAddress: json['emailAddress'] as String,
  subject: json['subject'] as String,
  body: json['body'] as String?,
); }

final String emailAddress;

final String subject;

final String? body;

Map<String, dynamic> toJson() { return {
  'emailAddress': emailAddress,
  'subject': subject,
  'body': ?body,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('emailAddress') && json['emailAddress'] is String &&
      json.containsKey('subject') && json['subject'] is String; } 
EmailDetails copyWith({String? emailAddress, String? subject, String Function()? body, }) { return EmailDetails(
  emailAddress: emailAddress ?? this.emailAddress,
  subject: subject ?? this.subject,
  body: body != null ? body() : this.body,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailDetails &&
          emailAddress == other.emailAddress &&
          subject == other.subject &&
          body == other.body; } 
@override int get hashCode { return Object.hash(emailAddress, subject, body); } 
@override String toString() { return 'EmailDetails(emailAddress: $emailAddress, subject: $subject, body: $body)'; } 
 }
