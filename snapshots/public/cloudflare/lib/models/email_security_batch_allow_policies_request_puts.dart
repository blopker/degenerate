// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_allow_policy_id.dart';import 'email_security_pattern_type.dart';@immutable final class EmailSecurityBatchAllowPoliciesRequestPuts {const EmailSecurityBatchAllowPoliciesRequestPuts({required this.isAcceptableSender, required this.isExemptRecipient, required this.isRegex, required this.isTrustedSender, required this.pattern, required this.patternType, required this.verifySender, required this.id, this.comments, this.isRecipient, this.isSender, this.isSpoof, });

factory EmailSecurityBatchAllowPoliciesRequestPuts.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchAllowPoliciesRequestPuts(
  comments: json['comments'] as String?,
  isAcceptableSender: json['is_acceptable_sender'] as bool,
  isExemptRecipient: json['is_exempt_recipient'] as bool,
  isRecipient: json['is_recipient'] as bool?,
  isRegex: json['is_regex'] as bool,
  isSender: json['is_sender'] as bool?,
  isSpoof: json['is_spoof'] as bool?,
  isTrustedSender: json['is_trusted_sender'] as bool,
  pattern: json['pattern'] as String,
  patternType: json['pattern_type'] != null ? EmailSecurityPatternType.fromJson(json['pattern_type'] as String) : null,
  verifySender: json['verify_sender'] as bool,
  id: EmailSecurityAllowPolicyId.fromJson(json['id'] as num),
); }

final String? comments;

/// Messages from this sender will be exempted from Spam, Spoof and Bulk dispositions.
/// Note: This will not exempt messages with Malicious or Suspicious dispositions.
final bool isAcceptableSender;

/// Messages to this recipient will bypass all detections.
final bool isExemptRecipient;

final bool? isRecipient;

final bool isRegex;

final bool? isSender;

final bool? isSpoof;

/// Messages from this sender will bypass all detections and link following.
final bool isTrustedSender;

final String pattern;

final EmailSecurityPatternType? patternType;

/// Enforce DMARC, SPF or DKIM authentication.
/// When on, Email Security only honors policies that pass authentication.
final bool verifySender;

/// The unique identifier for the allow policy.
final EmailSecurityAllowPolicyId id;

Map<String, dynamic> toJson() { return {
  'comments': ?comments,
  'is_acceptable_sender': isAcceptableSender,
  'is_exempt_recipient': isExemptRecipient,
  'is_recipient': ?isRecipient,
  'is_regex': isRegex,
  'is_sender': ?isSender,
  'is_spoof': ?isSpoof,
  'is_trusted_sender': isTrustedSender,
  'pattern': pattern,
  if (patternType != null) 'pattern_type': patternType?.toJson(),
  'verify_sender': verifySender,
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('is_acceptable_sender') && json['is_acceptable_sender'] is bool &&
      json.containsKey('is_exempt_recipient') && json['is_exempt_recipient'] is bool &&
      json.containsKey('is_regex') && json['is_regex'] is bool &&
      json.containsKey('is_trusted_sender') && json['is_trusted_sender'] is bool &&
      json.containsKey('pattern') && json['pattern'] is String &&
      json.containsKey('pattern_type') &&
      json.containsKey('verify_sender') && json['verify_sender'] is bool &&
      json.containsKey('id'); } 
EmailSecurityBatchAllowPoliciesRequestPuts copyWith({String? Function()? comments, bool? isAcceptableSender, bool? isExemptRecipient, bool Function()? isRecipient, bool? isRegex, bool Function()? isSender, bool Function()? isSpoof, bool? isTrustedSender, String? pattern, EmailSecurityPatternType? Function()? patternType, bool? verifySender, EmailSecurityAllowPolicyId? id, }) { return EmailSecurityBatchAllowPoliciesRequestPuts(
  comments: comments != null ? comments() : this.comments,
  isAcceptableSender: isAcceptableSender ?? this.isAcceptableSender,
  isExemptRecipient: isExemptRecipient ?? this.isExemptRecipient,
  isRecipient: isRecipient != null ? isRecipient() : this.isRecipient,
  isRegex: isRegex ?? this.isRegex,
  isSender: isSender != null ? isSender() : this.isSender,
  isSpoof: isSpoof != null ? isSpoof() : this.isSpoof,
  isTrustedSender: isTrustedSender ?? this.isTrustedSender,
  pattern: pattern ?? this.pattern,
  patternType: patternType != null ? patternType() : this.patternType,
  verifySender: verifySender ?? this.verifySender,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchAllowPoliciesRequestPuts &&
          comments == other.comments &&
          isAcceptableSender == other.isAcceptableSender &&
          isExemptRecipient == other.isExemptRecipient &&
          isRecipient == other.isRecipient &&
          isRegex == other.isRegex &&
          isSender == other.isSender &&
          isSpoof == other.isSpoof &&
          isTrustedSender == other.isTrustedSender &&
          pattern == other.pattern &&
          patternType == other.patternType &&
          verifySender == other.verifySender &&
          id == other.id; } 
@override int get hashCode { return Object.hash(comments, isAcceptableSender, isExemptRecipient, isRecipient, isRegex, isSender, isSpoof, isTrustedSender, pattern, patternType, verifySender, id); } 
@override String toString() { return 'EmailSecurityBatchAllowPoliciesRequestPuts(comments: $comments, isAcceptableSender: $isAcceptableSender, isExemptRecipient: $isExemptRecipient, isRecipient: $isRecipient, isRegex: $isRegex, isSender: $isSender, isSpoof: $isSpoof, isTrustedSender: $isTrustedSender, pattern: $pattern, patternType: $patternType, verifySender: $verifySender, id: $id)'; } 
 }
