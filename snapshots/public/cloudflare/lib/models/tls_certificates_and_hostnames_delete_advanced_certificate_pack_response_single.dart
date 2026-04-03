// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_delete_advanced_certificate_pack_response_single_result.dart';@immutable final class TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingle {const TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingle({this.result});

factory TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingle copyWith({TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult Function()? result}) { return TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingle(result: $result)'; } 
 }
