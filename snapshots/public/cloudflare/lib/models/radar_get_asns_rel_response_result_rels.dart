// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAsnsRelResponseResultRels {const RadarGetAsnsRelResponseResultRels({required this.asn1, required this.asn1Country, required this.asn1Name, required this.asn2, required this.asn2Country, required this.asn2Name, required this.rel, });

factory RadarGetAsnsRelResponseResultRels.fromJson(Map<String, dynamic> json) { return RadarGetAsnsRelResponseResultRels(
  asn1: (json['asn1'] as num).toInt(),
  asn1Country: json['asn1_country'] as String,
  asn1Name: json['asn1_name'] as String,
  asn2: (json['asn2'] as num).toInt(),
  asn2Country: json['asn2_country'] as String,
  asn2Name: json['asn2_name'] as String,
  rel: json['rel'] as String,
); }

final int asn1;

final String asn1Country;

final String asn1Name;

final int asn2;

final String asn2Country;

final String asn2Name;

final String rel;

Map<String, dynamic> toJson() { return {
  'asn1': asn1,
  'asn1_country': asn1Country,
  'asn1_name': asn1Name,
  'asn2': asn2,
  'asn2_country': asn2Country,
  'asn2_name': asn2Name,
  'rel': rel,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn1') && json['asn1'] is num &&
      json.containsKey('asn1_country') && json['asn1_country'] is String &&
      json.containsKey('asn1_name') && json['asn1_name'] is String &&
      json.containsKey('asn2') && json['asn2'] is num &&
      json.containsKey('asn2_country') && json['asn2_country'] is String &&
      json.containsKey('asn2_name') && json['asn2_name'] is String &&
      json.containsKey('rel') && json['rel'] is String; } 
RadarGetAsnsRelResponseResultRels copyWith({int? asn1, String? asn1Country, String? asn1Name, int? asn2, String? asn2Country, String? asn2Name, String? rel, }) { return RadarGetAsnsRelResponseResultRels(
  asn1: asn1 ?? this.asn1,
  asn1Country: asn1Country ?? this.asn1Country,
  asn1Name: asn1Name ?? this.asn1Name,
  asn2: asn2 ?? this.asn2,
  asn2Country: asn2Country ?? this.asn2Country,
  asn2Name: asn2Name ?? this.asn2Name,
  rel: rel ?? this.rel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAsnsRelResponseResultRels &&
          asn1 == other.asn1 &&
          asn1Country == other.asn1Country &&
          asn1Name == other.asn1Name &&
          asn2 == other.asn2 &&
          asn2Country == other.asn2Country &&
          asn2Name == other.asn2Name &&
          rel == other.rel; } 
@override int get hashCode { return Object.hash(asn1, asn1Country, asn1Name, asn2, asn2Country, asn2Name, rel); } 
@override String toString() { return 'RadarGetAsnsRelResponseResultRels(asn1: $asn1, asn1Country: $asn1Country, asn1Name: $asn1Name, asn2: $asn2, asn2Country: $asn2Country, asn2Name: $asn2Name, rel: $rel)'; } 
 }
