// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityTrustedDomain {const EmailSecurityTrustedDomain({required this.isRecent, required this.isRegex, required this.isSimilarity, required this.pattern, required this.createdAt, required this.id, required this.lastModified, this.comments, });

factory EmailSecurityTrustedDomain.fromJson(Map<String, dynamic> json) { return EmailSecurityTrustedDomain(
  comments: json['comments'] as String?,
  isRecent: json['is_recent'] as bool,
  isRegex: json['is_regex'] as bool,
  isSimilarity: json['is_similarity'] as bool,
  pattern: json['pattern'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  id: (json['id'] as num).toInt(),
  lastModified: DateTime.parse(json['last_modified'] as String),
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

final DateTime createdAt;

/// The unique identifier for the trusted domain.
final int id;

final DateTime lastModified;

Map<String, dynamic> toJson() { return {
  'comments': ?comments,
  'is_recent': isRecent,
  'is_regex': isRegex,
  'is_similarity': isSimilarity,
  'pattern': pattern,
  'created_at': createdAt.toIso8601String(),
  'id': id,
  'last_modified': lastModified.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('is_recent') && json['is_recent'] is bool &&
      json.containsKey('is_regex') && json['is_regex'] is bool &&
      json.containsKey('is_similarity') && json['is_similarity'] is bool &&
      json.containsKey('pattern') && json['pattern'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('last_modified') && json['last_modified'] is String; } 
EmailSecurityTrustedDomain copyWith({String? Function()? comments, bool? isRecent, bool? isRegex, bool? isSimilarity, String? pattern, DateTime? createdAt, int? id, DateTime? lastModified, }) { return EmailSecurityTrustedDomain(
  comments: comments != null ? comments() : this.comments,
  isRecent: isRecent ?? this.isRecent,
  isRegex: isRegex ?? this.isRegex,
  isSimilarity: isSimilarity ?? this.isSimilarity,
  pattern: pattern ?? this.pattern,
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  lastModified: lastModified ?? this.lastModified,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityTrustedDomain &&
          comments == other.comments &&
          isRecent == other.isRecent &&
          isRegex == other.isRegex &&
          isSimilarity == other.isSimilarity &&
          pattern == other.pattern &&
          createdAt == other.createdAt &&
          id == other.id &&
          lastModified == other.lastModified; } 
@override int get hashCode { return Object.hash(comments, isRecent, isRegex, isSimilarity, pattern, createdAt, id, lastModified); } 
@override String toString() { return 'EmailSecurityTrustedDomain(comments: $comments, isRecent: $isRecent, isRegex: $isRegex, isSimilarity: $isSimilarity, pattern: $pattern, createdAt: $createdAt, id: $id, lastModified: $lastModified)'; } 
 }
