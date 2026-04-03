// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_allow_insecure.dart';import 'load_balancing_consecutive_down.dart';import 'load_balancing_consecutive_up.dart';import 'load_balancing_description.dart';import 'load_balancing_expected_body.dart';import 'load_balancing_expected_codes.dart';import 'load_balancing_follow_redirects.dart';import 'load_balancing_interval.dart';import 'load_balancing_method.dart';import 'load_balancing_path.dart';import 'load_balancing_port.dart';import 'load_balancing_probe_zone.dart';import 'load_balancing_retries.dart';import 'load_balancing_timeout.dart';import 'load_balancing_type.dart';@immutable final class LoadBalancingMonitorEditable {const LoadBalancingMonitorEditable({this.allowInsecure, this.consecutiveDown, this.consecutiveUp, this.description, this.expectedBody, this.expectedCodes, this.followRedirects, this.header, this.interval, this.method, this.path, this.port, this.probeZone, this.retries, this.timeout, this.type, });

factory LoadBalancingMonitorEditable.fromJson(Map<String, dynamic> json) { return LoadBalancingMonitorEditable(
  allowInsecure: json['allow_insecure'] != null ? LoadBalancingAllowInsecure.fromJson(json['allow_insecure'] as bool) : null,
  consecutiveDown: json['consecutive_down'] != null ? LoadBalancingConsecutiveDown.fromJson(json['consecutive_down'] as num) : null,
  consecutiveUp: json['consecutive_up'] != null ? LoadBalancingConsecutiveUp.fromJson(json['consecutive_up'] as num) : null,
  description: json['description'] != null ? LoadBalancingDescription.fromJson(json['description'] as String) : null,
  expectedBody: json['expected_body'] != null ? LoadBalancingExpectedBody.fromJson(json['expected_body'] as String) : null,
  expectedCodes: json['expected_codes'] != null ? LoadBalancingExpectedCodes.fromJson(json['expected_codes'] as String) : null,
  followRedirects: json['follow_redirects'] != null ? LoadBalancingFollowRedirects.fromJson(json['follow_redirects'] as bool) : null,
  header: (json['header'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  interval: json['interval'] != null ? LoadBalancingInterval.fromJson(json['interval'] as num) : null,
  method: json['method'] != null ? LoadBalancingMethod.fromJson(json['method'] as String) : null,
  path: json['path'] != null ? LoadBalancingPath.fromJson(json['path'] as String) : null,
  port: json['port'] != null ? LoadBalancingPort.fromJson(json['port'] as num) : null,
  probeZone: json['probe_zone'] != null ? LoadBalancingProbeZone.fromJson(json['probe_zone'] as String) : null,
  retries: json['retries'] != null ? LoadBalancingRetries.fromJson(json['retries'] as num) : null,
  timeout: json['timeout'] != null ? LoadBalancingTimeout.fromJson(json['timeout'] as num) : null,
  type: json['type'] != null ? LoadBalancingType.fromJson(json['type'] as String) : null,
); }

/// Do not validate the certificate when monitor use HTTPS. This parameter is currently only valid for HTTP and HTTPS monitors.
final LoadBalancingAllowInsecure? allowInsecure;

/// To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times.
final LoadBalancingConsecutiveDown? consecutiveDown;

/// To be marked healthy the monitored origin must pass this healthcheck N consecutive times.
final LoadBalancingConsecutiveUp? consecutiveUp;

/// Object description.
final LoadBalancingDescription? description;

/// A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. This parameter is only valid for HTTP and HTTPS monitors.
final LoadBalancingExpectedBody? expectedBody;

/// The expected HTTP response code or code range of the health check. This parameter is only valid for HTTP and HTTPS monitors.
final LoadBalancingExpectedCodes? expectedCodes;

/// Follow redirects if returned by the origin. This parameter is only valid for HTTP and HTTPS monitors.
final LoadBalancingFollowRedirects? followRedirects;

/// The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. This parameter is only valid for HTTP and HTTPS monitors.
final Map<String,List<String>>? header;

/// The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations.
final LoadBalancingInterval? interval;

/// The method to use for the health check. This defaults to 'GET' for HTTP/HTTPS based checks and 'connection_established' for TCP based health checks.
final LoadBalancingMethod? method;

final LoadBalancingPath? path;

final LoadBalancingPort? port;

final LoadBalancingProbeZone? probeZone;

final LoadBalancingRetries? retries;

final LoadBalancingTimeout? timeout;

final LoadBalancingType? type;

Map<String, dynamic> toJson() { return {
  if (allowInsecure != null) 'allow_insecure': allowInsecure?.toJson(),
  if (consecutiveDown != null) 'consecutive_down': consecutiveDown?.toJson(),
  if (consecutiveUp != null) 'consecutive_up': consecutiveUp?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (expectedBody != null) 'expected_body': expectedBody?.toJson(),
  if (expectedCodes != null) 'expected_codes': expectedCodes?.toJson(),
  if (followRedirects != null) 'follow_redirects': followRedirects?.toJson(),
  if (header != null) 'header': header?.map((k, v) => MapEntry(k, v)),
  if (interval != null) 'interval': interval?.toJson(),
  if (method != null) 'method': method?.toJson(),
  if (path != null) 'path': path?.toJson(),
  if (port != null) 'port': port?.toJson(),
  if (probeZone != null) 'probe_zone': probeZone?.toJson(),
  if (retries != null) 'retries': retries?.toJson(),
  if (timeout != null) 'timeout': timeout?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allow_insecure', 'consecutive_down', 'consecutive_up', 'description', 'expected_body', 'expected_codes', 'follow_redirects', 'header', 'interval', 'method', 'path', 'port', 'probe_zone', 'retries', 'timeout', 'type'}.contains(key)); } 
LoadBalancingMonitorEditable copyWith({LoadBalancingAllowInsecure Function()? allowInsecure, LoadBalancingConsecutiveDown Function()? consecutiveDown, LoadBalancingConsecutiveUp Function()? consecutiveUp, LoadBalancingDescription Function()? description, LoadBalancingExpectedBody Function()? expectedBody, LoadBalancingExpectedCodes Function()? expectedCodes, LoadBalancingFollowRedirects Function()? followRedirects, Map<String, List<String>> Function()? header, LoadBalancingInterval Function()? interval, LoadBalancingMethod Function()? method, LoadBalancingPath Function()? path, LoadBalancingPort? Function()? port, LoadBalancingProbeZone Function()? probeZone, LoadBalancingRetries Function()? retries, LoadBalancingTimeout Function()? timeout, LoadBalancingType Function()? type, }) { return LoadBalancingMonitorEditable(
  allowInsecure: allowInsecure != null ? allowInsecure() : this.allowInsecure,
  consecutiveDown: consecutiveDown != null ? consecutiveDown() : this.consecutiveDown,
  consecutiveUp: consecutiveUp != null ? consecutiveUp() : this.consecutiveUp,
  description: description != null ? description() : this.description,
  expectedBody: expectedBody != null ? expectedBody() : this.expectedBody,
  expectedCodes: expectedCodes != null ? expectedCodes() : this.expectedCodes,
  followRedirects: followRedirects != null ? followRedirects() : this.followRedirects,
  header: header != null ? header() : this.header,
  interval: interval != null ? interval() : this.interval,
  method: method != null ? method() : this.method,
  path: path != null ? path() : this.path,
  port: port != null ? port() : this.port,
  probeZone: probeZone != null ? probeZone() : this.probeZone,
  retries: retries != null ? retries() : this.retries,
  timeout: timeout != null ? timeout() : this.timeout,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingMonitorEditable &&
          allowInsecure == other.allowInsecure &&
          consecutiveDown == other.consecutiveDown &&
          consecutiveUp == other.consecutiveUp &&
          description == other.description &&
          expectedBody == other.expectedBody &&
          expectedCodes == other.expectedCodes &&
          followRedirects == other.followRedirects &&
          header == other.header &&
          interval == other.interval &&
          method == other.method &&
          path == other.path &&
          port == other.port &&
          probeZone == other.probeZone &&
          retries == other.retries &&
          timeout == other.timeout &&
          type == other.type; } 
@override int get hashCode { return Object.hash(allowInsecure, consecutiveDown, consecutiveUp, description, expectedBody, expectedCodes, followRedirects, header, interval, method, path, port, probeZone, retries, timeout, type); } 
@override String toString() { return 'LoadBalancingMonitorEditable(allowInsecure: $allowInsecure, consecutiveDown: $consecutiveDown, consecutiveUp: $consecutiveUp, description: $description, expectedBody: $expectedBody, expectedCodes: $expectedCodes, followRedirects: $followRedirects, header: $header, interval: $interval, method: $method, path: $path, port: $port, probeZone: $probeZone, retries: $retries, timeout: $timeout, type: $type)'; } 
 }
