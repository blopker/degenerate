// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_controller_attestation_session.dart';final class MconnDeleteAttestationSessionResponse {const MconnDeleteAttestationSessionResponse({this.result});

factory MconnDeleteAttestationSessionResponse.fromJson(Map<String, dynamic> json) { return MconnDeleteAttestationSessionResponse(
  result: json['result'] != null ? MconnControllerAttestationSession.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnControllerAttestationSession? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnDeleteAttestationSessionResponse copyWith({MconnControllerAttestationSession Function()? result}) { return MconnDeleteAttestationSessionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnDeleteAttestationSessionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnDeleteAttestationSessionResponse(result: $result)'; } 
 }
