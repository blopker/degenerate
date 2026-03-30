// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_customhostname.dart';final class TlsCertificatesAndHostnamesCustomHostnameResponseCollection {const TlsCertificatesAndHostnamesCustomHostnameResponseCollection({this.result});

factory TlsCertificatesAndHostnamesCustomHostnameResponseCollection.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCustomHostnameResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesCustomhostname.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TlsCertificatesAndHostnamesCustomhostname>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCustomHostnameResponseCollection copyWith({List<TlsCertificatesAndHostnamesCustomhostname> Function()? result}) { return TlsCertificatesAndHostnamesCustomHostnameResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCustomHostnameResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCustomHostnameResponseCollection(result: $result)'; } 
 }
