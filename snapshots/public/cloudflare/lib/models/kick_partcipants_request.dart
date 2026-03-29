// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class KickPartcipantsRequest {const KickPartcipantsRequest({required this.customParticipantIds, required this.participantIds, });

factory KickPartcipantsRequest.fromJson(Map<String, dynamic> json) { return KickPartcipantsRequest(
  customParticipantIds: (json['custom_participant_ids'] as List<dynamic>).map((e) => e as String).toList(),
  participantIds: (json['participant_ids'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> customParticipantIds;

final List<String> participantIds;

Map<String, dynamic> toJson() { return {
  'custom_participant_ids': customParticipantIds,
  'participant_ids': participantIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('custom_participant_ids') &&
      json.containsKey('participant_ids'); } 
KickPartcipantsRequest copyWith({List<String>? customParticipantIds, List<String>? participantIds, }) { return KickPartcipantsRequest(
  customParticipantIds: customParticipantIds ?? this.customParticipantIds,
  participantIds: participantIds ?? this.participantIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KickPartcipantsRequest &&
          listEquals(customParticipantIds, other.customParticipantIds) &&
          listEquals(participantIds, other.participantIds); } 
@override int get hashCode { return Object.hash(Object.hashAll(customParticipantIds), Object.hashAll(participantIds)); } 
@override String toString() { return 'KickPartcipantsRequest(customParticipantIds: $customParticipantIds, participantIds: $participantIds)'; } 
 }
