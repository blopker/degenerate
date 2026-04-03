// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_quota.dart';@immutable final class TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult {const TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult({this.advanced});

factory TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult(
  advanced: json['advanced'] != null ? TlsCertificatesAndHostnamesQuota.fromJson(json['advanced'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesQuota? advanced;

Map<String, dynamic> toJson() { return {
  if (advanced != null) 'advanced': advanced?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'advanced'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult copyWith({TlsCertificatesAndHostnamesQuota Function()? advanced}) { return TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult(
  advanced: advanced != null ? advanced() : this.advanced,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult &&
          advanced == other.advanced; } 
@override int get hashCode { return advanced.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult(advanced: $advanced)'; } 
 }
