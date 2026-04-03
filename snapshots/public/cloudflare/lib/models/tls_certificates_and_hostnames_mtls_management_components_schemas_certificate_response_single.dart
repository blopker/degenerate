// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_components_schemas_certificate_object.dart';@immutable final class TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseSingle {const TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseSingle({this.result});

factory TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesComponentsSchemasCertificateObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesComponentsSchemasCertificateObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseSingle copyWith({TlsCertificatesAndHostnamesComponentsSchemasCertificateObject Function()? result}) { return TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseSingle(result: $result)'; } 
 }
