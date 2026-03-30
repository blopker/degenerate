// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_events_metadata_connection_info_ip_details_asn.dart';final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails({this.asn, this.city, this.country, this.ip, this.loc, this.postal, this.region, this.timezone, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails(
  asn: json['asn'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn.fromJson(json['asn'] as Map<String, dynamic>) : null,
  city: json['city'] as String?,
  country: json['country'] as String?,
  ip: json['ip'] as String?,
  loc: json['loc'] as String?,
  postal: json['postal'] as String?,
  region: json['region'] as String?,
  timezone: json['timezone'] as String?,
); }

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn? asn;

final String? city;

final String? country;

final String? ip;

final String? loc;

final String? postal;

final String? region;

final String? timezone;

Map<String, dynamic> toJson() { return {
  if (asn != null) 'asn': asn?.toJson(),
  'city': ?city,
  'country': ?country,
  'ip': ?ip,
  'loc': ?loc,
  'postal': ?postal,
  'region': ?region,
  'timezone': ?timezone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'asn', 'city', 'country', 'ip', 'loc', 'postal', 'region', 'timezone'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails copyWith({GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetailsAsn Function()? asn, String Function()? city, String Function()? country, String Function()? ip, String Function()? loc, String Function()? postal, String Function()? region, String Function()? timezone, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails(
  asn: asn != null ? asn() : this.asn,
  city: city != null ? city() : this.city,
  country: country != null ? country() : this.country,
  ip: ip != null ? ip() : this.ip,
  loc: loc != null ? loc() : this.loc,
  postal: postal != null ? postal() : this.postal,
  region: region != null ? region() : this.region,
  timezone: timezone != null ? timezone() : this.timezone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails &&
          asn == other.asn &&
          city == other.city &&
          country == other.country &&
          ip == other.ip &&
          loc == other.loc &&
          postal == other.postal &&
          region == other.region &&
          timezone == other.timezone; } 
@override int get hashCode { return Object.hash(asn, city, country, ip, loc, postal, region, timezone); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEventsMetadataConnectionInfoIpDetails(asn: $asn, city: $city, country: $country, ip: $ip, loc: $loc, postal: $postal, region: $region, timezone: $timezone)'; } 
 }
