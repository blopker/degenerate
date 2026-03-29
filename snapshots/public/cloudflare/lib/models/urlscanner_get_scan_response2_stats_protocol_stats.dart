// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class UrlscannerGetScanResponse2StatsProtocolStats {const UrlscannerGetScanResponse2StatsProtocolStats({required this.count, required this.countries, required this.encodedSize, required this.ips, required this.protocol, required this.size, });

factory UrlscannerGetScanResponse2StatsProtocolStats.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2StatsProtocolStats(
  count: (json['count'] as num).toDouble(),
  countries: (json['countries'] as List<dynamic>).map((e) => e as String).toList(),
  encodedSize: (json['encodedSize'] as num).toDouble(),
  ips: (json['ips'] as List<dynamic>).map((e) => e as String).toList(),
  protocol: json['protocol'] as String,
  size: (json['size'] as num).toDouble(),
); }

final double count;

final List<String> countries;

final double encodedSize;

final List<String> ips;

final String protocol;

final double size;

Map<String, dynamic> toJson() { return {
  'count': count,
  'countries': countries,
  'encodedSize': encodedSize,
  'ips': ips,
  'protocol': protocol,
  'size': size,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('countries') &&
      json.containsKey('encodedSize') && json['encodedSize'] is num &&
      json.containsKey('ips') &&
      json.containsKey('protocol') && json['protocol'] is String &&
      json.containsKey('size') && json['size'] is num; } 
UrlscannerGetScanResponse2StatsProtocolStats copyWith({double? count, List<String>? countries, double? encodedSize, List<String>? ips, String? protocol, double? size, }) { return UrlscannerGetScanResponse2StatsProtocolStats(
  count: count ?? this.count,
  countries: countries ?? this.countries,
  encodedSize: encodedSize ?? this.encodedSize,
  ips: ips ?? this.ips,
  protocol: protocol ?? this.protocol,
  size: size ?? this.size,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2StatsProtocolStats &&
          count == other.count &&
          listEquals(countries, other.countries) &&
          encodedSize == other.encodedSize &&
          listEquals(ips, other.ips) &&
          protocol == other.protocol &&
          size == other.size; } 
@override int get hashCode { return Object.hash(count, Object.hashAll(countries), encodedSize, Object.hashAll(ips), protocol, size); } 
@override String toString() { return 'UrlscannerGetScanResponse2StatsProtocolStats(count: $count, countries: $countries, encodedSize: $encodedSize, ips: $ips, protocol: $protocol, size: $size)'; } 
 }
