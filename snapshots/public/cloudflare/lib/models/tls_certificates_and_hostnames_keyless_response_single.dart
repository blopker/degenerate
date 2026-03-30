// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_base.dart';final class TlsCertificatesAndHostnamesKeylessResponseSingle {const TlsCertificatesAndHostnamesKeylessResponseSingle({this.result});

factory TlsCertificatesAndHostnamesKeylessResponseSingle.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesKeylessResponseSingle(
  result: json['result'] != null ? TlsCertificatesAndHostnamesBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesKeylessResponseSingle copyWith({TlsCertificatesAndHostnamesBase Function()? result}) { return TlsCertificatesAndHostnamesKeylessResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesKeylessResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesKeylessResponseSingle(result: $result)'; } 
 }
