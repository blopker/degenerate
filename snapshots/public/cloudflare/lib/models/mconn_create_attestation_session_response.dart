// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_controller_attestation_session.dart';@immutable final class MconnCreateAttestationSessionResponse {const MconnCreateAttestationSessionResponse({this.result});

factory MconnCreateAttestationSessionResponse.fromJson(Map<String, dynamic> json) { return MconnCreateAttestationSessionResponse(
  result: json['result'] != null ? MconnControllerAttestationSession.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnControllerAttestationSession? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnCreateAttestationSessionResponse copyWith({MconnControllerAttestationSession Function()? result}) { return MconnCreateAttestationSessionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCreateAttestationSessionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnCreateAttestationSessionResponse(result: $result)'; } 
 }
