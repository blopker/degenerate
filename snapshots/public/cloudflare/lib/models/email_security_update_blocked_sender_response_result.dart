// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_blocked_sender_id.dart';import 'email_security_pattern_type.dart';@immutable final class EmailSecurityUpdateBlockedSenderResponseResult {const EmailSecurityUpdateBlockedSenderResponseResult({required this.isRegex, required this.pattern, required this.patternType, required this.createdAt, required this.id, required this.lastModified, this.comments, });

factory EmailSecurityUpdateBlockedSenderResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityUpdateBlockedSenderResponseResult(
  comments: json['comments'] as String?,
  isRegex: json['is_regex'] as bool,
  pattern: json['pattern'] as String,
  patternType: json['pattern_type'] != null ? EmailSecurityPatternType.fromJson(json['pattern_type'] as String) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  id: EmailSecurityBlockedSenderId.fromJson(json['id'] as num),
  lastModified: DateTime.parse(json['last_modified'] as String),
); }

final String? comments;

final bool isRegex;

final String pattern;

final EmailSecurityPatternType? patternType;

final DateTime createdAt;

/// The unique identifier for the allow policy.
final EmailSecurityBlockedSenderId id;

final DateTime lastModified;

Map<String, dynamic> toJson() { return {
  'comments': ?comments,
  'is_regex': isRegex,
  'pattern': pattern,
  if (patternType != null) 'pattern_type': patternType?.toJson(),
  'created_at': createdAt.toIso8601String(),
  'id': id.toJson(),
  'last_modified': lastModified.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('is_regex') && json['is_regex'] is bool &&
      json.containsKey('pattern') && json['pattern'] is String &&
      json.containsKey('pattern_type') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') &&
      json.containsKey('last_modified') && json['last_modified'] is String; } 
EmailSecurityUpdateBlockedSenderResponseResult copyWith({String? Function()? comments, bool? isRegex, String? pattern, EmailSecurityPatternType? Function()? patternType, DateTime? createdAt, EmailSecurityBlockedSenderId? id, DateTime? lastModified, }) { return EmailSecurityUpdateBlockedSenderResponseResult(
  comments: comments != null ? comments() : this.comments,
  isRegex: isRegex ?? this.isRegex,
  pattern: pattern ?? this.pattern,
  patternType: patternType != null ? patternType() : this.patternType,
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  lastModified: lastModified ?? this.lastModified,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityUpdateBlockedSenderResponseResult &&
          comments == other.comments &&
          isRegex == other.isRegex &&
          pattern == other.pattern &&
          patternType == other.patternType &&
          createdAt == other.createdAt &&
          id == other.id &&
          lastModified == other.lastModified; } 
@override int get hashCode { return Object.hash(comments, isRegex, pattern, patternType, createdAt, id, lastModified); } 
@override String toString() { return 'EmailSecurityUpdateBlockedSenderResponseResult(comments: $comments, isRegex: $isRegex, pattern: $pattern, patternType: $patternType, createdAt: $createdAt, id: $id, lastModified: $lastModified)'; } 
 }
