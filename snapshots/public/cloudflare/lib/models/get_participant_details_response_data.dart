// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_participant_details_response_data_participant.dart';@immutable final class GetParticipantDetailsResponseData {const GetParticipantDetailsResponseData({this.participant});

factory GetParticipantDetailsResponseData.fromJson(Map<String, dynamic> json) { return GetParticipantDetailsResponseData(
  participant: json['participant'] != null ? GetParticipantDetailsResponseDataParticipant.fromJson(json['participant'] as Map<String, dynamic>) : null,
); }

final GetParticipantDetailsResponseDataParticipant? participant;

Map<String, dynamic> toJson() { return {
  if (participant != null) 'participant': participant?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'participant'}.contains(key)); } 
GetParticipantDetailsResponseData copyWith({GetParticipantDetailsResponseDataParticipant Function()? participant}) { return GetParticipantDetailsResponseData(
  participant: participant != null ? participant() : this.participant,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDetailsResponseData &&
          participant == other.participant; } 
@override int get hashCode { return participant.hashCode; } 
@override String toString() { return 'GetParticipantDetailsResponseData(participant: $participant)'; } 
 }
