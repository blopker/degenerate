// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'http_header.dart';import 'io_k8s_apimachinery_pkg_util_intstr_int_or_string.dart';/// HTTPGetAction describes an action based on HTTP Get requests.
final class HttpGetAction {const HttpGetAction({this.host, this.httpHeaders, this.path, required this.port, this.scheme, });

factory HttpGetAction.fromJson(Map<String, dynamic> json) { return HttpGetAction(
  host: json['host'] as String?,
  httpHeaders: (json['httpHeaders'] as List<dynamic>?)?.map((e) => HttpHeader.fromJson(e as Map<String, dynamic>)).toList(),
  path: json['path'] as String?,
  port: OneOf2.parse(json['port'], fromA: (v) => (v as num).toInt(), fromB: (v) => v as String,),
  scheme: json['scheme'] as String?,
); }

/// Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
final String? host;

/// Custom headers to set in the request. HTTP allows repeated headers.
final List<HttpHeader>? httpHeaders;

/// Path to access on the HTTP server.
final String? path;

/// Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
final IoK8sApimachineryPkgUtilIntstrIntOrString port;

/// Scheme to use for connecting to the host. Defaults to HTTP.
final String? scheme;

Map<String, dynamic> toJson() { return {
  'host': ?host,
  if (httpHeaders != null) 'httpHeaders': httpHeaders?.map((e) => e.toJson()).toList(),
  'path': ?path,
  'port': port.toJson(),
  'scheme': ?scheme,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('port'); } 
HttpGetAction copyWith({String Function()? host, List<HttpHeader> Function()? httpHeaders, String Function()? path, IoK8sApimachineryPkgUtilIntstrIntOrString? port, String Function()? scheme, }) { return HttpGetAction(
  host: host != null ? host() : this.host,
  httpHeaders: httpHeaders != null ? httpHeaders() : this.httpHeaders,
  path: path != null ? path() : this.path,
  port: port ?? this.port,
  scheme: scheme != null ? scheme() : this.scheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HttpGetAction &&
          host == other.host &&
          listEquals(httpHeaders, other.httpHeaders) &&
          path == other.path &&
          port == other.port &&
          scheme == other.scheme; } 
@override int get hashCode { return Object.hash(host, Object.hashAll(httpHeaders ?? const []), path, port, scheme); } 
@override String toString() { return 'HttpGetAction(host: $host, httpHeaders: $httpHeaders, path: $path, port: $port, scheme: $scheme)'; } 
 }
