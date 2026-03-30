// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_controller_identify_ek_cert_result.dart';final class MconnControllerIdentifyEkCertResponse {const MconnControllerIdentifyEkCertResponse({this.result});

factory MconnControllerIdentifyEkCertResponse.fromJson(Map<String, dynamic> json) { return MconnControllerIdentifyEkCertResponse(
  result: json['result'] != null ? MconnControllerIdentifyEkCertResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnControllerIdentifyEkCertResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnControllerIdentifyEkCertResponse copyWith({MconnControllerIdentifyEkCertResult Function()? result}) { return MconnControllerIdentifyEkCertResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerIdentifyEkCertResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnControllerIdentifyEkCertResponse(result: $result)'; } 
 }
