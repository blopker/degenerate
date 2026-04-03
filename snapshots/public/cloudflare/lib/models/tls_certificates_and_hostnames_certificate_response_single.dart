// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_custom_certificate.dart';@immutable final class TlsCertificatesAndHostnamesCertificateResponseSingle {const TlsCertificatesAndHostnamesCertificateResponseSingle({this.result});

factory TlsCertificatesAndHostnamesCertificateResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificateResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCustomCertificate.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCustomCertificate? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificateResponseSingle copyWith({TlsCertificatesAndHostnamesCustomCertificate Function()? result}) { return TlsCertificatesAndHostnamesCertificateResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificateResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificateResponseSingle(result: $result)'; } 
 }
