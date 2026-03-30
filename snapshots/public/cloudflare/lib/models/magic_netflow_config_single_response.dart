// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_netflow_config.dart';final class MagicNetflowConfigSingleResponse {const MagicNetflowConfigSingleResponse({this.result});

factory MagicNetflowConfigSingleResponse.fromJson(Map<String, dynamic> json) { return MagicNetflowConfigSingleResponse(
  result: json['result'] != null ? MagicNetflowConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicNetflowConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicNetflowConfigSingleResponse copyWith({MagicNetflowConfig Function()? result}) { return MagicNetflowConfigSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicNetflowConfigSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicNetflowConfigSingleResponse(result: $result)'; } 
 }
