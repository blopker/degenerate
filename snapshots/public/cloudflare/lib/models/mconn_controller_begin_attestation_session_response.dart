// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_controller_attestation_session.dart';@immutable final class MconnControllerBeginAttestationSessionResponse {const MconnControllerBeginAttestationSessionResponse({this.result});

factory MconnControllerBeginAttestationSessionResponse.fromJson(Map<String, dynamic> json) { return MconnControllerBeginAttestationSessionResponse(
  result: json['result'] != null ? MconnControllerAttestationSession.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnControllerAttestationSession? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnControllerBeginAttestationSessionResponse copyWith({MconnControllerAttestationSession Function()? result}) { return MconnControllerBeginAttestationSessionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerBeginAttestationSessionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnControllerBeginAttestationSessionResponse(result: $result)'; } 
 }
