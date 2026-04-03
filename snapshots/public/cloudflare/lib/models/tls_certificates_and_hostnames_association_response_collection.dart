// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_association_object.dart';@immutable final class TlsCertificatesAndHostnamesAssociationResponseCollection {const TlsCertificatesAndHostnamesAssociationResponseCollection({this.result});

factory TlsCertificatesAndHostnamesAssociationResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesAssociationResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesAssociationObject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TlsCertificatesAndHostnamesAssociationObject>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesAssociationResponseCollection copyWith({List<TlsCertificatesAndHostnamesAssociationObject> Function()? result}) { return TlsCertificatesAndHostnamesAssociationResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesAssociationResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesAssociationResponseCollection(result: $result)'; } 
 }
