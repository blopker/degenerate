// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The request header is used to pass additional information with an HTTP request. Currently supported header is 'Host'.
final class LoadBalancingSchemasHeader {const LoadBalancingSchemasHeader({this.host});

factory LoadBalancingSchemasHeader.fromJson(Map<String, dynamic> json) { return LoadBalancingSchemasHeader(
  host: (json['Host'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The 'Host' header allows to override the hostname set in the HTTP request. Current support is 1 'Host' header override per origin.
final List<String>? host;

Map<String, dynamic> toJson() { return {
  'Host': ?host,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
LoadBalancingSchemasHeader copyWith({List<String> Function()? host}) { return LoadBalancingSchemasHeader(
  host: host != null ? host() : this.host,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingSchemasHeader &&
          listEquals(host, other.host); } 
@override int get hashCode { return Object.hashAll(host ?? const []).hashCode; } 
@override String toString() { return 'LoadBalancingSchemasHeader(host: $host)'; } 
 }
