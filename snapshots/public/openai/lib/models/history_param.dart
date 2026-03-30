// GENERATED CODE - DO NOT MODIFY BY HAND

/// Controls how much historical context is retained for the session.
final class HistoryParam {const HistoryParam({this.enabled, this.recentThreads, });

factory HistoryParam.fromJson(Map<String, dynamic> json) { return HistoryParam(
  enabled: json['enabled'] as bool?,
  recentThreads: json['recent_threads'] != null ? (json['recent_threads'] as num).toInt() : null,
); }

/// Enables chat users to access previous ChatKit threads. Defaults to true.
final bool? enabled;

/// Number of recent ChatKit threads users have access to. Defaults to unlimited when unset.
final int? recentThreads;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  'recent_threads': ?recentThreads,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'recent_threads'}.contains(key)); } 
HistoryParam copyWith({bool Function()? enabled, int Function()? recentThreads, }) { return HistoryParam(
  enabled: enabled != null ? enabled() : this.enabled,
  recentThreads: recentThreads != null ? recentThreads() : this.recentThreads,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HistoryParam &&
          enabled == other.enabled &&
          recentThreads == other.recentThreads; } 
@override int get hashCode { return Object.hash(enabled, recentThreads); } 
@override String toString() { return 'HistoryParam(enabled: $enabled, recentThreads: $recentThreads)'; } 
 }
