// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_participants_list.dart';@immutable final class GetSessionParticipantsResponseData {const GetSessionParticipantsResponseData({this.participants});

factory GetSessionParticipantsResponseData.fromJson(Map<String, dynamic> json) { return GetSessionParticipantsResponseData(
  participants: (json['participants'] as List<dynamic>?)?.map((e) => RealtimekitParticipantsList.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RealtimekitParticipantsList>? participants;

Map<String, dynamic> toJson() { return {
  if (participants != null) 'participants': participants?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'participants'}.contains(key)); } 
GetSessionParticipantsResponseData copyWith({List<RealtimekitParticipantsList> Function()? participants}) { return GetSessionParticipantsResponseData(
  participants: participants != null ? participants() : this.participants,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSessionParticipantsResponseData &&
          listEquals(participants, other.participants); } 
@override int get hashCode { return Object.hashAll(participants ?? const []).hashCode; } 
@override String toString() { return 'GetSessionParticipantsResponseData(participants: $participants)'; } 
 }
