// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_certificate_revoke_response_result.dart';final class TlsCertificatesAndHostnamesCertificateRevokeResponse {const TlsCertificatesAndHostnamesCertificateRevokeResponse({this.result});

factory TlsCertificatesAndHostnamesCertificateRevokeResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificateRevokeResponse(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCertificateRevokeResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCertificateRevokeResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificateRevokeResponse copyWith({TlsCertificatesAndHostnamesCertificateRevokeResponseResult Function()? result}) { return TlsCertificatesAndHostnamesCertificateRevokeResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificateRevokeResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificateRevokeResponse(result: $result)'; } 
 }
