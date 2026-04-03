// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords({this.latitude, this.longitude, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords(
  latitude: json['latitude'] != null ? (json['latitude'] as num).toDouble() : null,
  longitude: json['longitude'] != null ? (json['longitude'] as num).toDouble() : null,
); }

final double? latitude;

final double? longitude;

Map<String, dynamic> toJson() { return {
  'latitude': ?latitude,
  'longitude': ?longitude,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'latitude', 'longitude'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords copyWith({double Function()? latitude, double Function()? longitude, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords(
  latitude: latitude != null ? latitude() : this.latitude,
  longitude: longitude != null ? longitude() : this.longitude,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords &&
          latitude == other.latitude &&
          longitude == other.longitude; } 
@override int get hashCode { return Object.hash(latitude, longitude); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoLocationCoords(latitude: $latitude, longitude: $longitude)'; } 
 }
