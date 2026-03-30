// GENERATED CODE - DO NOT MODIFY BY HAND

/// Authentication token to be used for VPC Flows export authentication.
extension type const MagicVisibilityMnmMnmVpcFlowsToken(String value) {
factory MagicVisibilityMnmMnmVpcFlowsToken.fromJson(String json) => MagicVisibilityMnmMnmVpcFlowsToken(json);

String toJson() => value;

}
final class MagicVisibilityMnmMnmVpcFlowsSingleResponse {const MagicVisibilityMnmMnmVpcFlowsSingleResponse({this.result});

factory MagicVisibilityMnmMnmVpcFlowsSingleResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityMnmMnmVpcFlowsSingleResponse(
  result: json['result'] != null ? MagicVisibilityMnmMnmVpcFlowsToken.fromJson(json['result'] as String) : null,
); }

final MagicVisibilityMnmMnmVpcFlowsToken? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicVisibilityMnmMnmVpcFlowsSingleResponse copyWith({MagicVisibilityMnmMnmVpcFlowsToken Function()? result}) { return MagicVisibilityMnmMnmVpcFlowsSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityMnmMnmVpcFlowsSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicVisibilityMnmMnmVpcFlowsSingleResponse(result: $result)'; } 
 }
