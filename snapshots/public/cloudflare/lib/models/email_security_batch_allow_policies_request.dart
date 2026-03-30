// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_batch_allow_policies_request_deletes.dart';import 'email_security_batch_allow_policies_request_patches.dart';import 'email_security_batch_allow_policies_request_puts.dart';import 'email_security_create_allow_policy.dart';final class EmailSecurityBatchAllowPoliciesRequest {const EmailSecurityBatchAllowPoliciesRequest({required this.deletes, required this.patches, required this.posts, required this.puts, });

factory EmailSecurityBatchAllowPoliciesRequest.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchAllowPoliciesRequest(
  deletes: (json['deletes'] as List<dynamic>).map((e) => EmailSecurityBatchAllowPoliciesRequestDeletes.fromJson(e as Map<String, dynamic>)).toList(),
  patches: (json['patches'] as List<dynamic>).map((e) => EmailSecurityBatchAllowPoliciesRequestPatches.fromJson(e as Map<String, dynamic>)).toList(),
  posts: (json['posts'] as List<dynamic>).map((e) => EmailSecurityCreateAllowPolicy.fromJson(e as Map<String, dynamic>)).toList(),
  puts: (json['puts'] as List<dynamic>).map((e) => EmailSecurityBatchAllowPoliciesRequestPuts.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailSecurityBatchAllowPoliciesRequestDeletes> deletes;

final List<EmailSecurityBatchAllowPoliciesRequestPatches> patches;

final List<EmailSecurityCreateAllowPolicy> posts;

final List<EmailSecurityBatchAllowPoliciesRequestPuts> puts;

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
EmailSecurityBatchAllowPoliciesRequest copyWith({List<EmailSecurityBatchAllowPoliciesRequestDeletes>? deletes, List<EmailSecurityBatchAllowPoliciesRequestPatches>? patches, List<EmailSecurityCreateAllowPolicy>? posts, List<EmailSecurityBatchAllowPoliciesRequestPuts>? puts, }) { return EmailSecurityBatchAllowPoliciesRequest(
  deletes: deletes ?? this.deletes,
  patches: patches ?? this.patches,
  posts: posts ?? this.posts,
  puts: puts ?? this.puts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchAllowPoliciesRequest &&
          listEquals(deletes, other.deletes) &&
          listEquals(patches, other.patches) &&
          listEquals(posts, other.posts) &&
          listEquals(puts, other.puts); } 
@override int get hashCode { return Object.hash(Object.hashAll(deletes), Object.hashAll(patches), Object.hashAll(posts), Object.hashAll(puts)); } 
@override String toString() { return 'EmailSecurityBatchAllowPoliciesRequest(deletes: $deletes, patches: $patches, posts: $posts, puts: $puts)'; } 
 }
