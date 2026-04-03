// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_batch_trusted_domains_response_result_deletes.dart';import 'email_security_trusted_domain.dart';@immutable final class EmailSecurityBatchTrustedDomainsResponseResult {const EmailSecurityBatchTrustedDomainsResponseResult({required this.deletes, required this.patches, required this.posts, required this.puts, });

factory EmailSecurityBatchTrustedDomainsResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchTrustedDomainsResponseResult(
  deletes: (json['deletes'] as List<dynamic>).map((e) => EmailSecurityBatchTrustedDomainsResponseResultDeletes.fromJson(e as Map<String, dynamic>)).toList(),
  patches: (json['patches'] as List<dynamic>).map((e) => EmailSecurityTrustedDomain.fromJson(e as Map<String, dynamic>)).toList(),
  posts: (json['posts'] as List<dynamic>).map((e) => EmailSecurityTrustedDomain.fromJson(e as Map<String, dynamic>)).toList(),
  puts: (json['puts'] as List<dynamic>).map((e) => EmailSecurityTrustedDomain.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailSecurityBatchTrustedDomainsResponseResultDeletes> deletes;

final List<EmailSecurityTrustedDomain> patches;

final List<EmailSecurityTrustedDomain> posts;

final List<EmailSecurityTrustedDomain> puts;

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
EmailSecurityBatchTrustedDomainsResponseResult copyWith({List<EmailSecurityBatchTrustedDomainsResponseResultDeletes>? deletes, List<EmailSecurityTrustedDomain>? patches, List<EmailSecurityTrustedDomain>? posts, List<EmailSecurityTrustedDomain>? puts, }) { return EmailSecurityBatchTrustedDomainsResponseResult(
  deletes: deletes ?? this.deletes,
  patches: patches ?? this.patches,
  posts: posts ?? this.posts,
  puts: puts ?? this.puts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchTrustedDomainsResponseResult &&
          listEquals(deletes, other.deletes) &&
          listEquals(patches, other.patches) &&
          listEquals(posts, other.posts) &&
          listEquals(puts, other.puts); } 
@override int get hashCode { return Object.hash(Object.hashAll(deletes), Object.hashAll(patches), Object.hashAll(posts), Object.hashAll(puts)); } 
@override String toString() { return 'EmailSecurityBatchTrustedDomainsResponseResult(deletes: $deletes, patches: $patches, posts: $posts, puts: $puts)'; } 
 }
