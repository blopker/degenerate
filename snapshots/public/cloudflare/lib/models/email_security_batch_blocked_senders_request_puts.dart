// GENERATED CODE - DO NOT MODIFY BY HAND

import 'email_security_blocked_sender_id.dart';import 'email_security_pattern_type.dart';final class EmailSecurityBatchBlockedSendersRequestPuts {const EmailSecurityBatchBlockedSendersRequestPuts({this.comments, required this.isRegex, required this.pattern, required this.patternType, required this.id, });

factory EmailSecurityBatchBlockedSendersRequestPuts.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchBlockedSendersRequestPuts(
  comments: json['comments'] as String?,
  isRegex: json['is_regex'] as bool,
  pattern: json['pattern'] as String,
  patternType: json['pattern_type'] != null ? EmailSecurityPatternType.fromJson(json['pattern_type'] as String) : null,
  id: EmailSecurityBlockedSenderId.fromJson(json['id'] as num),
); }

final String? comments;

final bool isRegex;

final String pattern;

final EmailSecurityPatternType? patternType;

/// The unique identifier for the allow policy.
final EmailSecurityBlockedSenderId id;

Map<String, dynamic> toJson() { return {
  'comments': ?comments,
  'is_regex': isRegex,
  'pattern': pattern,
  if (patternType != null) 'pattern_type': patternType?.toJson(),
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('is_regex') && json['is_regex'] is bool &&
      json.containsKey('pattern') && json['pattern'] is String &&
      json.containsKey('pattern_type') &&
      json.containsKey('id'); } 
EmailSecurityBatchBlockedSendersRequestPuts copyWith({String? Function()? comments, bool? isRegex, String? pattern, EmailSecurityPatternType? Function()? patternType, EmailSecurityBlockedSenderId? id, }) { return EmailSecurityBatchBlockedSendersRequestPuts(
  comments: comments != null ? comments() : this.comments,
  isRegex: isRegex ?? this.isRegex,
  pattern: pattern ?? this.pattern,
  patternType: patternType != null ? patternType() : this.patternType,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchBlockedSendersRequestPuts &&
          comments == other.comments &&
          isRegex == other.isRegex &&
          pattern == other.pattern &&
          patternType == other.patternType &&
          id == other.id; } 
@override int get hashCode { return Object.hash(comments, isRegex, pattern, patternType, id); } 
@override String toString() { return 'EmailSecurityBatchBlockedSendersRequestPuts(comments: $comments, isRegex: $isRegex, pattern: $pattern, patternType: $patternType, id: $id)'; } 
 }
