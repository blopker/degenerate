// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_fallbackorigin.dart';@immutable final class TlsCertificatesAndHostnamesFallbackOriginResponse {const TlsCertificatesAndHostnamesFallbackOriginResponse({this.result});

factory TlsCertificatesAndHostnamesFallbackOriginResponse.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesFallbackOriginResponse(
  result: json['result'] != null ? TlsCertificatesAndHostnamesFallbackorigin.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesFallbackorigin? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesFallbackOriginResponse copyWith({TlsCertificatesAndHostnamesFallbackorigin Function()? result}) { return TlsCertificatesAndHostnamesFallbackOriginResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesFallbackOriginResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesFallbackOriginResponse(result: $result)'; } 
 }
