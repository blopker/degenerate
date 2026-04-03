// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_hostname_certid_object.dart';@immutable final class TlsCertificatesAndHostnamesHostnameAopSingleResponse {const TlsCertificatesAndHostnamesHostnameAopSingleResponse({this.result});

factory TlsCertificatesAndHostnamesHostnameAopSingleResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesHostnameAopSingleResponse(
  result: json['result'] != null ? TlsCertificatesAndHostnamesHostnameCertidObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesHostnameCertidObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesHostnameAopSingleResponse copyWith({TlsCertificatesAndHostnamesHostnameCertidObject Function()? result}) { return TlsCertificatesAndHostnamesHostnameAopSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesHostnameAopSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesHostnameAopSingleResponse(result: $result)'; } 
 }
