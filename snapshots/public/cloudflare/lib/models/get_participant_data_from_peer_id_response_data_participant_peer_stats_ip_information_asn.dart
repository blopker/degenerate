// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformationAsn {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformationAsn({this.asn});

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformationAsn.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformationAsn(
  asn: json['asn'] as String?,
); }

final String? asn;

Map<String, dynamic> toJson() { return {
  'asn': ?asn,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'asn'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformationAsn copyWith({String Function()? asn}) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformationAsn(
  asn: asn != null ? asn() : this.asn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformationAsn &&
          asn == other.asn; } 
@override int get hashCode { return asn.hashCode; } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformationAsn(asn: $asn)'; } 
 }
