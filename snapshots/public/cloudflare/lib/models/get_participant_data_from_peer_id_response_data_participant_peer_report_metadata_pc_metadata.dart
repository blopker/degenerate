// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata {const GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata({this.effectiveNetworkType, this.reflexiveConnectivity, this.relayConnectivity, this.timestamp, this.turnConnectivity, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata(
  effectiveNetworkType: json['effective_network_type'] as String?,
  reflexiveConnectivity: json['reflexive_connectivity'] as bool?,
  relayConnectivity: json['relay_connectivity'] as bool?,
  timestamp: json['timestamp'] as String?,
  turnConnectivity: json['turn_connectivity'] as bool?,
); }

final String? effectiveNetworkType;

final bool? reflexiveConnectivity;

final bool? relayConnectivity;

final String? timestamp;

final bool? turnConnectivity;

Map<String, dynamic> toJson() { return {
  'effective_network_type': ?effectiveNetworkType,
  'reflexive_connectivity': ?reflexiveConnectivity,
  'relay_connectivity': ?relayConnectivity,
  'timestamp': ?timestamp,
  'turn_connectivity': ?turnConnectivity,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata copyWith({String Function()? effectiveNetworkType, bool Function()? reflexiveConnectivity, bool Function()? relayConnectivity, String Function()? timestamp, bool Function()? turnConnectivity, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata(
  effectiveNetworkType: effectiveNetworkType != null ? effectiveNetworkType() : this.effectiveNetworkType,
  reflexiveConnectivity: reflexiveConnectivity != null ? reflexiveConnectivity() : this.reflexiveConnectivity,
  relayConnectivity: relayConnectivity != null ? relayConnectivity() : this.relayConnectivity,
  timestamp: timestamp != null ? timestamp() : this.timestamp,
  turnConnectivity: turnConnectivity != null ? turnConnectivity() : this.turnConnectivity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata &&
          effectiveNetworkType == other.effectiveNetworkType &&
          reflexiveConnectivity == other.reflexiveConnectivity &&
          relayConnectivity == other.relayConnectivity &&
          timestamp == other.timestamp &&
          turnConnectivity == other.turnConnectivity; } 
@override int get hashCode { return Object.hash(effectiveNetworkType, reflexiveConnectivity, relayConnectivity, timestamp, turnConnectivity); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata(effectiveNetworkType: $effectiveNetworkType, reflexiveConnectivity: $reflexiveConnectivity, relayConnectivity: $relayConnectivity, timestamp: $timestamp, turnConnectivity: $turnConnectivity)'; } 
 }
