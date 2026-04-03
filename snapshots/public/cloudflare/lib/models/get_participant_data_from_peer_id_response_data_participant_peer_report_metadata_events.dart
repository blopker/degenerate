// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents {const GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents({this.name, this.timestamp, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents(
  name: json['name'] as String?,
  timestamp: json['timestamp'] as String?,
); }

final String? name;

final String? timestamp;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'timestamp': ?timestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'timestamp'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents copyWith({String Function()? name, String Function()? timestamp, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents(
  name: name != null ? name() : this.name,
  timestamp: timestamp != null ? timestamp() : this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents &&
          name == other.name &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(name, timestamp); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents(name: $name, timestamp: $timestamp)'; } 
 }
