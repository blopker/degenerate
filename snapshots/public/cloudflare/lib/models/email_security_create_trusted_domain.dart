// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityCreateTrustedDomain {const EmailSecurityCreateTrustedDomain({this.comments, required this.isRecent, required this.isRegex, required this.isSimilarity, required this.pattern, });

factory EmailSecurityCreateTrustedDomain.fromJson(Map<String, dynamic> json) { return EmailSecurityCreateTrustedDomain(
  comments: json['comments'] as String?,
  isRecent: json['is_recent'] as bool,
  isRegex: json['is_regex'] as bool,
  isSimilarity: json['is_similarity'] as bool,
  pattern: json['pattern'] as String,
); }

final String? comments;

/// Select to prevent recently registered domains from triggering a
/// Suspicious or Malicious disposition.
final bool isRecent;

final bool isRegex;

/// Select for partner or other approved domains that have similar
/// spelling to your connected domains. Prevents listed domains from
/// triggering a Spoof disposition.
final bool isSimilarity;

final String pattern;

Map<String, dynamic> toJson() { return {
  'comments': ?comments,
  'is_recent': isRecent,
  'is_regex': isRegex,
  'is_similarity': isSimilarity,
  'pattern': pattern,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('is_recent') && json['is_recent'] is bool &&
      json.containsKey('is_regex') && json['is_regex'] is bool &&
      json.containsKey('is_similarity') && json['is_similarity'] is bool &&
      json.containsKey('pattern') && json['pattern'] is String; } 
EmailSecurityCreateTrustedDomain copyWith({String? Function()? comments, bool? isRecent, bool? isRegex, bool? isSimilarity, String? pattern, }) { return EmailSecurityCreateTrustedDomain(
  comments: comments != null ? comments() : this.comments,
  isRecent: isRecent ?? this.isRecent,
  isRegex: isRegex ?? this.isRegex,
  isSimilarity: isSimilarity ?? this.isSimilarity,
  pattern: pattern ?? this.pattern,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityCreateTrustedDomain &&
          comments == other.comments &&
          isRecent == other.isRecent &&
          isRegex == other.isRegex &&
          isSimilarity == other.isSimilarity &&
          pattern == other.pattern; } 
@override int get hashCode { return Object.hash(comments, isRecent, isRegex, isSimilarity, pattern); } 
@override String toString() { return 'EmailSecurityCreateTrustedDomain(comments: $comments, isRecent: $isRecent, isRegex: $isRegex, isSimilarity: $isSimilarity, pattern: $pattern)'; } 
 }
