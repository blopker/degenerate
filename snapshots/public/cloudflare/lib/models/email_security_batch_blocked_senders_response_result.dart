// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_batch_blocked_senders_response_result_deletes.dart';import 'email_security_blocked_sender.dart';@immutable final class EmailSecurityBatchBlockedSendersResponseResult {const EmailSecurityBatchBlockedSendersResponseResult({required this.deletes, required this.patches, required this.posts, required this.puts, });

factory EmailSecurityBatchBlockedSendersResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchBlockedSendersResponseResult(
  deletes: (json['deletes'] as List<dynamic>).map((e) => EmailSecurityBatchBlockedSendersResponseResultDeletes.fromJson(e as Map<String, dynamic>)).toList(),
  patches: (json['patches'] as List<dynamic>).map((e) => EmailSecurityBlockedSender.fromJson(e as Map<String, dynamic>)).toList(),
  posts: (json['posts'] as List<dynamic>).map((e) => EmailSecurityBlockedSender.fromJson(e as Map<String, dynamic>)).toList(),
  puts: (json['puts'] as List<dynamic>).map((e) => EmailSecurityBlockedSender.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailSecurityBatchBlockedSendersResponseResultDeletes> deletes;

final List<EmailSecurityBlockedSender> patches;

final List<EmailSecurityBlockedSender> posts;

final List<EmailSecurityBlockedSender> puts;

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
EmailSecurityBatchBlockedSendersResponseResult copyWith({List<EmailSecurityBatchBlockedSendersResponseResultDeletes>? deletes, List<EmailSecurityBlockedSender>? patches, List<EmailSecurityBlockedSender>? posts, List<EmailSecurityBlockedSender>? puts, }) { return EmailSecurityBatchBlockedSendersResponseResult(
  deletes: deletes ?? this.deletes,
  patches: patches ?? this.patches,
  posts: posts ?? this.posts,
  puts: puts ?? this.puts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchBlockedSendersResponseResult &&
          listEquals(deletes, other.deletes) &&
          listEquals(patches, other.patches) &&
          listEquals(posts, other.posts) &&
          listEquals(puts, other.puts); } 
@override int get hashCode { return Object.hash(Object.hashAll(deletes), Object.hashAll(patches), Object.hashAll(posts), Object.hashAll(puts)); } 
@override String toString() { return 'EmailSecurityBatchBlockedSendersResponseResult(deletes: $deletes, patches: $patches, posts: $posts, puts: $puts)'; } 
 }
