// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookTeamEditedChangesName {const WebhookTeamEditedChangesName({required this.from});

factory WebhookTeamEditedChangesName.fromJson(Map<String, dynamic> json) { return WebhookTeamEditedChangesName(
  from: json['from'] as String,
); }

/// The previous version of the name if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookTeamEditedChangesName copyWith({String? from}) { return WebhookTeamEditedChangesName(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookTeamEditedChangesName &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookTeamEditedChangesName(from: $from)'; } 
 }
