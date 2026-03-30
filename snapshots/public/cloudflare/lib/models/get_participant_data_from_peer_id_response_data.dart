// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_participant_data_from_peer_id_response_data_participant.dart';final class GetParticipantDataFromPeerIdResponseData {const GetParticipantDataFromPeerIdResponseData({this.participant});

factory GetParticipantDataFromPeerIdResponseData.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseData(
  participant: json['participant'] != null ? GetParticipantDataFromPeerIdResponseDataParticipant.fromJson(json['participant'] as Map<String, dynamic>) : null,
); }

final GetParticipantDataFromPeerIdResponseDataParticipant? participant;

Map<String, dynamic> toJson() { return {
  if (participant != null) 'participant': participant?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'participant'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseData copyWith({GetParticipantDataFromPeerIdResponseDataParticipant Function()? participant}) { return GetParticipantDataFromPeerIdResponseData(
  participant: participant != null ? participant() : this.participant,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseData &&
          participant == other.participant; } 
@override int get hashCode { return participant.hashCode; } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseData(participant: $participant)'; } 
 }
