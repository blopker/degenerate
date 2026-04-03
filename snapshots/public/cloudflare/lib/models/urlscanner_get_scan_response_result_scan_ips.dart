// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_ips_ip.dart';@immutable final class UrlscannerGetScanResponseResultScanIps {const UrlscannerGetScanResponseResultScanIps({this.ip});

factory UrlscannerGetScanResponseResultScanIps.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanIps(
  ip: json['ip'] != null ? UrlscannerGetScanResponseResultScanIpsIp.fromJson(json['ip'] as Map<String, dynamic>) : null,
); }

final UrlscannerGetScanResponseResultScanIpsIp? ip;

Map<String, dynamic> toJson() { return {
  if (ip != null) 'ip': ip?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ip'}.contains(key)); } 
UrlscannerGetScanResponseResultScanIps copyWith({UrlscannerGetScanResponseResultScanIpsIp Function()? ip}) { return UrlscannerGetScanResponseResultScanIps(
  ip: ip != null ? ip() : this.ip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanIps &&
          ip == other.ip; } 
@override int get hashCode { return ip.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanIps(ip: $ip)'; } 
 }
