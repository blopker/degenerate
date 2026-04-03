// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_validation_method_definition.dart';@immutable final class TlsCertificatesAndHostnamesComponentsSchemasValidationMethod {const TlsCertificatesAndHostnamesComponentsSchemasValidationMethod({required this.validationMethod});

factory TlsCertificatesAndHostnamesComponentsSchemasValidationMethod.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesComponentsSchemasValidationMethod(
  validationMethod: TlsCertificatesAndHostnamesValidationMethodDefinition.fromJson(json['validation_method'] as String),
); }

final TlsCertificatesAndHostnamesValidationMethodDefinition validationMethod;

Map<String, dynamic> toJson() { return {
  'validation_method': validationMethod.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('validation_method'); } 
TlsCertificatesAndHostnamesComponentsSchemasValidationMethod copyWith({TlsCertificatesAndHostnamesValidationMethodDefinition? validationMethod}) { return TlsCertificatesAndHostnamesComponentsSchemasValidationMethod(
  validationMethod: validationMethod ?? this.validationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesComponentsSchemasValidationMethod &&
          validationMethod == other.validationMethod; } 
@override int get hashCode { return validationMethod.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesComponentsSchemasValidationMethod(validationMethod: $validationMethod)'; } 
 }
