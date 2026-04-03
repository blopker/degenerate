// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity({this.host, this.reflexive, this.relay, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity(
  host: json['host'] as bool?,
  reflexive: json['reflexive'] as bool?,
  relay: json['relay'] as bool?,
); }

final bool? host;

final bool? reflexive;

final bool? relay;

Map<String, dynamic> toJson() { return {
  'host': ?host,
  'reflexive': ?reflexive,
  'relay': ?relay,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'host', 'reflexive', 'relay'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity copyWith({bool Function()? host, bool Function()? reflexive, bool Function()? relay, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity(
  host: host != null ? host() : this.host,
  reflexive: reflexive != null ? reflexive() : this.reflexive,
  relay: relay != null ? relay() : this.relay,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity &&
          host == other.host &&
          reflexive == other.reflexive &&
          relay == other.relay; } 
@override int get hashCode { return Object.hash(host, reflexive, relay); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoConnectivity(host: $host, reflexive: $reflexive, relay: $relay)'; } 
 }
