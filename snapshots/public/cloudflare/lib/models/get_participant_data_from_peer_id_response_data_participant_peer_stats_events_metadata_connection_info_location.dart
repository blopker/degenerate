// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_events_metadata_connection_info_location_coords.dart';final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation({this.coords});

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation(
  coords: json['coords'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords.fromJson(json['coords'] as Map<String, dynamic>) : null,
); }

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords? coords;

Map<String, dynamic> toJson() { return {
  if (coords != null) 'coords': coords?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'coords'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation copyWith({GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords Function()? coords}) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation(
  coords: coords != null ? coords() : this.coords,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation &&
          coords == other.coords; } 
@override int get hashCode { return coords.hashCode; } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation(coords: $coords)'; } 
 }
