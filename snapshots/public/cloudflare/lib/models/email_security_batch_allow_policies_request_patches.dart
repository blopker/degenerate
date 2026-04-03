// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_allow_policy_id.dart';import 'email_security_pattern_type.dart';@immutable final class EmailSecurityBatchAllowPoliciesRequestPatches {const EmailSecurityBatchAllowPoliciesRequestPatches({required this.id, this.comments, this.isAcceptableSender, this.isExemptRecipient, this.isRegex, this.isTrustedSender, this.pattern, this.patternType, this.verifySender, });

factory EmailSecurityBatchAllowPoliciesRequestPatches.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchAllowPoliciesRequestPatches(
  comments: json['comments'] as String?,
  isAcceptableSender: json['is_acceptable_sender'] as bool?,
  isExemptRecipient: json['is_exempt_recipient'] as bool?,
  isRegex: json['is_regex'] as bool?,
  isTrustedSender: json['is_trusted_sender'] as bool?,
  pattern: json['pattern'] as String?,
  patternType: json['pattern_type'] != null ? EmailSecurityPatternType.fromJson(json['pattern_type'] as String) : null,
  verifySender: json['verify_sender'] as bool?,
  id: EmailSecurityAllowPolicyId.fromJson(json['id'] as num),
); }

final String? comments;

/// Messages from this sender will be exempted from Spam, Spoof and Bulk dispositions.
/// Note: This will not exempt messages with Malicious or Suspicious dispositions.
final bool? isAcceptableSender;

/// Messages to this recipient will bypass all detections.
final bool? isExemptRecipient;

final bool? isRegex;

/// Messages from this sender will bypass all detections and link following.
final bool? isTrustedSender;

final String? pattern;

final EmailSecurityPatternType? patternType;

/// Enforce DMARC, SPF or DKIM authentication.
/// When on, Email Security only honors policies that pass authentication.
final bool? verifySender;

/// The unique identifier for the allow policy.
final EmailSecurityAllowPolicyId id;

Map<String, dynamic> toJson() { return {
  'comments': ?comments,
  'is_acceptable_sender': ?isAcceptableSender,
  'is_exempt_recipient': ?isExemptRecipient,
  'is_regex': ?isRegex,
  'is_trusted_sender': ?isTrustedSender,
  'pattern': ?pattern,
  if (patternType != null) 'pattern_type': patternType?.toJson(),
  'verify_sender': ?verifySender,
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
EmailSecurityBatchAllowPoliciesRequestPatches copyWith({String? Function()? comments, bool? Function()? isAcceptableSender, bool? Function()? isExemptRecipient, bool? Function()? isRegex, bool? Function()? isTrustedSender, String? Function()? pattern, EmailSecurityPatternType? Function()? patternType, bool? Function()? verifySender, EmailSecurityAllowPolicyId? id, }) { return EmailSecurityBatchAllowPoliciesRequestPatches(
  comments: comments != null ? comments() : this.comments,
  isAcceptableSender: isAcceptableSender != null ? isAcceptableSender() : this.isAcceptableSender,
  isExemptRecipient: isExemptRecipient != null ? isExemptRecipient() : this.isExemptRecipient,
  isRegex: isRegex != null ? isRegex() : this.isRegex,
  isTrustedSender: isTrustedSender != null ? isTrustedSender() : this.isTrustedSender,
  pattern: pattern != null ? pattern() : this.pattern,
  patternType: patternType != null ? patternType() : this.patternType,
  verifySender: verifySender != null ? verifySender() : this.verifySender,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchAllowPoliciesRequestPatches &&
          comments == other.comments &&
          isAcceptableSender == other.isAcceptableSender &&
          isExemptRecipient == other.isExemptRecipient &&
          isRegex == other.isRegex &&
          isTrustedSender == other.isTrustedSender &&
          pattern == other.pattern &&
          patternType == other.patternType &&
          verifySender == other.verifySender &&
          id == other.id; } 
@override int get hashCode { return Object.hash(comments, isAcceptableSender, isExemptRecipient, isRegex, isTrustedSender, pattern, patternType, verifySender, id); } 
@override String toString() { return 'EmailSecurityBatchAllowPoliciesRequestPatches(comments: $comments, isAcceptableSender: $isAcceptableSender, isExemptRecipient: $isExemptRecipient, isRegex: $isRegex, isTrustedSender: $isTrustedSender, pattern: $pattern, patternType: $patternType, verifySender: $verifySender, id: $id)'; } 
 }
