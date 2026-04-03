// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerGetScanResponse2DataRequestsResponseAsn {const UrlscannerGetScanResponse2DataRequestsResponseAsn({required this.asn, required this.country, required this.description, required this.ip, required this.name, required this.org, });

factory UrlscannerGetScanResponse2DataRequestsResponseAsn.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2DataRequestsResponseAsn(
  asn: json['asn'] as String,
  country: json['country'] as String,
  description: json['description'] as String,
  ip: json['ip'] as String,
  name: json['name'] as String,
  org: json['org'] as String,
); }

final String asn;

final String country;

final String description;

final String ip;

final String name;

final String org;

Map<String, dynamic> toJson() { return {
  'asn': asn,
  'country': country,
  'description': description,
  'ip': ip,
  'name': name,
  'org': org,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn') && json['asn'] is String &&
      json.containsKey('country') && json['country'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('ip') && json['ip'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('org') && json['org'] is String; } 
UrlscannerGetScanResponse2DataRequestsResponseAsn copyWith({String? asn, String? country, String? description, String? ip, String? name, String? org, }) { return UrlscannerGetScanResponse2DataRequestsResponseAsn(
  asn: asn ?? this.asn,
  country: country ?? this.country,
  description: description ?? this.description,
  ip: ip ?? this.ip,
  name: name ?? this.name,
  org: org ?? this.org,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2DataRequestsResponseAsn &&
          asn == other.asn &&
          country == other.country &&
          description == other.description &&
          ip == other.ip &&
          name == other.name &&
          org == other.org; } 
@override int get hashCode { return Object.hash(asn, country, description, ip, name, org); } 
@override String toString() { return 'UrlscannerGetScanResponse2DataRequestsResponseAsn(asn: $asn, country: $country, description: $description, ip: $ip, name: $name, org: $org)'; } 
 }
