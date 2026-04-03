// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_custom_trust_store_response_id_only_result.dart';@immutable final class TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnly {const TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnly({this.result});

factory TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnly.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnly(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnlyResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnlyResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnly copyWith({TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnlyResult Function()? result}) { return TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnly(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnly &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnly(result: $result)'; } 
 }
