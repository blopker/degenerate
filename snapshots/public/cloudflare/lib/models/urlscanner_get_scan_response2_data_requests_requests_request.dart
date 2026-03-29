// GENERATED CODE - DO NOT MODIFY BY HAND

import 'urlscanner_get_scan_response2_data_requests_requests_request_headers.dart';final class UrlscannerGetScanResponse2DataRequestsRequestsRequest {const UrlscannerGetScanResponse2DataRequestsRequestsRequest({required this.headers, required this.initialPriority, required this.isSameSite, required this.method, required this.mixedContentType, required this.referrerPolicy, required this.url, });

factory UrlscannerGetScanResponse2DataRequestsRequestsRequest.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2DataRequestsRequestsRequest(
  headers: UrlscannerGetScanResponse2DataRequestsRequestsRequestHeaders.fromJson(json['headers'] as Map<String, dynamic>),
  initialPriority: json['initialPriority'] as String,
  isSameSite: json['isSameSite'] as bool,
  method: json['method'] as String,
  mixedContentType: json['mixedContentType'] as String,
  referrerPolicy: json['referrerPolicy'] as String,
  url: json['url'] as String,
); }

final UrlscannerGetScanResponse2DataRequestsRequestsRequestHeaders headers;

final String initialPriority;

final bool isSameSite;

final String method;

final String mixedContentType;

final String referrerPolicy;

final String url;

Map<String, dynamic> toJson() { return {
  'headers': headers.toJson(),
  'initialPriority': initialPriority,
  'isSameSite': isSameSite,
  'method': method,
  'mixedContentType': mixedContentType,
  'referrerPolicy': referrerPolicy,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('headers') &&
      json.containsKey('initialPriority') && json['initialPriority'] is String &&
      json.containsKey('isSameSite') && json['isSameSite'] is bool &&
      json.containsKey('method') && json['method'] is String &&
      json.containsKey('mixedContentType') && json['mixedContentType'] is String &&
      json.containsKey('referrerPolicy') && json['referrerPolicy'] is String &&
      json.containsKey('url') && json['url'] is String; } 
UrlscannerGetScanResponse2DataRequestsRequestsRequest copyWith({UrlscannerGetScanResponse2DataRequestsRequestsRequestHeaders? headers, String? initialPriority, bool? isSameSite, String? method, String? mixedContentType, String? referrerPolicy, String? url, }) { return UrlscannerGetScanResponse2DataRequestsRequestsRequest(
  headers: headers ?? this.headers,
  initialPriority: initialPriority ?? this.initialPriority,
  isSameSite: isSameSite ?? this.isSameSite,
  method: method ?? this.method,
  mixedContentType: mixedContentType ?? this.mixedContentType,
  referrerPolicy: referrerPolicy ?? this.referrerPolicy,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2DataRequestsRequestsRequest &&
          headers == other.headers &&
          initialPriority == other.initialPriority &&
          isSameSite == other.isSameSite &&
          method == other.method &&
          mixedContentType == other.mixedContentType &&
          referrerPolicy == other.referrerPolicy &&
          url == other.url; } 
@override int get hashCode { return Object.hash(headers, initialPriority, isSameSite, method, mixedContentType, referrerPolicy, url); } 
@override String toString() { return 'UrlscannerGetScanResponse2DataRequestsRequestsRequest(headers: $headers, initialPriority: $initialPriority, isSameSite: $isSameSite, method: $method, mixedContentType: $mixedContentType, referrerPolicy: $referrerPolicy, url: $url)'; } 
 }
