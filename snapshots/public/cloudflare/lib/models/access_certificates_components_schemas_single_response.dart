// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_certificates.dart';final class AccessCertificatesComponentsSchemasSingleResponse {const AccessCertificatesComponentsSchemasSingleResponse({this.result});

factory AccessCertificatesComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessCertificatesComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessCertificates.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessCertificates? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCertificatesComponentsSchemasSingleResponse copyWith({AccessCertificates Function()? result}) { return AccessCertificatesComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCertificatesComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessCertificatesComponentsSchemasSingleResponse(result: $result)'; } 
 }
