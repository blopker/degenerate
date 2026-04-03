// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response2_stats_domain_stats.dart';import 'urlscanner_get_scan_response2_stats_ip_stats.dart';import 'urlscanner_get_scan_response2_stats_protocol_stats.dart';import 'urlscanner_get_scan_response2_stats_resource_stats.dart';import 'urlscanner_get_scan_response2_stats_server_stats.dart';import 'urlscanner_get_scan_response2_stats_tls_stats.dart';@immutable final class UrlscannerGetScanResponse2Stats {const UrlscannerGetScanResponse2Stats({required this.iPv6Percentage, required this.domainStats, required this.ipStats, required this.malicious, required this.protocolStats, required this.resourceStats, required this.securePercentage, required this.secureRequests, required this.serverStats, required this.tlsStats, required this.totalLinks, required this.uniqAsNs, required this.uniqCountries, });

factory UrlscannerGetScanResponse2Stats.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2Stats(
  iPv6Percentage: (json['IPv6Percentage'] as num).toDouble(),
  domainStats: (json['domainStats'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2StatsDomainStats.fromJson(e as Map<String, dynamic>)).toList(),
  ipStats: (json['ipStats'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2StatsIpStats.fromJson(e as Map<String, dynamic>)).toList(),
  malicious: (json['malicious'] as num).toDouble(),
  protocolStats: (json['protocolStats'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2StatsProtocolStats.fromJson(e as Map<String, dynamic>)).toList(),
  resourceStats: (json['resourceStats'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2StatsResourceStats.fromJson(e as Map<String, dynamic>)).toList(),
  securePercentage: (json['securePercentage'] as num).toDouble(),
  secureRequests: (json['secureRequests'] as num).toDouble(),
  serverStats: (json['serverStats'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2StatsServerStats.fromJson(e as Map<String, dynamic>)).toList(),
  tlsStats: (json['tlsStats'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2StatsTlsStats.fromJson(e as Map<String, dynamic>)).toList(),
  totalLinks: (json['totalLinks'] as num).toDouble(),
  uniqAsNs: (json['uniqASNs'] as num).toDouble(),
  uniqCountries: (json['uniqCountries'] as num).toDouble(),
); }

final double iPv6Percentage;

final List<UrlscannerGetScanResponse2StatsDomainStats> domainStats;

final List<UrlscannerGetScanResponse2StatsIpStats> ipStats;

final double malicious;

final List<UrlscannerGetScanResponse2StatsProtocolStats> protocolStats;

final List<UrlscannerGetScanResponse2StatsResourceStats> resourceStats;

final double securePercentage;

final double secureRequests;

final List<UrlscannerGetScanResponse2StatsServerStats> serverStats;

final List<UrlscannerGetScanResponse2StatsTlsStats> tlsStats;

final double totalLinks;

final double uniqAsNs;

final double uniqCountries;

Map<String, dynamic> toJson() { return {
  'IPv6Percentage': iPv6Percentage,
  'domainStats': domainStats.map((e) => e.toJson()).toList(),
  'ipStats': ipStats.map((e) => e.toJson()).toList(),
  'malicious': malicious,
  'protocolStats': protocolStats.map((e) => e.toJson()).toList(),
  'resourceStats': resourceStats.map((e) => e.toJson()).toList(),
  'securePercentage': securePercentage,
  'secureRequests': secureRequests,
  'serverStats': serverStats.map((e) => e.toJson()).toList(),
  'tlsStats': tlsStats.map((e) => e.toJson()).toList(),
  'totalLinks': totalLinks,
  'uniqASNs': uniqAsNs,
  'uniqCountries': uniqCountries,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('IPv6Percentage') && json['IPv6Percentage'] is num &&
      json.containsKey('domainStats') &&
      json.containsKey('ipStats') &&
      json.containsKey('malicious') && json['malicious'] is num &&
      json.containsKey('protocolStats') &&
      json.containsKey('resourceStats') &&
      json.containsKey('securePercentage') && json['securePercentage'] is num &&
      json.containsKey('secureRequests') && json['secureRequests'] is num &&
      json.containsKey('serverStats') &&
      json.containsKey('tlsStats') &&
      json.containsKey('totalLinks') && json['totalLinks'] is num &&
      json.containsKey('uniqASNs') && json['uniqASNs'] is num &&
      json.containsKey('uniqCountries') && json['uniqCountries'] is num; } 
UrlscannerGetScanResponse2Stats copyWith({double? iPv6Percentage, List<UrlscannerGetScanResponse2StatsDomainStats>? domainStats, List<UrlscannerGetScanResponse2StatsIpStats>? ipStats, double? malicious, List<UrlscannerGetScanResponse2StatsProtocolStats>? protocolStats, List<UrlscannerGetScanResponse2StatsResourceStats>? resourceStats, double? securePercentage, double? secureRequests, List<UrlscannerGetScanResponse2StatsServerStats>? serverStats, List<UrlscannerGetScanResponse2StatsTlsStats>? tlsStats, double? totalLinks, double? uniqAsNs, double? uniqCountries, }) { return UrlscannerGetScanResponse2Stats(
  iPv6Percentage: iPv6Percentage ?? this.iPv6Percentage,
  domainStats: domainStats ?? this.domainStats,
  ipStats: ipStats ?? this.ipStats,
  malicious: malicious ?? this.malicious,
  protocolStats: protocolStats ?? this.protocolStats,
  resourceStats: resourceStats ?? this.resourceStats,
  securePercentage: securePercentage ?? this.securePercentage,
  secureRequests: secureRequests ?? this.secureRequests,
  serverStats: serverStats ?? this.serverStats,
  tlsStats: tlsStats ?? this.tlsStats,
  totalLinks: totalLinks ?? this.totalLinks,
  uniqAsNs: uniqAsNs ?? this.uniqAsNs,
  uniqCountries: uniqCountries ?? this.uniqCountries,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2Stats &&
          iPv6Percentage == other.iPv6Percentage &&
          listEquals(domainStats, other.domainStats) &&
          listEquals(ipStats, other.ipStats) &&
          malicious == other.malicious &&
          listEquals(protocolStats, other.protocolStats) &&
          listEquals(resourceStats, other.resourceStats) &&
          securePercentage == other.securePercentage &&
          secureRequests == other.secureRequests &&
          listEquals(serverStats, other.serverStats) &&
          listEquals(tlsStats, other.tlsStats) &&
          totalLinks == other.totalLinks &&
          uniqAsNs == other.uniqAsNs &&
          uniqCountries == other.uniqCountries; } 
@override int get hashCode { return Object.hash(iPv6Percentage, Object.hashAll(domainStats), Object.hashAll(ipStats), malicious, Object.hashAll(protocolStats), Object.hashAll(resourceStats), securePercentage, secureRequests, Object.hashAll(serverStats), Object.hashAll(tlsStats), totalLinks, uniqAsNs, uniqCountries); } 
@override String toString() { return 'UrlscannerGetScanResponse2Stats(iPv6Percentage: $iPv6Percentage, domainStats: $domainStats, ipStats: $ipStats, malicious: $malicious, protocolStats: $protocolStats, resourceStats: $resourceStats, securePercentage: $securePercentage, secureRequests: $secureRequests, serverStats: $serverStats, tlsStats: $tlsStats, totalLinks: $totalLinks, uniqAsNs: $uniqAsNs, uniqCountries: $uniqCountries)'; } 
 }
