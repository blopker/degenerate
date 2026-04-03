// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_certificates.dart';@immutable final class AccessCertificatesComponentsSchemasSingleResponse2 {const AccessCertificatesComponentsSchemasSingleResponse2({this.result});

factory AccessCertificatesComponentsSchemasSingleResponse2.fromJson(Map<String, dynamic> json) { return AccessCertificatesComponentsSchemasSingleResponse2(
  result: json['result'] != null ? AccessComponentsSchemasCertificates.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessComponentsSchemasCertificates? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCertificatesComponentsSchemasSingleResponse2 copyWith({AccessComponentsSchemasCertificates Function()? result}) { return AccessCertificatesComponentsSchemasSingleResponse2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCertificatesComponentsSchemasSingleResponse2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessCertificatesComponentsSchemasSingleResponse2(result: $result)'; } 
 }
