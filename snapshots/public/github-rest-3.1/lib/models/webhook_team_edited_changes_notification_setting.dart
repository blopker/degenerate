// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookTeamEditedChangesNotificationSetting {const WebhookTeamEditedChangesNotificationSetting({required this.from});

factory WebhookTeamEditedChangesNotificationSetting.fromJson(Map<String, dynamic> json) { return WebhookTeamEditedChangesNotificationSetting(
  from: json['from'] as String,
); }

/// The previous version of the team's notification setting if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookTeamEditedChangesNotificationSetting copyWith({String? from}) { return WebhookTeamEditedChangesNotificationSetting(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookTeamEditedChangesNotificationSetting &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookTeamEditedChangesNotificationSetting(from: $from)'; } 
 }
