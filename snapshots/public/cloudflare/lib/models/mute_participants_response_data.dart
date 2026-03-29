// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_session_participant.dart';final class MuteParticipantsResponseData {const MuteParticipantsResponseData({this.action, this.participants, });

factory MuteParticipantsResponseData.fromJson(Map<String, dynamic> json) { return MuteParticipantsResponseData(
  action: json['action'] as String?,
  participants: (json['participants'] as List<dynamic>?)?.map((e) => RealtimekitSessionParticipant.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String? action;

final List<RealtimekitSessionParticipant>? participants;

Map<String, dynamic> toJson() { return {
  'action': ?action,
  if (participants != null) 'participants': participants?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MuteParticipantsResponseData copyWith({String Function()? action, List<RealtimekitSessionParticipant> Function()? participants, }) { return MuteParticipantsResponseData(
  action: action != null ? action() : this.action,
  participants: participants != null ? participants() : this.participants,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MuteParticipantsResponseData &&
          action == other.action &&
          listEquals(participants, other.participants); } 
@override int get hashCode { return Object.hash(action, Object.hashAll(participants ?? const [])); } 
@override String toString() { return 'MuteParticipantsResponseData(action: $action, participants: $participants)'; } 
 }
