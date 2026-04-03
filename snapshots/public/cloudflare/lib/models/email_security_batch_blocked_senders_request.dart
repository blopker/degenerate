// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_batch_blocked_senders_request_deletes.dart';import 'email_security_batch_blocked_senders_request_patches.dart';import 'email_security_batch_blocked_senders_request_puts.dart';import 'email_security_create_blocked_sender.dart';@immutable final class EmailSecurityBatchBlockedSendersRequest {const EmailSecurityBatchBlockedSendersRequest({required this.deletes, required this.patches, required this.posts, required this.puts, });

factory EmailSecurityBatchBlockedSendersRequest.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchBlockedSendersRequest(
  deletes: (json['deletes'] as List<dynamic>).map((e) => EmailSecurityBatchBlockedSendersRequestDeletes.fromJson(e as Map<String, dynamic>)).toList(),
  patches: (json['patches'] as List<dynamic>).map((e) => EmailSecurityBatchBlockedSendersRequestPatches.fromJson(e as Map<String, dynamic>)).toList(),
  posts: (json['posts'] as List<dynamic>).map((e) => EmailSecurityCreateBlockedSender.fromJson(e as Map<String, dynamic>)).toList(),
  puts: (json['puts'] as List<dynamic>).map((e) => EmailSecurityBatchBlockedSendersRequestPuts.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailSecurityBatchBlockedSendersRequestDeletes> deletes;

final List<EmailSecurityBatchBlockedSendersRequestPatches> patches;

final List<EmailSecurityCreateBlockedSender> posts;

final List<EmailSecurityBatchBlockedSendersRequestPuts> puts;

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
EmailSecurityBatchBlockedSendersRequest copyWith({List<EmailSecurityBatchBlockedSendersRequestDeletes>? deletes, List<EmailSecurityBatchBlockedSendersRequestPatches>? patches, List<EmailSecurityCreateBlockedSender>? posts, List<EmailSecurityBatchBlockedSendersRequestPuts>? puts, }) { return EmailSecurityBatchBlockedSendersRequest(
  deletes: deletes ?? this.deletes,
  patches: patches ?? this.patches,
  posts: posts ?? this.posts,
  puts: puts ?? this.puts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchBlockedSendersRequest &&
          listEquals(deletes, other.deletes) &&
          listEquals(patches, other.patches) &&
          listEquals(posts, other.posts) &&
          listEquals(puts, other.puts); } 
@override int get hashCode { return Object.hash(Object.hashAll(deletes), Object.hashAll(patches), Object.hashAll(posts), Object.hashAll(puts)); } 
@override String toString() { return 'EmailSecurityBatchBlockedSendersRequest(deletes: $deletes, patches: $patches, posts: $posts, puts: $puts)'; } 
 }
