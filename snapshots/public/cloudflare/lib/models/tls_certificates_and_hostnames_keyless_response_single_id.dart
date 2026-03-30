// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_keyless_response_single_id_result.dart';final class TlsCertificatesAndHostnamesKeylessResponseSingleId {const TlsCertificatesAndHostnamesKeylessResponseSingleId({this.result});

factory TlsCertificatesAndHostnamesKeylessResponseSingleId.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesKeylessResponseSingleId(
  result: json['result'] != null ? TlsCertificatesAndHostnamesKeylessResponseSingleIdResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesKeylessResponseSingleIdResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesKeylessResponseSingleId copyWith({TlsCertificatesAndHostnamesKeylessResponseSingleIdResult Function()? result}) { return TlsCertificatesAndHostnamesKeylessResponseSingleId(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesKeylessResponseSingleId &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesKeylessResponseSingleId(result: $result)'; } 
 }
