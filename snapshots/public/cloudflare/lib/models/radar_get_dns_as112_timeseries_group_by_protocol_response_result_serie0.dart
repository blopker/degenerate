// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0 {const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0({required this.https, required this.tcp, required this.tls, required this.udp, });

factory RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0(
  https: (json['HTTPS'] as List<dynamic>).map((e) => e as String).toList(),
  tcp: (json['TCP'] as List<dynamic>).map((e) => e as String).toList(),
  tls: (json['TLS'] as List<dynamic>).map((e) => e as String).toList(),
  udp: (json['UDP'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> https;

final List<String> tcp;

final List<String> tls;

final List<String> udp;

Map<String, dynamic> toJson() { return {
  'HTTPS': https,
  'TCP': tcp,
  'TLS': tls,
  'UDP': udp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('HTTPS') &&
      json.containsKey('TCP') &&
      json.containsKey('TLS') &&
      json.containsKey('UDP'); } 
RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0 copyWith({List<String>? https, List<String>? tcp, List<String>? tls, List<String>? udp, }) { return RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0(
  https: https ?? this.https,
  tcp: tcp ?? this.tcp,
  tls: tls ?? this.tls,
  udp: udp ?? this.udp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0 &&
          listEquals(https, other.https) &&
          listEquals(tcp, other.tcp) &&
          listEquals(tls, other.tls) &&
          listEquals(udp, other.udp); } 
@override int get hashCode { return Object.hash(Object.hashAll(https), Object.hashAll(tcp), Object.hashAll(tls), Object.hashAll(udp)); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0(https: $https, tcp: $tcp, tls: $tls, udp: $udp)'; } 
 }
