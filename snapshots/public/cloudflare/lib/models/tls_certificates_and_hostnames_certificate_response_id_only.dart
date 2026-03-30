// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_certificate_response_id_only_result.dart';final class TlsCertificatesAndHostnamesCertificateResponseIdOnly {const TlsCertificatesAndHostnamesCertificateResponseIdOnly({this.result});

factory TlsCertificatesAndHostnamesCertificateResponseIdOnly.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificateResponseIdOnly(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificateResponseIdOnly copyWith({TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult Function()? result}) { return TlsCertificatesAndHostnamesCertificateResponseIdOnly(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificateResponseIdOnly &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificateResponseIdOnly(result: $result)'; } 
 }
