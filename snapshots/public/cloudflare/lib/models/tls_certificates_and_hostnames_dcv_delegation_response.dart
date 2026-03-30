// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_uuid_object.dart';final class TlsCertificatesAndHostnamesDcvDelegationResponse {const TlsCertificatesAndHostnamesDcvDelegationResponse({this.result});

factory TlsCertificatesAndHostnamesDcvDelegationResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesDcvDelegationResponse(
  result: json['result'] != null ? TlsCertificatesAndHostnamesUuidObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesUuidObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesDcvDelegationResponse copyWith({TlsCertificatesAndHostnamesUuidObject Function()? result}) { return TlsCertificatesAndHostnamesDcvDelegationResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesDcvDelegationResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesDcvDelegationResponse(result: $result)'; } 
 }
