// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_certificate_object_post.dart';@immutable final class TlsCertificatesAndHostnamesCertificateResponseSinglePost {const TlsCertificatesAndHostnamesCertificateResponseSinglePost({this.result});

factory TlsCertificatesAndHostnamesCertificateResponseSinglePost.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificateResponseSinglePost(
  result: json['result'] != null ? TlsCertificatesAndHostnamesCertificateObjectPost.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TlsCertificatesAndHostnamesCertificateObjectPost? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificateResponseSinglePost copyWith({TlsCertificatesAndHostnamesCertificateObjectPost Function()? result}) { return TlsCertificatesAndHostnamesCertificateResponseSinglePost(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificateResponseSinglePost &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificateResponseSinglePost(result: $result)'; } 
 }
