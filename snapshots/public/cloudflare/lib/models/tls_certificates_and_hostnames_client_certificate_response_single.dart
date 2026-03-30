// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_client_certificate.dart';final class TlsCertificatesAndHostnamesClientCertificateResponseSingle {const TlsCertificatesAndHostnamesClientCertificateResponseSingle({this.result});

factory TlsCertificatesAndHostnamesClientCertificateResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesClientCertificateResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesClientCertificate.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesClientCertificate? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesClientCertificateResponseSingle copyWith({TlsCertificatesAndHostnamesClientCertificate Function()? result}) { return TlsCertificatesAndHostnamesClientCertificateResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesClientCertificateResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesClientCertificateResponseSingle(result: $result)'; } 
 }
