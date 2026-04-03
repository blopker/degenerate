// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TlsCertificatesAndHostnamesHostnameAssociation {const TlsCertificatesAndHostnamesHostnameAssociation({this.hostnames, this.mtlsCertificateId, });

factory TlsCertificatesAndHostnamesHostnameAssociation.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesHostnameAssociation(
  hostnames: (json['hostnames'] as List<dynamic>?)?.map((e) => e as String).toList(),
  mtlsCertificateId: json['mtls_certificate_id'] as String?,
); }

final List<String>? hostnames;

/// The UUID for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls_certificate_id is given, the hostnames will be associated to your active Cloudflare Managed CA.
final String? mtlsCertificateId;

Map<String, dynamic> toJson() { return {
  'hostnames': ?hostnames,
  'mtls_certificate_id': ?mtlsCertificateId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'hostnames', 'mtls_certificate_id'}.contains(key)); } 
TlsCertificatesAndHostnamesHostnameAssociation copyWith({List<String> Function()? hostnames, String Function()? mtlsCertificateId, }) { return TlsCertificatesAndHostnamesHostnameAssociation(
  hostnames: hostnames != null ? hostnames() : this.hostnames,
  mtlsCertificateId: mtlsCertificateId != null ? mtlsCertificateId() : this.mtlsCertificateId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesHostnameAssociation &&
          listEquals(hostnames, other.hostnames) &&
          mtlsCertificateId == other.mtlsCertificateId; } 
@override int get hashCode { return Object.hash(Object.hashAll(hostnames ?? const []), mtlsCertificateId); } 
@override String toString() { return 'TlsCertificatesAndHostnamesHostnameAssociation(hostnames: $hostnames, mtlsCertificateId: $mtlsCertificateId)'; } 
 }
