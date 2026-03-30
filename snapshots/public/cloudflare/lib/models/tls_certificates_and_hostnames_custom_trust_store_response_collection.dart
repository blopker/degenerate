// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_custom_trust_store.dart';final class TlsCertificatesAndHostnamesCustomTrustStoreResponseCollection {const TlsCertificatesAndHostnamesCustomTrustStoreResponseCollection({this.result});

factory TlsCertificatesAndHostnamesCustomTrustStoreResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCustomTrustStoreResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesCustomTrustStore.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TlsCertificatesAndHostnamesCustomTrustStore>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCustomTrustStoreResponseCollection copyWith({List<TlsCertificatesAndHostnamesCustomTrustStore> Function()? result}) { return TlsCertificatesAndHostnamesCustomTrustStoreResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCustomTrustStoreResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCustomTrustStoreResponseCollection(result: $result)'; } 
 }
