// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_allow_policy.dart';import 'email_security_batch_allow_policies_response_result_deletes.dart';final class EmailSecurityBatchAllowPoliciesResponseResult {const EmailSecurityBatchAllowPoliciesResponseResult({required this.deletes, required this.patches, required this.posts, required this.puts, });

factory EmailSecurityBatchAllowPoliciesResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchAllowPoliciesResponseResult(
  deletes: (json['deletes'] as List<dynamic>).map((e) => EmailSecurityBatchAllowPoliciesResponseResultDeletes.fromJson(e as Map<String, dynamic>)).toList(),
  patches: (json['patches'] as List<dynamic>).map((e) => EmailSecurityAllowPolicy.fromJson(e as Map<String, dynamic>)).toList(),
  posts: (json['posts'] as List<dynamic>).map((e) => EmailSecurityAllowPolicy.fromJson(e as Map<String, dynamic>)).toList(),
  puts: (json['puts'] as List<dynamic>).map((e) => EmailSecurityAllowPolicy.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailSecurityBatchAllowPoliciesResponseResultDeletes> deletes;

final List<EmailSecurityAllowPolicy> patches;

final List<EmailSecurityAllowPolicy> posts;

final List<EmailSecurityAllowPolicy> puts;

Map<String, dynamic> toJson() { return {
  'deletes': deletes.map((e) => e.toJson()).toList(),
  'patches': patches.map((e) => e.toJson()).toList(),
  'posts': posts.map((e) => e.toJson()).toList(),
  'puts': puts.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deletes') &&
      json.containsKey('patches') &&
      json.containsKey('posts') &&
      json.containsKey('puts'); } 
EmailSecurityBatchAllowPoliciesResponseResult copyWith({List<EmailSecurityBatchAllowPoliciesResponseResultDeletes>? deletes, List<EmailSecurityAllowPolicy>? patches, List<EmailSecurityAllowPolicy>? posts, List<EmailSecurityAllowPolicy>? puts, }) { return EmailSecurityBatchAllowPoliciesResponseResult(
  deletes: deletes ?? this.deletes,
  patches: patches ?? this.patches,
  posts: posts ?? this.posts,
  puts: puts ?? this.puts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchAllowPoliciesResponseResult &&
          listEquals(deletes, other.deletes) &&
          listEquals(patches, other.patches) &&
          listEquals(posts, other.posts) &&
          listEquals(puts, other.puts); } 
@override int get hashCode { return Object.hash(Object.hashAll(deletes), Object.hashAll(patches), Object.hashAll(posts), Object.hashAll(puts)); } 
@override String toString() { return 'EmailSecurityBatchAllowPoliciesResponseResult(deletes: $deletes, patches: $patches, posts: $posts, puts: $puts)'; } 
 }
