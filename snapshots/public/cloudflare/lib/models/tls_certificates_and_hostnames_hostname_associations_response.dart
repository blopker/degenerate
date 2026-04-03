// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_hostname_associations_response_result.dart';@immutable final class TlsCertificatesAndHostnamesHostnameAssociationsResponse {const TlsCertificatesAndHostnamesHostnameAssociationsResponse({this.result});

factory TlsCertificatesAndHostnamesHostnameAssociationsResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesHostnameAssociationsResponse(
  result: json['result'] != null ? TlsCertificatesAndHostnamesHostnameAssociationsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesHostnameAssociationsResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesHostnameAssociationsResponse copyWith({TlsCertificatesAndHostnamesHostnameAssociationsResponseResult Function()? result}) { return TlsCertificatesAndHostnamesHostnameAssociationsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesHostnameAssociationsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesHostnameAssociationsResponse(result: $result)'; } 
 }
