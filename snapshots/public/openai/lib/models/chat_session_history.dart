// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// History retention preferences returned for the session.
@immutable final class ChatSessionHistory {const ChatSessionHistory({required this.enabled, required this.recentThreads, });

factory ChatSessionHistory.fromJson(Map<String, dynamic> json) { return ChatSessionHistory(
  enabled: json['enabled'] as bool,
  recentThreads: json['recent_threads'] != null ? (json['recent_threads'] as num).toInt() : null,
); }

/// Indicates if chat history is persisted for the session.
final bool enabled;

/// Number of prior threads surfaced in history views. Defaults to null when all history is retained.
final int? recentThreads;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'recent_threads': ?recentThreads,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('recent_threads') && json['recent_threads'] is num; } 
ChatSessionHistory copyWith({bool? enabled, int? Function()? recentThreads, }) { return ChatSessionHistory(
  enabled: enabled ?? this.enabled,
  recentThreads: recentThreads != null ? recentThreads() : this.recentThreads,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatSessionHistory &&
          enabled == other.enabled &&
          recentThreads == other.recentThreads; } 
@override int get hashCode { return Object.hash(enabled, recentThreads); } 
@override String toString() { return 'ChatSessionHistory(enabled: $enabled, recentThreads: $recentThreads)'; } 
 }
