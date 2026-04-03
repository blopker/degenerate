// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimekitPresetPermissionsConnectedMeetings {const RealtimekitPresetPermissionsConnectedMeetings({required this.canAlterConnectedMeetings, required this.canSwitchConnectedMeetings, required this.canSwitchToParentMeeting, });

factory RealtimekitPresetPermissionsConnectedMeetings.fromJson(Map<String, dynamic> json) { return RealtimekitPresetPermissionsConnectedMeetings(
  canAlterConnectedMeetings: json['can_alter_connected_meetings'] as bool,
  canSwitchConnectedMeetings: json['can_switch_connected_meetings'] as bool,
  canSwitchToParentMeeting: json['can_switch_to_parent_meeting'] as bool,
); }

final bool canAlterConnectedMeetings;

final bool canSwitchConnectedMeetings;

final bool canSwitchToParentMeeting;

Map<String, dynamic> toJson() { return {
  'can_alter_connected_meetings': canAlterConnectedMeetings,
  'can_switch_connected_meetings': canSwitchConnectedMeetings,
  'can_switch_to_parent_meeting': canSwitchToParentMeeting,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_alter_connected_meetings') && json['can_alter_connected_meetings'] is bool &&
      json.containsKey('can_switch_connected_meetings') && json['can_switch_connected_meetings'] is bool &&
      json.containsKey('can_switch_to_parent_meeting') && json['can_switch_to_parent_meeting'] is bool; } 
RealtimekitPresetPermissionsConnectedMeetings copyWith({bool? canAlterConnectedMeetings, bool? canSwitchConnectedMeetings, bool? canSwitchToParentMeeting, }) { return RealtimekitPresetPermissionsConnectedMeetings(
  canAlterConnectedMeetings: canAlterConnectedMeetings ?? this.canAlterConnectedMeetings,
  canSwitchConnectedMeetings: canSwitchConnectedMeetings ?? this.canSwitchConnectedMeetings,
  canSwitchToParentMeeting: canSwitchToParentMeeting ?? this.canSwitchToParentMeeting,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPresetPermissionsConnectedMeetings &&
          canAlterConnectedMeetings == other.canAlterConnectedMeetings &&
          canSwitchConnectedMeetings == other.canSwitchConnectedMeetings &&
          canSwitchToParentMeeting == other.canSwitchToParentMeeting; } 
@override int get hashCode { return Object.hash(canAlterConnectedMeetings, canSwitchConnectedMeetings, canSwitchToParentMeeting); } 
@override String toString() { return 'RealtimekitPresetPermissionsConnectedMeetings(canAlterConnectedMeetings: $canAlterConnectedMeetings, canSwitchConnectedMeetings: $canSwitchConnectedMeetings, canSwitchToParentMeeting: $canSwitchToParentMeeting)'; } 
 }
