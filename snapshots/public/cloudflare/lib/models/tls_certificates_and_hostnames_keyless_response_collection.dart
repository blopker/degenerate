// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_base.dart';@immutable final class TlsCertificatesAndHostnamesKeylessResponseCollection {const TlsCertificatesAndHostnamesKeylessResponseCollection({this.result});

factory TlsCertificatesAndHostnamesKeylessResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesKeylessResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesBase.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TlsCertificatesAndHostnamesBase>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesKeylessResponseCollection copyWith({List<TlsCertificatesAndHostnamesBase> Function()? result}) { return TlsCertificatesAndHostnamesKeylessResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesKeylessResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesKeylessResponseCollection(result: $result)'; } 
 }
