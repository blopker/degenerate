// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetBgpRoutesRealtimeResponseResultMetaAsnInfo {const RadarGetBgpRoutesRealtimeResponseResultMetaAsnInfo({required this.asName, required this.asn, required this.countryCode, required this.orgId, required this.orgName, });

factory RadarGetBgpRoutesRealtimeResponseResultMetaAsnInfo.fromJson(Map<String, dynamic> json) { return RadarGetBgpRoutesRealtimeResponseResultMetaAsnInfo(
  asName: json['as_name'] as String,
  asn: (json['asn'] as num).toInt(),
  countryCode: json['country_code'] as String,
  orgId: json['org_id'] as String,
  orgName: json['org_name'] as String,
); }

/// Name of the autonomous system.
final String asName;

/// AS number.
final int asn;

/// Alpha-2 code for the AS's registration country.
final String countryCode;

/// Organization ID.
final String orgId;

/// Organization name.
final String orgName;

Map<String, dynamic> toJson() { return {
  'as_name': asName,
  'asn': asn,
  'country_code': countryCode,
  'org_id': orgId,
  'org_name': orgName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('as_name') && json['as_name'] is String &&
      json.containsKey('asn') && json['asn'] is num &&
      json.containsKey('country_code') && json['country_code'] is String &&
      json.containsKey('org_id') && json['org_id'] is String &&
      json.containsKey('org_name') && json['org_name'] is String; } 
RadarGetBgpRoutesRealtimeResponseResultMetaAsnInfo copyWith({String? asName, int? asn, String? countryCode, String? orgId, String? orgName, }) { return RadarGetBgpRoutesRealtimeResponseResultMetaAsnInfo(
  asName: asName ?? this.asName,
  asn: asn ?? this.asn,
  countryCode: countryCode ?? this.countryCode,
  orgId: orgId ?? this.orgId,
  orgName: orgName ?? this.orgName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpRoutesRealtimeResponseResultMetaAsnInfo &&
          asName == other.asName &&
          asn == other.asn &&
          countryCode == other.countryCode &&
          orgId == other.orgId &&
          orgName == other.orgName; } 
@override int get hashCode { return Object.hash(asName, asn, countryCode, orgId, orgName); } 
@override String toString() { return 'RadarGetBgpRoutesRealtimeResponseResultMetaAsnInfo(asName: $asName, asn: $asn, countryCode: $countryCode, orgId: $orgId, orgName: $orgName)'; } 
 }
