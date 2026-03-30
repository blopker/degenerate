// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_psk_generation_response_result.dart';final class MagicPskGenerationResponse {const MagicPskGenerationResponse({this.result});

factory MagicPskGenerationResponse.fromJson(Map<String, dynamic> json) { return MagicPskGenerationResponse(
  result: json['result'] != null ? MagicPskGenerationResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicPskGenerationResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicPskGenerationResponse copyWith({MagicPskGenerationResponseResult Function()? result}) { return MagicPskGenerationResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicPskGenerationResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicPskGenerationResponse(result: $result)'; } 
 }
