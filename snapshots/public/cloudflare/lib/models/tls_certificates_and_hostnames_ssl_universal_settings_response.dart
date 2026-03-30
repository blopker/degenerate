// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_universal.dart';final class TlsCertificatesAndHostnamesSslUniversalSettingsResponse {const TlsCertificatesAndHostnamesSslUniversalSettingsResponse({this.result});

factory TlsCertificatesAndHostnamesSslUniversalSettingsResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesSslUniversalSettingsResponse(
  result: json['result'] != null ? TlsCertificatesAndHostnamesUniversal.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesUniversal? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesSslUniversalSettingsResponse copyWith({TlsCertificatesAndHostnamesUniversal Function()? result}) { return TlsCertificatesAndHostnamesSslUniversalSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesSslUniversalSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesSslUniversalSettingsResponse(result: $result)'; } 
 }
