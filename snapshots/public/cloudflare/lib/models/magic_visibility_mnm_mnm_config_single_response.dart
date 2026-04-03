// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_mnm_mnm_config.dart';@immutable final class MagicVisibilityMnmMnmConfigSingleResponse {const MagicVisibilityMnmMnmConfigSingleResponse({this.result});

factory MagicVisibilityMnmMnmConfigSingleResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityMnmMnmConfigSingleResponse(
  result: json['result'] != null ? MagicVisibilityMnmMnmConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicVisibilityMnmMnmConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicVisibilityMnmMnmConfigSingleResponse copyWith({MagicVisibilityMnmMnmConfig Function()? result}) { return MagicVisibilityMnmMnmConfigSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityMnmMnmConfigSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicVisibilityMnmMnmConfigSingleResponse(result: $result)'; } 
 }
