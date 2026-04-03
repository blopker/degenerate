// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn({this.asn});

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn(
  asn: json['asn'] as String?,
); }

final String? asn;

Map<String, dynamic> toJson() { return {
  'asn': ?asn,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'asn'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn copyWith({String Function()? asn}) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn(
  asn: asn != null ? asn() : this.asn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn &&
          asn == other.asn; } 
@override int get hashCode { return asn.hashCode; } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn(asn: $asn)'; } 
 }
