// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_certificates.dart';final class TlsCertificatesAndHostnamesSchemasCertificateResponseCollection {const TlsCertificatesAndHostnamesSchemasCertificateResponseCollection({this.result});

factory TlsCertificatesAndHostnamesSchemasCertificateResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesSchemasCertificateResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesCertificates.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TlsCertificatesAndHostnamesCertificates>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesSchemasCertificateResponseCollection copyWith({List<TlsCertificatesAndHostnamesCertificates> Function()? result}) { return TlsCertificatesAndHostnamesSchemasCertificateResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesSchemasCertificateResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesSchemasCertificateResponseCollection(result: $result)'; } 
 }
