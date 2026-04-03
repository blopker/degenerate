// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull.dart';@immutable final class TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseSingle {const TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseSingle({this.result});

factory TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseSingle copyWith({TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull Function()? result}) { return TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseSingle(result: $result)'; } 
 }
