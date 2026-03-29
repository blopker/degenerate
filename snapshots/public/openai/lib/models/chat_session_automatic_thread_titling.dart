// GENERATED CODE - DO NOT MODIFY BY HAND

/// Automatic thread title preferences for the session.
final class ChatSessionAutomaticThreadTitling {const ChatSessionAutomaticThreadTitling({required this.enabled});

factory ChatSessionAutomaticThreadTitling.fromJson(Map<String, dynamic> json) { return ChatSessionAutomaticThreadTitling(
  enabled: json['enabled'] as bool,
); }

/// Whether automatic thread titling is enabled.
final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
ChatSessionAutomaticThreadTitling copyWith({bool? enabled}) { return ChatSessionAutomaticThreadTitling(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatSessionAutomaticThreadTitling &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ChatSessionAutomaticThreadTitling(enabled: $enabled)'; } 
 }
