// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformationAsn {const GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformationAsn({this.asn});

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformationAsn.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformationAsn(
  asn: json['asn'] as String?,
); }

final String? asn;

Map<String, dynamic> toJson() { return {
  'asn': ?asn,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'asn'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformationAsn copyWith({String Function()? asn}) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformationAsn(
  asn: asn != null ? asn() : this.asn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformationAsn &&
          asn == other.asn; } 
@override int get hashCode { return asn.hashCode; } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformationAsn(asn: $asn)'; } 
 }
