// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_certificate_pack_quota_response_result.dart';@immutable final class TlsCertificatesAndHostnamesCertificatePackQuotaResponse {const TlsCertificatesAndHostnamesCertificatePackQuotaResponse({this.result});

factory TlsCertificatesAndHostnamesCertificatePackQuotaResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificatePackQuotaResponse(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificatePackQuotaResponse copyWith({TlsCertificatesAndHostnamesCertificatePackQuotaResponseResult Function()? result}) { return TlsCertificatesAndHostnamesCertificatePackQuotaResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificatePackQuotaResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificatePackQuotaResponse(result: $result)'; } 
 }
