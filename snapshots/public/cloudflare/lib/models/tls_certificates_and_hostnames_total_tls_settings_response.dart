// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_total_tls_settings_response_result.dart';@immutable final class TlsCertificatesAndHostnamesTotalTlsSettingsResponse {const TlsCertificatesAndHostnamesTotalTlsSettingsResponse({this.result});

factory TlsCertificatesAndHostnamesTotalTlsSettingsResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesTotalTlsSettingsResponse(
  result: json['result'] != null ? TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesTotalTlsSettingsResponse copyWith({TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult Function()? result}) { return TlsCertificatesAndHostnamesTotalTlsSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesTotalTlsSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesTotalTlsSettingsResponse(result: $result)'; } 
 }
