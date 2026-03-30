// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_validation_method_definition.dart';/// Result status.
extension type const TlsCertificatesAndHostnamesValidationMethodComponentsSchemasStatus(String value) {
factory TlsCertificatesAndHostnamesValidationMethodComponentsSchemasStatus.fromJson(String json) => TlsCertificatesAndHostnamesValidationMethodComponentsSchemasStatus(json);

String toJson() => value;

}
final class TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult {const TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult({this.status, this.validationMethod, });

factory TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult(
  status: json['status'] != null ? TlsCertificatesAndHostnamesValidationMethodComponentsSchemasStatus.fromJson(json['status'] as String) : null,
  validationMethod: json['validation_method'] != null ? TlsCertificatesAndHostnamesValidationMethodDefinition.fromJson(json['validation_method'] as String) : null,
); }

final TlsCertificatesAndHostnamesValidationMethodComponentsSchemasStatus? status;

final TlsCertificatesAndHostnamesValidationMethodDefinition? validationMethod;

Map<String, dynamic> toJson() { return {
  if (status != null) 'status': status?.toJson(),
  if (validationMethod != null) 'validation_method': validationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status', 'validation_method'}.contains(key)); } 
TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult copyWith({TlsCertificatesAndHostnamesValidationMethodComponentsSchemasStatus Function()? status, TlsCertificatesAndHostnamesValidationMethodDefinition Function()? validationMethod, }) { return TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult(
  status: status != null ? status() : this.status,
  validationMethod: validationMethod != null ? validationMethod() : this.validationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult &&
          status == other.status &&
          validationMethod == other.validationMethod; } 
@override int get hashCode { return Object.hash(status, validationMethod); } 
@override String toString() { return 'TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult(status: $status, validationMethod: $validationMethod)'; } 
 }
