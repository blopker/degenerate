// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_certificates.dart';final class AccessCertificatesComponentsSchemasResponseCollection {const AccessCertificatesComponentsSchemasResponseCollection({this.result});

factory AccessCertificatesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessCertificatesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessCertificates.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessCertificates>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCertificatesComponentsSchemasResponseCollection copyWith({List<AccessCertificates> Function()? result}) { return AccessCertificatesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCertificatesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessCertificatesComponentsSchemasResponseCollection(result: $result)'; } 
 }
