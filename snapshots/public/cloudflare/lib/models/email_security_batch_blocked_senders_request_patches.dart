// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_blocked_sender_id.dart';import 'email_security_pattern_type.dart';@immutable final class EmailSecurityBatchBlockedSendersRequestPatches {const EmailSecurityBatchBlockedSendersRequestPatches({required this.id, this.comments = const Omittable.absent(), this.isRegex = const Omittable.absent(), this.pattern = const Omittable.absent(), this.patternType = const Omittable.absent(), });

factory EmailSecurityBatchBlockedSendersRequestPatches.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchBlockedSendersRequestPatches(
  comments: json.containsKey('comments') ? Omittable(json['comments'] as String?) : const Omittable.absent(),
  isRegex: json.containsKey('is_regex') ? Omittable(json['is_regex'] as bool?) : const Omittable.absent(),
  pattern: json.containsKey('pattern') ? Omittable(json['pattern'] as String?) : const Omittable.absent(),
  patternType: json.containsKey('pattern_type') ? Omittable(json['pattern_type'] != null ? EmailSecurityPatternType.fromJson(json['pattern_type'] as String) : null) : const Omittable.absent(),
  id: EmailSecurityBlockedSenderId.fromJson(json['id'] as num),
); }

final Omittable<String?> comments;

final Omittable<bool?> isRegex;

final Omittable<String?> pattern;

final Omittable<EmailSecurityPatternType?> patternType;

/// The unique identifier for the allow policy.
final EmailSecurityBlockedSenderId id;

Map<String, dynamic> toJson() { return {
  if (comments.isPresent) 'comments': comments.value,
  if (isRegex.isPresent) 'is_regex': isRegex.value,
  if (pattern.isPresent) 'pattern': pattern.value,
  if (patternType.isPresent) 'pattern_type': patternType.value?.toJson(),
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
EmailSecurityBatchBlockedSendersRequestPatches copyWith({Omittable<String?>? comments, Omittable<bool?>? isRegex, Omittable<String?>? pattern, Omittable<EmailSecurityPatternType?>? patternType, EmailSecurityBlockedSenderId? id, }) { return EmailSecurityBatchBlockedSendersRequestPatches(
  comments: comments ?? this.comments,
  isRegex: isRegex ?? this.isRegex,
  pattern: pattern ?? this.pattern,
  patternType: patternType ?? this.patternType,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchBlockedSendersRequestPatches &&
          comments == other.comments &&
          isRegex == other.isRegex &&
          pattern == other.pattern &&
          patternType == other.patternType &&
          id == other.id; } 
@override int get hashCode { return Object.hash(comments, isRegex, pattern, patternType, id); } 
@override String toString() { return 'EmailSecurityBatchBlockedSendersRequestPatches(comments: $comments, isRegex: $isRegex, pattern: $pattern, patternType: $patternType, id: $id)'; } 
 }
