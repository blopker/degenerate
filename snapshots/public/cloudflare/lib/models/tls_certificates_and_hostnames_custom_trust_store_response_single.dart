// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_custom_trust_store.dart';final class TlsCertificatesAndHostnamesCustomTrustStoreResponseSingle {const TlsCertificatesAndHostnamesCustomTrustStoreResponseSingle({this.result});

factory TlsCertificatesAndHostnamesCustomTrustStoreResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCustomTrustStoreResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCustomTrustStore.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCustomTrustStore? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCustomTrustStoreResponseSingle copyWith({TlsCertificatesAndHostnamesCustomTrustStore Function()? result}) { return TlsCertificatesAndHostnamesCustomTrustStoreResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCustomTrustStoreResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCustomTrustStoreResponseSingle(result: $result)'; } 
 }
