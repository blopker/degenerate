// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_components_schemas_certificate_object.dart';import 'tls_certificates_and_hostnames_mtls_management_components_schemas_certificate_response_collection_result_info.dart';final class TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection {const TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection({this.result, this.resultInfo, });

factory TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesComponentsSchemasCertificateObject.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<TlsCertificatesAndHostnamesComponentsSchemasCertificateObject>? result;

final TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'result_info'}.contains(key)); } 
TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection copyWith({List<TlsCertificatesAndHostnamesComponentsSchemasCertificateObject> Function()? result, TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo Function()? resultInfo, }) { return TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection(
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollection(result: $result, resultInfo: $resultInfo)'; } 
 }
