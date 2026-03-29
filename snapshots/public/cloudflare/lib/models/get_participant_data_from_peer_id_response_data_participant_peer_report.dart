// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_participant_data_from_peer_id_response_data_participant_peer_report_metadata.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_report_quality.dart';final class GetParticipantDataFromPeerIdResponseDataParticipantPeerReport {const GetParticipantDataFromPeerIdResponseDataParticipantPeerReport({this.metadata, this.quality, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerReport.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReport(
  metadata: json['metadata'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  quality: json['quality'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQuality.fromJson(json['quality'] as Map<String, dynamic>) : null,
); }

final GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata? metadata;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQuality? quality;

Map<String, dynamic> toJson() { return {
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (quality != null) 'quality': quality?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerReport copyWith({GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata Function()? metadata, GetParticipantDataFromPeerIdResponseDataParticipantPeerReportQuality Function()? quality, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReport(
  metadata: metadata != null ? metadata() : this.metadata,
  quality: quality != null ? quality() : this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerReport &&
          metadata == other.metadata &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(metadata, quality); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerReport(metadata: $metadata, quality: $quality)'; } 
 }
