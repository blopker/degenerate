// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_pattern_type.dart';@immutable final class EmailSecurityUpdateAllowPolicy {const EmailSecurityUpdateAllowPolicy({this.comments = const Omittable.absent(), this.isAcceptableSender = const Omittable.absent(), this.isExemptRecipient = const Omittable.absent(), this.isRegex = const Omittable.absent(), this.isTrustedSender = const Omittable.absent(), this.pattern = const Omittable.absent(), this.patternType = const Omittable.absent(), this.verifySender = const Omittable.absent(), });

factory EmailSecurityUpdateAllowPolicy.fromJson(Map<String, dynamic> json) { return EmailSecurityUpdateAllowPolicy(
  comments: json.containsKey('comments') ? Omittable(json['comments'] as String?) : const Omittable.absent(),
  isAcceptableSender: json.containsKey('is_acceptable_sender') ? Omittable(json['is_acceptable_sender'] as bool?) : const Omittable.absent(),
  isExemptRecipient: json.containsKey('is_exempt_recipient') ? Omittable(json['is_exempt_recipient'] as bool?) : const Omittable.absent(),
  isRegex: json.containsKey('is_regex') ? Omittable(json['is_regex'] as bool?) : const Omittable.absent(),
  isTrustedSender: json.containsKey('is_trusted_sender') ? Omittable(json['is_trusted_sender'] as bool?) : const Omittable.absent(),
  pattern: json.containsKey('pattern') ? Omittable(json['pattern'] as String?) : const Omittable.absent(),
  patternType: json.containsKey('pattern_type') ? Omittable(json['pattern_type'] != null ? EmailSecurityPatternType.fromJson(json['pattern_type'] as String) : null) : const Omittable.absent(),
  verifySender: json.containsKey('verify_sender') ? Omittable(json['verify_sender'] as bool?) : const Omittable.absent(),
); }

final Omittable<String?> comments;

/// Messages from this sender will be exempted from Spam, Spoof and Bulk dispositions.
/// Note: This will not exempt messages with Malicious or Suspicious dispositions.
final Omittable<bool?> isAcceptableSender;

/// Messages to this recipient will bypass all detections.
final Omittable<bool?> isExemptRecipient;

final Omittable<bool?> isRegex;

/// Messages from this sender will bypass all detections and link following.
final Omittable<bool?> isTrustedSender;

final Omittable<String?> pattern;

final Omittable<EmailSecurityPatternType?> patternType;

/// Enforce DMARC, SPF or DKIM authentication.
/// When on, Email Security only honors policies that pass authentication.
final Omittable<bool?> verifySender;

Map<String, dynamic> toJson() { return {
  if (comments.isPresent) 'comments': comments.value,
  if (isAcceptableSender.isPresent) 'is_acceptable_sender': isAcceptableSender.value,
  if (isExemptRecipient.isPresent) 'is_exempt_recipient': isExemptRecipient.value,
  if (isRegex.isPresent) 'is_regex': isRegex.value,
  if (isTrustedSender.isPresent) 'is_trusted_sender': isTrustedSender.value,
  if (pattern.isPresent) 'pattern': pattern.value,
  if (patternType.isPresent) 'pattern_type': patternType.value?.toJson(),
  if (verifySender.isPresent) 'verify_sender': verifySender.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comments', 'is_acceptable_sender', 'is_exempt_recipient', 'is_regex', 'is_trusted_sender', 'pattern', 'pattern_type', 'verify_sender'}.contains(key)); } 
EmailSecurityUpdateAllowPolicy copyWith({Omittable<String?>? comments, Omittable<bool?>? isAcceptableSender, Omittable<bool?>? isExemptRecipient, Omittable<bool?>? isRegex, Omittable<bool?>? isTrustedSender, Omittable<String?>? pattern, Omittable<EmailSecurityPatternType?>? patternType, Omittable<bool?>? verifySender, }) { return EmailSecurityUpdateAllowPolicy(
  comments: comments ?? this.comments,
  isAcceptableSender: isAcceptableSender ?? this.isAcceptableSender,
  isExemptRecipient: isExemptRecipient ?? this.isExemptRecipient,
  isRegex: isRegex ?? this.isRegex,
  isTrustedSender: isTrustedSender ?? this.isTrustedSender,
  pattern: pattern ?? this.pattern,
  patternType: patternType ?? this.patternType,
  verifySender: verifySender ?? this.verifySender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityUpdateAllowPolicy &&
          comments == other.comments &&
          isAcceptableSender == other.isAcceptableSender &&
          isExemptRecipient == other.isExemptRecipient &&
          isRegex == other.isRegex &&
          isTrustedSender == other.isTrustedSender &&
          pattern == other.pattern &&
          patternType == other.patternType &&
          verifySender == other.verifySender; } 
@override int get hashCode { return Object.hash(comments, isAcceptableSender, isExemptRecipient, isRegex, isTrustedSender, pattern, patternType, verifySender); } 
@override String toString() { return 'EmailSecurityUpdateAllowPolicy(comments: $comments, isAcceptableSender: $isAcceptableSender, isExemptRecipient: $isExemptRecipient, isRegex: $isRegex, isTrustedSender: $isTrustedSender, pattern: $pattern, patternType: $patternType, verifySender: $verifySender)'; } 
 }
