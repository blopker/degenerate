// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_asns.dart';import 'urlscanner_get_scan_response_result_scan_certificates.dart';import 'urlscanner_get_scan_response_result_scan_domains.dart';import 'urlscanner_get_scan_response_result_scan_geo.dart';import 'urlscanner_get_scan_response_result_scan_ips.dart';import 'urlscanner_get_scan_response_result_scan_links.dart';import 'urlscanner_get_scan_response_result_scan_meta.dart';import 'urlscanner_get_scan_response_result_scan_page.dart';import 'urlscanner_get_scan_response_result_scan_performance.dart';import 'urlscanner_get_scan_response_result_scan_task.dart';import 'urlscanner_get_scan_response_result_scan_verdicts.dart';@immutable final class UrlscannerGetScanResponseResultScan {const UrlscannerGetScanResponseResultScan({required this.certificates, required this.geo, required this.meta, required this.page, required this.performance, required this.task, required this.verdicts, this.asns, this.domains, this.ips, this.links, });

factory UrlscannerGetScanResponseResultScan.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScan(
  asns: json['asns'] != null ? UrlscannerGetScanResponseResultScanAsns.fromJson(json['asns'] as Map<String, dynamic>) : null,
  certificates: (json['certificates'] as List<dynamic>).map((e) => UrlscannerGetScanResponseResultScanCertificates.fromJson(e as Map<String, dynamic>)).toList(),
  domains: json['domains'] != null ? UrlscannerGetScanResponseResultScanDomains.fromJson(json['domains'] as Map<String, dynamic>) : null,
  geo: UrlscannerGetScanResponseResultScanGeo.fromJson(json['geo'] as Map<String, dynamic>),
  ips: json['ips'] != null ? UrlscannerGetScanResponseResultScanIps.fromJson(json['ips'] as Map<String, dynamic>) : null,
  links: json['links'] != null ? UrlscannerGetScanResponseResultScanLinks.fromJson(json['links'] as Map<String, dynamic>) : null,
  meta: UrlscannerGetScanResponseResultScanMeta.fromJson(json['meta'] as Map<String, dynamic>),
  page: UrlscannerGetScanResponseResultScanPage.fromJson(json['page'] as Map<String, dynamic>),
  performance: (json['performance'] as List<dynamic>).map((e) => UrlscannerGetScanResponseResultScanPerformance.fromJson(e as Map<String, dynamic>)).toList(),
  task: UrlscannerGetScanResponseResultScanTask.fromJson(json['task'] as Map<String, dynamic>),
  verdicts: UrlscannerGetScanResponseResultScanVerdicts.fromJson(json['verdicts'] as Map<String, dynamic>),
); }

/// Dictionary of Autonomous System Numbers where ASN's are the keys
final UrlscannerGetScanResponseResultScanAsns? asns;

final List<UrlscannerGetScanResponseResultScanCertificates> certificates;

final UrlscannerGetScanResponseResultScanDomains? domains;

final UrlscannerGetScanResponseResultScanGeo geo;

final UrlscannerGetScanResponseResultScanIps? ips;

final UrlscannerGetScanResponseResultScanLinks? links;

final UrlscannerGetScanResponseResultScanMeta meta;

final UrlscannerGetScanResponseResultScanPage page;

final List<UrlscannerGetScanResponseResultScanPerformance> performance;

final UrlscannerGetScanResponseResultScanTask task;

final UrlscannerGetScanResponseResultScanVerdicts verdicts;

Map<String, dynamic> toJson() { return {
  if (asns != null) 'asns': asns?.toJson(),
  'certificates': certificates.map((e) => e.toJson()).toList(),
  if (domains != null) 'domains': domains?.toJson(),
  'geo': geo.toJson(),
  if (ips != null) 'ips': ips?.toJson(),
  if (links != null) 'links': links?.toJson(),
  'meta': meta.toJson(),
  'page': page.toJson(),
  'performance': performance.map((e) => e.toJson()).toList(),
  'task': task.toJson(),
  'verdicts': verdicts.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificates') &&
      json.containsKey('geo') &&
      json.containsKey('meta') &&
      json.containsKey('page') &&
      json.containsKey('performance') &&
      json.containsKey('task') &&
      json.containsKey('verdicts'); } 
UrlscannerGetScanResponseResultScan copyWith({UrlscannerGetScanResponseResultScanAsns Function()? asns, List<UrlscannerGetScanResponseResultScanCertificates>? certificates, UrlscannerGetScanResponseResultScanDomains Function()? domains, UrlscannerGetScanResponseResultScanGeo? geo, UrlscannerGetScanResponseResultScanIps Function()? ips, UrlscannerGetScanResponseResultScanLinks Function()? links, UrlscannerGetScanResponseResultScanMeta? meta, UrlscannerGetScanResponseResultScanPage? page, List<UrlscannerGetScanResponseResultScanPerformance>? performance, UrlscannerGetScanResponseResultScanTask? task, UrlscannerGetScanResponseResultScanVerdicts? verdicts, }) { return UrlscannerGetScanResponseResultScan(
  asns: asns != null ? asns() : this.asns,
  certificates: certificates ?? this.certificates,
  domains: domains != null ? domains() : this.domains,
  geo: geo ?? this.geo,
  ips: ips != null ? ips() : this.ips,
  links: links != null ? links() : this.links,
  meta: meta ?? this.meta,
  page: page ?? this.page,
  performance: performance ?? this.performance,
  task: task ?? this.task,
  verdicts: verdicts ?? this.verdicts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScan &&
          asns == other.asns &&
          listEquals(certificates, other.certificates) &&
          domains == other.domains &&
          geo == other.geo &&
          ips == other.ips &&
          links == other.links &&
          meta == other.meta &&
          page == other.page &&
          listEquals(performance, other.performance) &&
          task == other.task &&
          verdicts == other.verdicts; } 
@override int get hashCode { return Object.hash(asns, Object.hashAll(certificates), domains, geo, ips, links, meta, page, Object.hashAll(performance), task, verdicts); } 
@override String toString() { return 'UrlscannerGetScanResponseResultScan(asns: $asns, certificates: $certificates, domains: $domains, geo: $geo, ips: $ips, links: $links, meta: $meta, page: $page, performance: $performance, task: $task, verdicts: $verdicts)'; } 
 }
