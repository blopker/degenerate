// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_certificate_pack.dart';final class TlsCertificatesAndHostnamesCertificatePackResponseSingle {const TlsCertificatesAndHostnamesCertificatePackResponseSingle({this.result});

factory TlsCertificatesAndHostnamesCertificatePackResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificatePackResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCertificatePack.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCertificatePack? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificatePackResponseSingle copyWith({TlsCertificatesAndHostnamesCertificatePack Function()? result}) { return TlsCertificatesAndHostnamesCertificatePackResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificatePackResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificatePackResponseSingle(result: $result)'; } 
 }
