// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_certificates.dart';final class TlsCertificatesAndHostnamesSchemasCertificateResponseSingle {const TlsCertificatesAndHostnamesSchemasCertificateResponseSingle({this.result});

factory TlsCertificatesAndHostnamesSchemasCertificateResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesSchemasCertificateResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCertificates.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCertificates? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesSchemasCertificateResponseSingle copyWith({TlsCertificatesAndHostnamesCertificates Function()? result}) { return TlsCertificatesAndHostnamesSchemasCertificateResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesSchemasCertificateResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesSchemasCertificateResponseSingle(result: $result)'; } 
 }
