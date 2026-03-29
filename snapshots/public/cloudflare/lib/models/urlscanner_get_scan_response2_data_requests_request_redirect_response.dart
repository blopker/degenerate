// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response2_data_requests_request_redirect_response_security_headers.dart';final class UrlscannerGetScanResponse2DataRequestsRequestRedirectResponse {const UrlscannerGetScanResponse2DataRequestsRequestRedirectResponse({required this.charset, this.headers, required this.mimeType, required this.protocol, required this.remoteIpAddress, required this.remotePort, required this.securityHeaders, required this.securityState, required this.status, required this.statusText, required this.url, });

factory UrlscannerGetScanResponse2DataRequestsRequestRedirectResponse.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2DataRequestsRequestRedirectResponse(
  charset: json['charset'] as String,
  headers: (json['headers'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  mimeType: json['mimeType'] as String,
  protocol: json['protocol'] as String,
  remoteIpAddress: json['remoteIPAddress'] as String,
  remotePort: (json['remotePort'] as num).toDouble(),
  securityHeaders: (json['securityHeaders'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2DataRequestsRequestRedirectResponseSecurityHeaders.fromJson(e as Map<String, dynamic>)).toList(),
  securityState: json['securityState'] as String,
  status: (json['status'] as num).toDouble(),
  statusText: json['statusText'] as String,
  url: json['url'] as String,
); }

final String charset;

final Map<String,dynamic>? headers;

final String mimeType;

final String protocol;

final String remoteIpAddress;

final double remotePort;

final List<UrlscannerGetScanResponse2DataRequestsRequestRedirectResponseSecurityHeaders> securityHeaders;

final String securityState;

final double status;

final String statusText;

final String url;

Map<String, dynamic> toJson() { return {
  'charset': charset,
  'headers': ?headers,
  'mimeType': mimeType,
  'protocol': protocol,
  'remoteIPAddress': remoteIpAddress,
  'remotePort': remotePort,
  'securityHeaders': securityHeaders.map((e) => e.toJson()).toList(),
  'securityState': securityState,
  'status': status,
  'statusText': statusText,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('charset') && json['charset'] is String &&
      json.containsKey('mimeType') && json['mimeType'] is String &&
      json.containsKey('protocol') && json['protocol'] is String &&
      json.containsKey('remoteIPAddress') && json['remoteIPAddress'] is String &&
      json.containsKey('remotePort') && json['remotePort'] is num &&
      json.containsKey('securityHeaders') &&
      json.containsKey('securityState') && json['securityState'] is String &&
      json.containsKey('status') && json['status'] is num &&
      json.containsKey('statusText') && json['statusText'] is String &&
      json.containsKey('url') && json['url'] is String; } 
UrlscannerGetScanResponse2DataRequestsRequestRedirectResponse copyWith({String? charset, Map<String, dynamic> Function()? headers, String? mimeType, String? protocol, String? remoteIpAddress, double? remotePort, List<UrlscannerGetScanResponse2DataRequestsRequestRedirectResponseSecurityHeaders>? securityHeaders, String? securityState, double? status, String? statusText, String? url, }) { return UrlscannerGetScanResponse2DataRequestsRequestRedirectResponse(
  charset: charset ?? this.charset,
  headers: headers != null ? headers() : this.headers,
  mimeType: mimeType ?? this.mimeType,
  protocol: protocol ?? this.protocol,
  remoteIpAddress: remoteIpAddress ?? this.remoteIpAddress,
  remotePort: remotePort ?? this.remotePort,
  securityHeaders: securityHeaders ?? this.securityHeaders,
  securityState: securityState ?? this.securityState,
  status: status ?? this.status,
  statusText: statusText ?? this.statusText,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2DataRequestsRequestRedirectResponse &&
          charset == other.charset &&
          headers == other.headers &&
          mimeType == other.mimeType &&
          protocol == other.protocol &&
          remoteIpAddress == other.remoteIpAddress &&
          remotePort == other.remotePort &&
          listEquals(securityHeaders, other.securityHeaders) &&
          securityState == other.securityState &&
          status == other.status &&
          statusText == other.statusText &&
          url == other.url; } 
@override int get hashCode { return Object.hash(charset, headers, mimeType, protocol, remoteIpAddress, remotePort, Object.hashAll(securityHeaders), securityState, status, statusText, url); } 
@override String toString() { return 'UrlscannerGetScanResponse2DataRequestsRequestRedirectResponse(charset: $charset, headers: $headers, mimeType: $mimeType, protocol: $protocol, remoteIpAddress: $remoteIpAddress, remotePort: $remotePort, securityHeaders: $securityHeaders, securityState: $securityState, status: $status, statusText: $statusText, url: $url)'; } 
 }
