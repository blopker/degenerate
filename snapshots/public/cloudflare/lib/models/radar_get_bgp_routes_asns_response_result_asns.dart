// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetBgpRoutesAsnsResponseResultAsns {const RadarGetBgpRoutesAsnsResponseResultAsns({required this.asn, required this.coneSize, required this.country, required this.ipv4Count, required this.ipv6Count, required this.name, required this.pfxsCount, required this.rpkiInvalid, required this.rpkiUnknown, required this.rpkiValid, });

factory RadarGetBgpRoutesAsnsResponseResultAsns.fromJson(Map<String, dynamic> json) { return RadarGetBgpRoutesAsnsResponseResultAsns(
  asn: (json['asn'] as num).toInt(),
  coneSize: (json['coneSize'] as num).toInt(),
  country: json['country'] as String,
  ipv4Count: (json['ipv4Count'] as num).toInt(),
  ipv6Count: json['ipv6Count'] as String,
  name: json['name'] as String,
  pfxsCount: (json['pfxsCount'] as num).toInt(),
  rpkiInvalid: (json['rpkiInvalid'] as num).toInt(),
  rpkiUnknown: (json['rpkiUnknown'] as num).toInt(),
  rpkiValid: (json['rpkiValid'] as num).toInt(),
); }

final int asn;

/// AS's customer cone size.
final int coneSize;

/// Alpha-2 code for the AS's registration country.
final String country;

/// Number of IPv4 addresses originated by the AS.
final int ipv4Count;

/// Number of IPv6 addresses originated by the AS.
final String ipv6Count;

/// Name of the AS.
final String name;

/// Number of total IP prefixes originated by the AS.
final int pfxsCount;

/// Number of RPKI invalid prefixes originated by the AS.
final int rpkiInvalid;

/// Number of RPKI unknown prefixes originated by the AS.
final int rpkiUnknown;

/// Number of RPKI valid prefixes originated by the AS.
final int rpkiValid;

Map<String, dynamic> toJson() { return {
  'asn': asn,
  'coneSize': coneSize,
  'country': country,
  'ipv4Count': ipv4Count,
  'ipv6Count': ipv6Count,
  'name': name,
  'pfxsCount': pfxsCount,
  'rpkiInvalid': rpkiInvalid,
  'rpkiUnknown': rpkiUnknown,
  'rpkiValid': rpkiValid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn') && json['asn'] is num &&
      json.containsKey('coneSize') && json['coneSize'] is num &&
      json.containsKey('country') && json['country'] is String &&
      json.containsKey('ipv4Count') && json['ipv4Count'] is num &&
      json.containsKey('ipv6Count') && json['ipv6Count'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('pfxsCount') && json['pfxsCount'] is num &&
      json.containsKey('rpkiInvalid') && json['rpkiInvalid'] is num &&
      json.containsKey('rpkiUnknown') && json['rpkiUnknown'] is num &&
      json.containsKey('rpkiValid') && json['rpkiValid'] is num; } 
RadarGetBgpRoutesAsnsResponseResultAsns copyWith({int? asn, int? coneSize, String? country, int? ipv4Count, String? ipv6Count, String? name, int? pfxsCount, int? rpkiInvalid, int? rpkiUnknown, int? rpkiValid, }) { return RadarGetBgpRoutesAsnsResponseResultAsns(
  asn: asn ?? this.asn,
  coneSize: coneSize ?? this.coneSize,
  country: country ?? this.country,
  ipv4Count: ipv4Count ?? this.ipv4Count,
  ipv6Count: ipv6Count ?? this.ipv6Count,
  name: name ?? this.name,
  pfxsCount: pfxsCount ?? this.pfxsCount,
  rpkiInvalid: rpkiInvalid ?? this.rpkiInvalid,
  rpkiUnknown: rpkiUnknown ?? this.rpkiUnknown,
  rpkiValid: rpkiValid ?? this.rpkiValid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpRoutesAsnsResponseResultAsns &&
          asn == other.asn &&
          coneSize == other.coneSize &&
          country == other.country &&
          ipv4Count == other.ipv4Count &&
          ipv6Count == other.ipv6Count &&
          name == other.name &&
          pfxsCount == other.pfxsCount &&
          rpkiInvalid == other.rpkiInvalid &&
          rpkiUnknown == other.rpkiUnknown &&
          rpkiValid == other.rpkiValid; } 
@override int get hashCode { return Object.hash(asn, coneSize, country, ipv4Count, ipv6Count, name, pfxsCount, rpkiInvalid, rpkiUnknown, rpkiValid); } 
@override String toString() { return 'RadarGetBgpRoutesAsnsResponseResultAsns(asn: $asn, coneSize: $coneSize, country: $country, ipv4Count: $ipv4Count, ipv6Count: $ipv6Count, name: $name, pfxsCount: $pfxsCount, rpkiInvalid: $rpkiInvalid, rpkiUnknown: $rpkiUnknown, rpkiValid: $rpkiValid)'; } 
 }
