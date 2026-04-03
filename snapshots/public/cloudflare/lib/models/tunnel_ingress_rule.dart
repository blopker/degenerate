// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_origin_request.dart';/// Public hostname
@immutable final class TunnelIngressRule {const TunnelIngressRule({required this.hostname, required this.service, this.originRequest, this.path, });

factory TunnelIngressRule.fromJson(Map<String, dynamic> json) { return TunnelIngressRule(
  hostname: json['hostname'] as String,
  originRequest: json['originRequest'] != null ? TunnelOriginRequest.fromJson(json['originRequest'] as Map<String, dynamic>) : null,
  path: json['path'] as String?,
  service: json['service'] as String,
); }

/// Public hostname for this service.
final String hostname;

final TunnelOriginRequest? originRequest;

/// Requests with this path route to this public hostname.
final String? path;

/// Protocol and address of destination server. Supported protocols: http://, https://, unix://, tcp://, ssh://, rdp://, unix+tls://, smb://. Alternatively can return a HTTP status code http_status:`[code]` e.g. 'http_status:404'.
/// 
final String service;

Map<String, dynamic> toJson() { return {
  'hostname': hostname,
  if (originRequest != null) 'originRequest': originRequest?.toJson(),
  'path': ?path,
  'service': service,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('hostname') && json['hostname'] is String &&
      json.containsKey('service') && json['service'] is String; } 
TunnelIngressRule copyWith({String? hostname, TunnelOriginRequest Function()? originRequest, String Function()? path, String? service, }) { return TunnelIngressRule(
  hostname: hostname ?? this.hostname,
  originRequest: originRequest != null ? originRequest() : this.originRequest,
  path: path != null ? path() : this.path,
  service: service ?? this.service,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelIngressRule &&
          hostname == other.hostname &&
          originRequest == other.originRequest &&
          path == other.path &&
          service == other.service; } 
@override int get hashCode { return Object.hash(hostname, originRequest, path, service); } 
@override String toString() { return 'TunnelIngressRule(hostname: $hostname, originRequest: $originRequest, path: $path, service: $service)'; } 
 }
