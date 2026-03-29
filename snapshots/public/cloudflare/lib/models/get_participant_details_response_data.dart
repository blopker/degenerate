// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_participants_list.dart';final class GetParticipantDetailsResponseData {const GetParticipantDetailsResponseData({this.participant});

factory GetParticipantDetailsResponseData.fromJson(Map<String, dynamic> json) { return GetParticipantDetailsResponseData(
  participant: json['participant'] != null ? RealtimekitParticipantsList.fromJson(json['participant'] as Map<String, dynamic>) : null,
); }

final RealtimekitParticipantsList? participant;

Map<String, dynamic> toJson() { return {
  if (participant != null) 'participant': participant?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GetParticipantDetailsResponseData copyWith({RealtimekitParticipantsList Function()? participant}) { return GetParticipantDetailsResponseData(
  participant: participant != null ? participant() : this.participant,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDetailsResponseData &&
          participant == other.participant; } 
@override int get hashCode { return participant.hashCode; } 
@override String toString() { return 'GetParticipantDetailsResponseData(participant: $participant)'; } 
 }
