// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookTeamEditedChangesDescription {const WebhookTeamEditedChangesDescription({required this.from});

factory WebhookTeamEditedChangesDescription.fromJson(Map<String, dynamic> json) { return WebhookTeamEditedChangesDescription(
  from: json['from'] as String,
); }

/// The previous version of the description if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookTeamEditedChangesDescription copyWith({String? from}) { return WebhookTeamEditedChangesDescription(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookTeamEditedChangesDescription &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookTeamEditedChangesDescription(from: $from)'; } 
 }
