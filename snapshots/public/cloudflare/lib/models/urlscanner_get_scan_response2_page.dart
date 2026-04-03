// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response2_page_screenshot.dart';@immutable final class UrlscannerGetScanResponse2Page {const UrlscannerGetScanResponse2Page({required this.apexDomain, required this.asn, required this.asnname, required this.city, required this.country, required this.domain, required this.ip, required this.mimeType, required this.server, required this.status, required this.title, required this.tlsAgeDays, required this.tlsIssuer, required this.tlsValidDays, required this.tlsValidFrom, required this.url, this.screenshot, });

factory UrlscannerGetScanResponse2Page.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2Page(
  apexDomain: json['apexDomain'] as String,
  asn: json['asn'] as String,
  asnname: json['asnname'] as String,
  city: json['city'] as String,
  country: json['country'] as String,
  domain: json['domain'] as String,
  ip: json['ip'] as String,
  mimeType: json['mimeType'] as String,
  screenshot: json['screenshot'] != null ? UrlscannerGetScanResponse2PageScreenshot.fromJson(json['screenshot'] as Map<String, dynamic>) : null,
  server: json['server'] as String,
  status: json['status'] as String,
  title: json['title'] as String,
  tlsAgeDays: (json['tlsAgeDays'] as num).toDouble(),
  tlsIssuer: json['tlsIssuer'] as String,
  tlsValidDays: (json['tlsValidDays'] as num).toDouble(),
  tlsValidFrom: json['tlsValidFrom'] as String,
  url: json['url'] as String,
); }

final String apexDomain;

final String asn;

final String asnname;

final String city;

final String country;

final String domain;

final String ip;

final String mimeType;

final UrlscannerGetScanResponse2PageScreenshot? screenshot;

final String server;

final String status;

final String title;

final double tlsAgeDays;

final String tlsIssuer;

final double tlsValidDays;

final String tlsValidFrom;

final String url;

Map<String, dynamic> toJson() { return {
  'apexDomain': apexDomain,
  'asn': asn,
  'asnname': asnname,
  'city': city,
  'country': country,
  'domain': domain,
  'ip': ip,
  'mimeType': mimeType,
  if (screenshot != null) 'screenshot': screenshot?.toJson(),
  'server': server,
  'status': status,
  'title': title,
  'tlsAgeDays': tlsAgeDays,
  'tlsIssuer': tlsIssuer,
  'tlsValidDays': tlsValidDays,
  'tlsValidFrom': tlsValidFrom,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('apexDomain') && json['apexDomain'] is String &&
      json.containsKey('asn') && json['asn'] is String &&
      json.containsKey('asnname') && json['asnname'] is String &&
      json.containsKey('city') && json['city'] is String &&
      json.containsKey('country') && json['country'] is String &&
      json.containsKey('domain') && json['domain'] is String &&
      json.containsKey('ip') && json['ip'] is String &&
      json.containsKey('mimeType') && json['mimeType'] is String &&
      json.containsKey('server') && json['server'] is String &&
      json.containsKey('status') && json['status'] is String &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('tlsAgeDays') && json['tlsAgeDays'] is num &&
      json.containsKey('tlsIssuer') && json['tlsIssuer'] is String &&
      json.containsKey('tlsValidDays') && json['tlsValidDays'] is num &&
      json.containsKey('tlsValidFrom') && json['tlsValidFrom'] is String &&
      json.containsKey('url') && json['url'] is String; } 
UrlscannerGetScanResponse2Page copyWith({String? apexDomain, String? asn, String? asnname, String? city, String? country, String? domain, String? ip, String? mimeType, UrlscannerGetScanResponse2PageScreenshot Function()? screenshot, String? server, String? status, String? title, double? tlsAgeDays, String? tlsIssuer, double? tlsValidDays, String? tlsValidFrom, String? url, }) { return UrlscannerGetScanResponse2Page(
  apexDomain: apexDomain ?? this.apexDomain,
  asn: asn ?? this.asn,
  asnname: asnname ?? this.asnname,
  city: city ?? this.city,
  country: country ?? this.country,
  domain: domain ?? this.domain,
  ip: ip ?? this.ip,
  mimeType: mimeType ?? this.mimeType,
  screenshot: screenshot != null ? screenshot() : this.screenshot,
  server: server ?? this.server,
  status: status ?? this.status,
  title: title ?? this.title,
  tlsAgeDays: tlsAgeDays ?? this.tlsAgeDays,
  tlsIssuer: tlsIssuer ?? this.tlsIssuer,
  tlsValidDays: tlsValidDays ?? this.tlsValidDays,
  tlsValidFrom: tlsValidFrom ?? this.tlsValidFrom,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2Page &&
          apexDomain == other.apexDomain &&
          asn == other.asn &&
          asnname == other.asnname &&
          city == other.city &&
          country == other.country &&
          domain == other.domain &&
          ip == other.ip &&
          mimeType == other.mimeType &&
          screenshot == other.screenshot &&
          server == other.server &&
          status == other.status &&
          title == other.title &&
          tlsAgeDays == other.tlsAgeDays &&
          tlsIssuer == other.tlsIssuer &&
          tlsValidDays == other.tlsValidDays &&
          tlsValidFrom == other.tlsValidFrom &&
          url == other.url; } 
@override int get hashCode { return Object.hash(apexDomain, asn, asnname, city, country, domain, ip, mimeType, screenshot, server, status, title, tlsAgeDays, tlsIssuer, tlsValidDays, tlsValidFrom, url); } 
@override String toString() { return 'UrlscannerGetScanResponse2Page(apexDomain: $apexDomain, asn: $asn, asnname: $asnname, city: $city, country: $country, domain: $domain, ip: $ip, mimeType: $mimeType, screenshot: $screenshot, server: $server, status: $status, title: $title, tlsAgeDays: $tlsAgeDays, tlsIssuer: $tlsIssuer, tlsValidDays: $tlsValidDays, tlsValidFrom: $tlsValidFrom, url: $url)'; } 
 }
