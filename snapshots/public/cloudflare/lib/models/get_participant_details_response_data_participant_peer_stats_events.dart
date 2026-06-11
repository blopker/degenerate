// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetParticipantDetailsResponseDataParticipantPeerStatsEvents {const GetParticipantDetailsResponseDataParticipantPeerStatsEvents({this.timestamp, this.type, });

factory GetParticipantDetailsResponseDataParticipantPeerStatsEvents.fromJson(Map<String, dynamic> json) { return GetParticipantDetailsResponseDataParticipantPeerStatsEvents(
  timestamp: json['timestamp'] as String?,
  type: json['type'] as String?,
); }

final String? timestamp;

final String? type;

Map<String, dynamic> toJson() { return {
  'timestamp': ?timestamp,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'timestamp', 'type'}.contains(key)); } 
GetParticipantDetailsResponseDataParticipantPeerStatsEvents copyWith({String Function()? timestamp, String Function()? type, }) { return GetParticipantDetailsResponseDataParticipantPeerStatsEvents(
  timestamp: timestamp != null ? timestamp() : this.timestamp,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDetailsResponseDataParticipantPeerStatsEvents &&
          timestamp == other.timestamp &&
          type == other.type; } 
@override int get hashCode { return Object.hash(timestamp, type); } 
@override String toString() { return 'GetParticipantDetailsResponseDataParticipantPeerStatsEvents(timestamp: $timestamp, type: $type)'; } 
 }
