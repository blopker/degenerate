// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_trusted_domain_id.dart';@immutable final class EmailSecurityBatchTrustedDomainsRequestPatches {const EmailSecurityBatchTrustedDomainsRequestPatches({required this.id, this.comments, this.isRecent, this.isRegex, this.isSimilarity, this.pattern, });

factory EmailSecurityBatchTrustedDomainsRequestPatches.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchTrustedDomainsRequestPatches(
  comments: json['comments'] as String?,
  isRecent: json['is_recent'] as bool?,
  isRegex: json['is_regex'] as bool?,
  isSimilarity: json['is_similarity'] as bool?,
  pattern: json['pattern'] as String?,
  id: EmailSecurityTrustedDomainId.fromJson(json['id'] as num),
); }

final String? comments;

/// Select to prevent recently registered domains from triggering a
/// Suspicious or Malicious disposition.
final bool? isRecent;

final bool? isRegex;

/// Select for partner or other approved domains that have similar
/// spelling to your connected domains. Prevents listed domains from
/// triggering a Spoof disposition.
final bool? isSimilarity;

final String? pattern;

/// The unique identifier for the trusted domain.
final EmailSecurityTrustedDomainId id;

Map<String, dynamic> toJson() { return {
  'comments': ?comments,
  'is_recent': ?isRecent,
  'is_regex': ?isRegex,
  'is_similarity': ?isSimilarity,
  'pattern': ?pattern,
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
EmailSecurityBatchTrustedDomainsRequestPatches copyWith({String Function()? comments, bool Function()? isRecent, bool Function()? isRegex, bool Function()? isSimilarity, String Function()? pattern, EmailSecurityTrustedDomainId? id, }) { return EmailSecurityBatchTrustedDomainsRequestPatches(
  comments: comments != null ? comments() : this.comments,
  isRecent: isRecent != null ? isRecent() : this.isRecent,
  isRegex: isRegex != null ? isRegex() : this.isRegex,
  isSimilarity: isSimilarity != null ? isSimilarity() : this.isSimilarity,
  pattern: pattern != null ? pattern() : this.pattern,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchTrustedDomainsRequestPatches &&
          comments == other.comments &&
          isRecent == other.isRecent &&
          isRegex == other.isRegex &&
          isSimilarity == other.isSimilarity &&
          pattern == other.pattern &&
          id == other.id; } 
@override int get hashCode { return Object.hash(comments, isRecent, isRegex, isSimilarity, pattern, id); } 
@override String toString() { return 'EmailSecurityBatchTrustedDomainsRequestPatches(comments: $comments, isRecent: $isRecent, isRegex: $isRegex, isSimilarity: $isSimilarity, pattern: $pattern, id: $id)'; } 
 }
