// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull.dart';@immutable final class TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseCollection {const TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseCollection({this.result});

factory TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseCollection copyWith({List<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull> Function()? result}) { return TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesComponentsSchemasCertificateResponseCollection(result: $result)'; } 
 }
