// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_events_metadata_connection_info_connectivity.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_events_metadata_connection_info_ip_details.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_events_metadata_connection_info_location.dart';final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo({this.backendRTT, this.connectivity, this.effectiveNetworkType, this.fractionalLoss, this.ipDetails, this.jitter, this.location, this.rTT, this.throughput, this.turnConnectivity, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo(
  backendRTT: json['backend_r_t_t'] != null ? (json['backend_r_t_t'] as num).toDouble() : null,
  connectivity: json['connectivity'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity.fromJson(json['connectivity'] as Map<String, dynamic>) : null,
  effectiveNetworkType: json['effective_network_type'] as String?,
  fractionalLoss: json['fractional_loss'] != null ? (json['fractional_loss'] as num).toInt() : null,
  ipDetails: json['ip_details'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails.fromJson(json['ip_details'] as Map<String, dynamic>) : null,
  jitter: json['jitter'] != null ? (json['jitter'] as num).toInt() : null,
  location: json['location'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation.fromJson(json['location'] as Map<String, dynamic>) : null,
  rTT: json['r_t_t'] != null ? (json['r_t_t'] as num).toDouble() : null,
  throughput: json['throughput'] != null ? (json['throughput'] as num).toInt() : null,
  turnConnectivity: json['turn_connectivity'] as bool?,
); }

final double? backendRTT;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity? connectivity;

final String? effectiveNetworkType;

final int? fractionalLoss;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails? ipDetails;

final int? jitter;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation? location;

final double? rTT;

final int? throughput;

final bool? turnConnectivity;

Map<String, dynamic> toJson() { return {
  'backend_r_t_t': ?backendRTT,
  if (connectivity != null) 'connectivity': connectivity?.toJson(),
  'effective_network_type': ?effectiveNetworkType,
  'fractional_loss': ?fractionalLoss,
  if (ipDetails != null) 'ip_details': ipDetails?.toJson(),
  'jitter': ?jitter,
  if (location != null) 'location': location?.toJson(),
  'r_t_t': ?rTT,
  'throughput': ?throughput,
  'turn_connectivity': ?turnConnectivity,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo copyWith({double Function()? backendRTT, GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity Function()? connectivity, String Function()? effectiveNetworkType, int Function()? fractionalLoss, GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails Function()? ipDetails, int Function()? jitter, GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocation Function()? location, double Function()? rTT, int Function()? throughput, bool Function()? turnConnectivity, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo(
  backendRTT: backendRTT != null ? backendRTT() : this.backendRTT,
  connectivity: connectivity != null ? connectivity() : this.connectivity,
  effectiveNetworkType: effectiveNetworkType != null ? effectiveNetworkType() : this.effectiveNetworkType,
  fractionalLoss: fractionalLoss != null ? fractionalLoss() : this.fractionalLoss,
  ipDetails: ipDetails != null ? ipDetails() : this.ipDetails,
  jitter: jitter != null ? jitter() : this.jitter,
  location: location != null ? location() : this.location,
  rTT: rTT != null ? rTT() : this.rTT,
  throughput: throughput != null ? throughput() : this.throughput,
  turnConnectivity: turnConnectivity != null ? turnConnectivity() : this.turnConnectivity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo &&
          backendRTT == other.backendRTT &&
          connectivity == other.connectivity &&
          effectiveNetworkType == other.effectiveNetworkType &&
          fractionalLoss == other.fractionalLoss &&
          ipDetails == other.ipDetails &&
          jitter == other.jitter &&
          location == other.location &&
          rTT == other.rTT &&
          throughput == other.throughput &&
          turnConnectivity == other.turnConnectivity; } 
@override int get hashCode { return Object.hash(backendRTT, connectivity, effectiveNetworkType, fractionalLoss, ipDetails, jitter, location, rTT, throughput, turnConnectivity); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfo(backendRTT: $backendRTT, connectivity: $connectivity, effectiveNetworkType: $effectiveNetworkType, fractionalLoss: $fractionalLoss, ipDetails: $ipDetails, jitter: $jitter, location: $location, rTT: $rTT, throughput: $throughput, turnConnectivity: $turnConnectivity)'; } 
 }
