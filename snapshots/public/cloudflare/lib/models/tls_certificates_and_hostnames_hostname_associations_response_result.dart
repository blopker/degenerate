// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class TlsCertificatesAndHostnamesHostnameAssociationsResponseResult {const TlsCertificatesAndHostnamesHostnameAssociationsResponseResult({this.hostnames});

factory TlsCertificatesAndHostnamesHostnameAssociationsResponseResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesHostnameAssociationsResponseResult(
  hostnames: (json['hostnames'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? hostnames;

Map<String, dynamic> toJson() { return {
  'hostnames': ?hostnames,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'hostnames'}.contains(key)); } 
TlsCertificatesAndHostnamesHostnameAssociationsResponseResult copyWith({List<String> Function()? hostnames}) { return TlsCertificatesAndHostnamesHostnameAssociationsResponseResult(
  hostnames: hostnames != null ? hostnames() : this.hostnames,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesHostnameAssociationsResponseResult &&
          listEquals(hostnames, other.hostnames); } 
@override int get hashCode { return Object.hashAll(hostnames ?? const []).hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesHostnameAssociationsResponseResult(hostnames: $hostnames)'; } 
 }
