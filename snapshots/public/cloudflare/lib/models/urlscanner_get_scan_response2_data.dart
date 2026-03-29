// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response2_data_console.dart';import 'urlscanner_get_scan_response2_data_cookies.dart';import 'urlscanner_get_scan_response2_data_globals.dart';import 'urlscanner_get_scan_response2_data_links.dart';import 'urlscanner_get_scan_response2_data_performance.dart';import 'urlscanner_get_scan_response2_data_requests.dart';final class UrlscannerGetScanResponse2Data {const UrlscannerGetScanResponse2Data({required this.console, required this.cookies, required this.globals, required this.links, required this.performance, required this.requests, });

factory UrlscannerGetScanResponse2Data.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2Data(
  console: (json['console'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2DataConsole.fromJson(e as Map<String, dynamic>)).toList(),
  cookies: (json['cookies'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2DataCookies.fromJson(e as Map<String, dynamic>)).toList(),
  globals: (json['globals'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2DataGlobals.fromJson(e as Map<String, dynamic>)).toList(),
  links: (json['links'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2DataLinks.fromJson(e as Map<String, dynamic>)).toList(),
  performance: (json['performance'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2DataPerformance.fromJson(e as Map<String, dynamic>)).toList(),
  requests: (json['requests'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2DataRequests.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UrlscannerGetScanResponse2DataConsole> console;

final List<UrlscannerGetScanResponse2DataCookies> cookies;

final List<UrlscannerGetScanResponse2DataGlobals> globals;

final List<UrlscannerGetScanResponse2DataLinks> links;

final List<UrlscannerGetScanResponse2DataPerformance> performance;

final List<UrlscannerGetScanResponse2DataRequests> requests;

Map<String, dynamic> toJson() { return {
  'console': console.map((e) => e.toJson()).toList(),
  'cookies': cookies.map((e) => e.toJson()).toList(),
  'globals': globals.map((e) => e.toJson()).toList(),
  'links': links.map((e) => e.toJson()).toList(),
  'performance': performance.map((e) => e.toJson()).toList(),
  'requests': requests.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('console') &&
      json.containsKey('cookies') &&
      json.containsKey('globals') &&
      json.containsKey('links') &&
      json.containsKey('performance') &&
      json.containsKey('requests'); } 
UrlscannerGetScanResponse2Data copyWith({List<UrlscannerGetScanResponse2DataConsole>? console, List<UrlscannerGetScanResponse2DataCookies>? cookies, List<UrlscannerGetScanResponse2DataGlobals>? globals, List<UrlscannerGetScanResponse2DataLinks>? links, List<UrlscannerGetScanResponse2DataPerformance>? performance, List<UrlscannerGetScanResponse2DataRequests>? requests, }) { return UrlscannerGetScanResponse2Data(
  console: console ?? this.console,
  cookies: cookies ?? this.cookies,
  globals: globals ?? this.globals,
  links: links ?? this.links,
  performance: performance ?? this.performance,
  requests: requests ?? this.requests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2Data &&
          listEquals(console, other.console) &&
          listEquals(cookies, other.cookies) &&
          listEquals(globals, other.globals) &&
          listEquals(links, other.links) &&
          listEquals(performance, other.performance) &&
          listEquals(requests, other.requests); } 
@override int get hashCode { return Object.hash(Object.hashAll(console), Object.hashAll(cookies), Object.hashAll(globals), Object.hashAll(links), Object.hashAll(performance), Object.hashAll(requests)); } 
@override String toString() { return 'UrlscannerGetScanResponse2Data(console: $console, cookies: $cookies, globals: $globals, links: $links, performance: $performance, requests: $requests)'; } 
 }
