// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_customhostname.dart';@immutable final class TlsCertificatesAndHostnamesCustomHostnameResponseSingle {const TlsCertificatesAndHostnamesCustomHostnameResponseSingle({this.result});

factory TlsCertificatesAndHostnamesCustomHostnameResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCustomHostnameResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCustomhostname.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCustomhostname? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCustomHostnameResponseSingle copyWith({TlsCertificatesAndHostnamesCustomhostname Function()? result}) { return TlsCertificatesAndHostnamesCustomHostnameResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCustomHostnameResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCustomHostnameResponseSingle(result: $result)'; } 
 }
