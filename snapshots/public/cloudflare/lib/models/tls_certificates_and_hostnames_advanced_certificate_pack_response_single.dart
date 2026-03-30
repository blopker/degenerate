// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_certificate_pack.dart';final class TlsCertificatesAndHostnamesAdvancedCertificatePackResponseSingle {const TlsCertificatesAndHostnamesAdvancedCertificatePackResponseSingle({this.result});

factory TlsCertificatesAndHostnamesAdvancedCertificatePackResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesAdvancedCertificatePackResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCertificatePack.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCertificatePack? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesAdvancedCertificatePackResponseSingle copyWith({TlsCertificatesAndHostnamesCertificatePack Function()? result}) { return TlsCertificatesAndHostnamesAdvancedCertificatePackResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesAdvancedCertificatePackResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesAdvancedCertificatePackResponseSingle(result: $result)'; } 
 }
