// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_har_response_result_har_log_entries_request_headers.dart';final class UrlscannerGetScanHarResponseResultHarLogEntriesRequest {const UrlscannerGetScanHarResponseResultHarLogEntriesRequest({required this.bodySize, required this.headers, required this.headersSize, required this.httpVersion, required this.method, required this.url, });

factory UrlscannerGetScanHarResponseResultHarLogEntriesRequest.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponseResultHarLogEntriesRequest(
  bodySize: (json['bodySize'] as num).toDouble(),
  headers: (json['headers'] as List<dynamic>).map((e) => UrlscannerGetScanHarResponseResultHarLogEntriesRequestHeaders.fromJson(e as Map<String, dynamic>)).toList(),
  headersSize: (json['headersSize'] as num).toDouble(),
  httpVersion: json['httpVersion'] as String,
  method: json['method'] as String,
  url: json['url'] as String,
); }

final double bodySize;

final List<UrlscannerGetScanHarResponseResultHarLogEntriesRequestHeaders> headers;

final double headersSize;

final String httpVersion;

final String method;

final String url;

Map<String, dynamic> toJson() { return {
  'bodySize': bodySize,
  'headers': headers.map((e) => e.toJson()).toList(),
  'headersSize': headersSize,
  'httpVersion': httpVersion,
  'method': method,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bodySize') && json['bodySize'] is num &&
      json.containsKey('headers') &&
      json.containsKey('headersSize') && json['headersSize'] is num &&
      json.containsKey('httpVersion') && json['httpVersion'] is String &&
      json.containsKey('method') && json['method'] is String &&
      json.containsKey('url') && json['url'] is String; } 
UrlscannerGetScanHarResponseResultHarLogEntriesRequest copyWith({double? bodySize, List<UrlscannerGetScanHarResponseResultHarLogEntriesRequestHeaders>? headers, double? headersSize, String? httpVersion, String? method, String? url, }) { return UrlscannerGetScanHarResponseResultHarLogEntriesRequest(
  bodySize: bodySize ?? this.bodySize,
  headers: headers ?? this.headers,
  headersSize: headersSize ?? this.headersSize,
  httpVersion: httpVersion ?? this.httpVersion,
  method: method ?? this.method,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponseResultHarLogEntriesRequest &&
          bodySize == other.bodySize &&
          listEquals(headers, other.headers) &&
          headersSize == other.headersSize &&
          httpVersion == other.httpVersion &&
          method == other.method &&
          url == other.url; } 
@override int get hashCode { return Object.hash(bodySize, Object.hashAll(headers), headersSize, httpVersion, method, url); } 
@override String toString() { return 'UrlscannerGetScanHarResponseResultHarLogEntriesRequest(bodySize: $bodySize, headers: $headers, headersSize: $headersSize, httpVersion: $httpVersion, method: $method, url: $url)'; } 
 }
