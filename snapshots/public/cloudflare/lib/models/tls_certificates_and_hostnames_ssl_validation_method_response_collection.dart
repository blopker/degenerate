// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_ssl_validation_method_response_collection_result.dart';final class TlsCertificatesAndHostnamesSslValidationMethodResponseCollection {const TlsCertificatesAndHostnamesSslValidationMethodResponseCollection({this.result});

factory TlsCertificatesAndHostnamesSslValidationMethodResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesSslValidationMethodResponseCollection(
  result: json['result'] != null ? TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesSslValidationMethodResponseCollection copyWith({TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult Function()? result}) { return TlsCertificatesAndHostnamesSslValidationMethodResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesSslValidationMethodResponseCollection &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesSslValidationMethodResponseCollection(result: $result)'; } 
 }
