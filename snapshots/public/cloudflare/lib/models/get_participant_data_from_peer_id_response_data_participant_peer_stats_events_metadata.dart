// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_events_metadata_connection_info.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadata {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadata({this.connectionInfo});

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadata.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadata(
  connectionInfo: json['connection_info'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo.fromJson(json['connection_info'] as Map<String, dynamic>) : null,
); }

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo? connectionInfo;

Map<String, dynamic> toJson() { return {
  if (connectionInfo != null) 'connection_info': connectionInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'connection_info'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadata copyWith({GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo Function()? connectionInfo}) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadata(
  connectionInfo: connectionInfo != null ? connectionInfo() : this.connectionInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadata &&
          connectionInfo == other.connectionInfo; } 
@override int get hashCode { return connectionInfo.hashCode; } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadata(connectionInfo: $connectionInfo)'; } 
 }
